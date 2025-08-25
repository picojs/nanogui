# Run simple cmake converter to put font files into the data segment

# Glob up resource files
file(GLOB resources "${CMAKE_CURRENT_SOURCE_DIR}/resources/*.ttf")

# Concatenate resource files into a comma separated string
string (REGEX REPLACE "([^\\]|^);" "\\1," resources_string "${resources}")
string (REGEX REPLACE "[\\](.)" "\\1" resources_string "${resources_string}")

# Create command line for running bin2c cmake script
set(bin2c_cmdline
  -DOUTPUT_C=nanogui_resources.cpp
  -DOUTPUT_H=nanogui_resources.h
  "-DINPUT_FILES=${resources_string}"
  -P "${CMAKE_CURRENT_SOURCE_DIR}/cmake/bin2c.cmake")

# Run bin2c on resource files
add_custom_command(
    OUTPUT nanogui_resources.cpp nanogui_resources.h
    COMMAND ${CMAKE_COMMAND} ${bin2c_cmdline}
    DEPENDS ${resources}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    COMMENT "Running bin2c"
    VERBATIM)

add_custom_target(nanogui_resources ALL
    DEPENDS nanogui_resources.cpp nanogui_resources.h
)

# Needed to generated files
include_directories(${CMAKE_CURRENT_BINARY_DIR})