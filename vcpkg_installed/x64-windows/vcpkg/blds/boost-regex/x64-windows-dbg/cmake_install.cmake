# Install script for directory: B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/src/ost-1.85.0-afd9b213e1.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/pkgs/boost-regex_x64-windows/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  include("B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/libs/regex/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/src/ost-1.85.0-afd9b213e1.clean/libs/regex/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/stage/lib/boost_regex-vc144-mt-gd-x64-1_85.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/stage/bin/boost_regex-vc144-mt-gd-x64-1_85.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE OPTIONAL FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/stage/bin/boost_regex-vc144-mt-gd-x64-1_85.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0/boost_regex-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0/boost_regex-targets.cmake"
         "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/CMakeFiles/Export/38c4a04f40df2c41ff4060cb776f3ffe/boost_regex-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0/boost_regex-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0/boost_regex-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/CMakeFiles/Export/38c4a04f40df2c41ff4060cb776f3ffe/boost_regex-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/CMakeFiles/Export/38c4a04f40df2c41ff4060cb776f3ffe/boost_regex-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/tmpinst/boost_regex-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/boost_regex-1.85.0" TYPE FILE FILES "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/tmpinst/boost_regex-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "B:/Windows Apps/LastFM-Scrobbler/vcpkg_installed/x64-windows/vcpkg/blds/boost-regex/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
