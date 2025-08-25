include(FetchContent)

set(CMAKE_TLS_VERIFY TRUE)

Set(FETCHCONTENT_QUIET FALSE)

FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG        7b6aead9fb88b3623e3b3725ebb42670cbe4c579 # Version 3.4 (Feb 23 2024)
    GIT_PROGRESS TRUE
)

FetchContent_Declare(
    eigen
    GIT_REPOSITORY https://gitlab.com/libeigen/eigen.git
    GIT_TAG        21ae2afd4edaa1b69782c67a54182d34efe43f9c # Version 3.4 (Feb 23 2024)
    GIT_PROGRESS TRUE
)

FetchContent_Declare(
    nanovg
    GIT_REPOSITORY https://github.com/picojs/nanovg.git
    GIT_TAG        1c67288c7f42e858d85bafb7e3a39d53d83c1b9e # Version 3.4 (Feb 23 2024)
    GIT_PROGRESS TRUE
)

set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL " " FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL " " FORCE)
set(GLFW_BUILD_DOCS OFF CACHE BOOL " " FORCE)
set(GLFW_BUILD_INSTALL OFF CACHE BOOL " " FORCE)
set(GLFW_INSTALL OFF CACHE BOOL " " FORCE)
set(GLFW_USE_CHDIR OFF CACHE BOOL " " FORCE)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libs" FORCE)

set(BUILD_TESTING OFF)
set(EIGEN_BUILD_PKGCONFIG OFF)

FetchContent_MakeAvailable(glfw eigen nanovg)
