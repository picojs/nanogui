# Build example application if desired
if(NANOGUI_BUILD_EXAMPLES)
    add_executable(example1      ${CMAKE_SOURCE_DIR}/examples/example1.cpp)
    add_executable(example2      ${CMAKE_SOURCE_DIR}/examples/example2.cpp)
    add_executable(example3      ${CMAKE_SOURCE_DIR}/examples/example3.cpp)
    add_executable(example4      ${CMAKE_SOURCE_DIR}/examples/example4.cpp)
    add_executable(example_icons ${CMAKE_SOURCE_DIR}/examples/example_icons.cpp)

    # Add dependency to ensure nanogui is built before the examples
    if (NANOGUI_BUILD_SHARED)
        add_dependencies(example1 nanogui)
        add_dependencies(example2 nanogui)
        add_dependencies(example3 nanogui)
        add_dependencies(example4 nanogui)
        add_dependencies(example_icons nanogui)
    endif()

    # Link against nanogui library
    target_link_libraries(example1      nanogui ${NANOGUI_EXTRA_LIBS})
    target_link_libraries(example2      nanogui ${NANOGUI_EXTRA_LIBS})
    target_link_libraries(example3      nanogui ${NANOGUI_EXTRA_LIBS})
    target_link_libraries(example4      nanogui ${NANOGUI_EXTRA_LIBS})
    target_link_libraries(example_icons nanogui ${NANOGUI_EXTRA_LIBS})

    target_include_directories(example1 PUBLIC ${CMAKE_SOURCE_DIR}/include)
    target_include_directories(example2 PUBLIC ${CMAKE_SOURCE_DIR}/include)
    target_include_directories(example3 PUBLIC ${CMAKE_SOURCE_DIR}/include)
    target_include_directories(example4 PUBLIC ${CMAKE_SOURCE_DIR}/include)
    target_include_directories(example_icons PUBLIC ${CMAKE_SOURCE_DIR}/include)

    # Copy icons for example application
    file(COPY ${CMAKE_SOURCE_DIR}/resources/icons DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
endif()