cmake_minimum_required(VERSION 3.23)

project(Meteo4 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(QT_WASM_INITIAL_MEMORY 53084160)
find_package(Qt6 6.5 REQUIRED COMPONENTS Core Quick QuickControls2 Positioning Location)

qt_policy(SET QTP0001 NEW)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appMeteo4
    main.cpp
)

qt_add_qml_module(appMeteo4
    URI Meteo4
    VERSION 1.0
    QML_FILES
        Main.qml
)

add_subdirectory(content)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appMeteo4 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appMeteo4
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMeteo4
    PRIVATE Qt6::Quick Qt6::QuickControls2 Qt6::Location Qt6::Positioning
)

include(GNUInstallDirs)
install(TARGETS appMeteo4
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
