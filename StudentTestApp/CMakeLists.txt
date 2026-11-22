cmake_minimum_required(VERSION 3.16)

project(VideoApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Добавляем все необходимые модули
find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2 QuickLayouts Multimedia)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appVideoApp
    main.cpp
)

qt_add_qml_module(appVideoApp
    URI VideoApp
    QML_FILES
        Main.qml
)

set_target_properties(appVideoApp PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# Линкуем все модули
target_link_libraries(appVideoApp
    PRIVATE Qt6::Quick Qt6::QuickControls2 Qt6::QuickLayouts Qt6::Multimedia
)

install(TARGETS appVideoApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)