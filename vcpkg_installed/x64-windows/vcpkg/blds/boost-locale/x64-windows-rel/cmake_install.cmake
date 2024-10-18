# Install script for directory: B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/src/ost-1.85.0-69ad3cbe9f.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/pkgs/boost-locale_x64-windows")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/libs/locale/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/src/ost-1.85.0-69ad3cbe9f.clean/libs/locale/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/stage/lib/boost_locale-vc144-mt-x64-1_85.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/stage/bin/boost_locale-vc144-mt-x64-1_85.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE OPTIONAL FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/stage/bin/boost_locale-vc144-mt-x64-1_85.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0/boost_locale-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0/boost_locale-targets.cmake"
         "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/CMakeFiles/Export/bcd66aef2b68fac81150b40e0462211d/boost_locale-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0/boost_locale-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0/boost_locale-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/CMakeFiles/Export/bcd66aef2b68fac81150b40e0462211d/boost_locale-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/CMakeFiles/Export/bcd66aef2b68fac81150b40e0462211d/boost_locale-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/tmpinst/boost_locale-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_locale-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/tmpinst/boost_locale-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-locale/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
