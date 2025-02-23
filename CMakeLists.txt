cmake_minimum_required(VERSION 3.16)

project(MyDock VERSION 0.1 LANGUAGES CXX)

add_compile_options("/utf-8")
add_definitions(-DUNICODE -D_UNICODE)
add_compile_options("/MP")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    # 在Debug模式下添加宏定义
    add_definitions(-DDEBUG)
endif()

# include(cmake/build_config.cmake)

file(GLOB UI_FILES ${CMAKE_CURRENT_SOURCE_DIR}/ui/*.ui)
list(APPEND CMAKE_AUTOUIC_SEARCH_PATHS "${CMAKE_CURRENT_SOURCE_DIR}/ui")



set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_PREFIX_PATH "D:/SoftWare/Library/QT/6.8.2/msvc2022_64/lib/cmake")
find_package(QT NAMES Qt6 REQUIRED COMPONENTS Widgets LinguistTools)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Widgets LinguistTools)

file(GLOB TS_FILES ${CMAKE_CURRENT_SOURCE_DIR}/translations/*.ts)

set(INCLUDE_DIRS "${CMAKE_SOURCE_DIR}/include")

file(GLOB SRC_FILES
    "${CMAKE_SOURCE_DIR}/src/main.cpp"
    "${CMAKE_SOURCE_DIR}/src/app/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/bsp/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/gui/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/common/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/io/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/task/*.cpp"
    "${CMAKE_SOURCE_DIR}/src/config/*.cpp"
    # "${CMAKE_SOURCE_DIR}/thirdparty/**"
    
    "${CMAKE_SOURCE_DIR}/include/main.h"
    "${CMAKE_SOURCE_DIR}/include/**/*.h"
)

set(PROJECT_SOURCES
        ${SRC_FILES}
        ${UI_FILS}
        ${TS_FILES}
)

add_executable(${PROJECT_NAME}
    ${PROJECT_SOURCES}
)

qt_create_translation(QM_FILES ${CMAKE_SOURCE_DIR} ${TS_FILES})
# if(${QT_VERSION_MAJOR} GREATER_EQUAL 6)
#     qt_add_executable(${PROJECT_NAME}
#         MANUAL_FINALIZATION
#         ${PROJECT_SOURCES}
#     )
# # Define target properties for Android with Qt 6 as:
# #    set_property(TARGET ${PROJECT_NAME} APPEND PROPERTY QT_ANDROID_PACKAGE_SOURCE_DIR
# #                 ${CMAKE_CURRENT_SOURCE_DIR}/android)
# # For more information, see https://doc.qt.io/qt-6/qt-add-executable.html#target-creation

#     qt_create_translation(QM_FILES ${CMAKE_SOURCE_DIR} ${TS_FILES})
# else()
#     if(ANDROID)
#         add_library(${PROJECT_NAME} SHARED
#             ${PROJECT_SOURCES}
#         )
# # Define properties for Android with Qt 5 after find_package() calls as:
# #    set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
#     else()
#         add_executable(${PROJECT_NAME}
#             ${PROJECT_SOURCES}
#         )
#     endif()

#     qt5_create_translation(QM_FILES ${CMAKE_SOURCE_DIR} ${TS_FILES})
# endif()

target_include_directories(${PROJECT_NAME} PUBLIC
    ${INCLUDE_DIRS}
)

target_link_libraries(${PROJECT_NAME} PRIVATE Qt${QT_VERSION_MAJOR}::Widgets)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
# if(${QT_VERSION} VERSION_LESS 6.1.0)
#   set(BUNDLE_ID_OPTION MACOSX_BUNDLE_GUI_IDENTIFIER com.example.${PROJECT_NAME})
# endif()
# set_target_properties(${PROJECT_NAME} PROPERTIES
#     ${BUNDLE_ID_OPTION}
#     MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
#     MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
#     MACOSX_BUNDLE TRUE
#     WIN32_EXECUTABLE TRUE
# )

# include(GNUInstallDirs)
#include(cmake/install_config.cmake)

# if(QT_VERSION_MAJOR EQUAL 6)
#     qt_finalize_executable(${PROJECT_NAME})
# endif()
