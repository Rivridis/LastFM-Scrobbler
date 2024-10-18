#include "pch.h"
#include "md5.h"
using json = nlohmann::json;
#include <boost/locale.hpp> 

using namespace std;
using namespace winrt;
using namespace Windows::Foundation;
using namespace Windows::Media::Control;
using namespace Windows::System::Threading;

MD5 md5;

int flag = 0;
int tflag = 0;
string timestamp = "";

string api_key();
string secret();
string username();
string password();

string skcall = "";
string skcall_sig = "";
string sk = "";

string scrob_call = "";
string scrob_call_sig = "";

string utf8_artist = "";
string utf8_track = "";

std::string to_utf8(const std::wstring& wstr) {
    return boost::locale::conv::utf_to_utf<char>(wstr);
}

static void scrobble()
{

    string scrob_call = "api_key" + api_key() + "artist" + utf8_artist + "methodtrack.scrobblesk" + sk + "timestamp" + timestamp + "track" + utf8_track + secret();
    cout << scrob_call;
    string scrob_call_sig = md5(scrob_call);

    CURL* curl;
    CURLcode res;

    if (utf8_artist == "")
    {
        utf8_artist = "Unknown";
    }


    curl_global_init(CURL_GLOBAL_ALL);
    curl = curl_easy_init();
    if (curl) {

        curl_easy_setopt(curl, CURLOPT_URL, "https://ws.audioscrobbler.com/2.0/");

        char* encoded_artist = curl_easy_escape(curl, utf8_artist.c_str(), utf8_artist.length());
        char* encoded_title = curl_easy_escape(curl, utf8_track.c_str(), utf8_track.length());
        char* encoded_method = curl_easy_escape(curl, "track.scrobble", 14);  // Length of "track.scrobble"
        char* encoded_timestamp = curl_easy_escape(curl, timestamp.c_str(), timestamp.length());
        char* encoded_apikey = curl_easy_escape(curl, api_key().c_str(), api_key().length());
        char* encoded_hash = curl_easy_escape(curl, scrob_call_sig.c_str(), scrob_call_sig.length());
        char* encoded_sessionkey = curl_easy_escape(curl, sk.c_str(), sk.length());

        // Format the URL-encoded data into a request string
        string reqformat = "artist=" + string(encoded_artist) + "&track=" + string(encoded_title) +
            "&method=" + string(encoded_method) +
            "&timestamp=" + string(encoded_timestamp) +
            "&api_key=" + string(encoded_apikey) +
            "&api_sig=" + string(encoded_hash) +
            "&sk=" + string(encoded_sessionkey) +
            "&format=json";

        cout << reqformat;
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, reqformat.c_str());
        curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);

        res = curl_easy_perform(curl);
        if (res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                curl_easy_strerror(res));
        curl_easy_cleanup(curl);
    }

}

IAsyncAction GetMediaInfo()
{
    auto sessions = co_await GlobalSystemMediaTransportControlsSessionManager::RequestAsync();

    auto currentSession = sessions.GetCurrentSession();

    if (currentSession)
    {
        auto info = co_await currentSession.TryGetMediaPropertiesAsync();
        wstring track = info.Title().c_str();
        wstring artist = info.Artist().c_str();
        auto timeline = currentSession.GetTimelineProperties();
        auto position = timeline.Position().count();
        auto endtime = timeline.EndTime().count();

        utf8_artist = to_utf8(artist);
        utf8_track = to_utf8(track);

        double percentage = 0.0;
        if (endtime > 0)
        {
            percentage = (static_cast<double>(position) / endtime) * 100;
        }


        if (percentage >= 60.0 && flag != 1)
        {
            cout << "Scrobbled" << endl;
            scrobble();
            cout << utf8_track << endl;
            flag = 1;

        }
        if (percentage < 45.0)
        {
            flag = 0;
            if (percentage < 0.1 && tflag != 1)
            {
                const auto p1 = std::chrono::system_clock::now();
                auto time = std::chrono::duration_cast<std::chrono::seconds>(p1.time_since_epoch()).count();
                timestamp = std::to_string(time);
                cout << timestamp;
                tflag = 1;
                std::this_thread::sleep_for(std::chrono::seconds(3));
                tflag = 0;

            }
        }

    }
}

void StartPeriodicMediaInfoCheck()
{
    TimeSpan period{ std::chrono::seconds(1) };
    ThreadPoolTimer::CreatePeriodicTimer([](ThreadPoolTimer const&)
        {
            GetMediaInfo();
        }, period);
}

size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

int main()
{
    // Session Key Call
    skcall = "api_key" + api_key() + "methodauth.getMobileSessionpassword" + password() + "username" + username() + secret();
    skcall_sig = md5(skcall);

    CURL* curl;
    CURLcode res;

    string url = "https://ws.audioscrobbler.com/2.0/";
    string post_fields = "method=auth.getMobileSession&username=" + username() +
        "&password=" + password() + "&api_key=" + api_key() + "&api_sig=" + skcall_sig + "&format=json";

    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();

    if (curl) {

        std::string readBuffer;

        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_POST, 1L);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, post_fields.c_str());
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &readBuffer);
        res = curl_easy_perform(curl);

        if (res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
        else {
            try {
                json data = json::parse(readBuffer);
                sk = data["session"]["key"];
                cout << "Session Key: " << sk << std::endl;
            }
            catch (const json::exception& e) {
                std::cerr << "Error parsing JSON: " << e.what() << std::endl;
            }
        }

        std::cout << "Response: " << readBuffer << std::endl;
    }

    init_apartment();
    StartPeriodicMediaInfoCheck();
    getchar();
    return 0;
}