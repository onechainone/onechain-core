# Install script for directory: /alidata/one-compile/onechain-core/libraries/db

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/alidata/one-compile/onechain-core/libraries/db/libgraphene_db.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/graphene/db" TYPE FILE FILES
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/flat_index.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/undo_database.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/simple_index.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/object_id.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/fwd.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/generic_index.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/index.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/object_database.hpp"
    "/alidata/one-compile/onechain-core/libraries/db/include/graphene/db/object.hpp"
    )
endif()

