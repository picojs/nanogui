set(SRCROOT ${PROJECT_SOURCE_DIR}/src)
set(INCROOT ${PROJECT_SOURCE_DIR}/include/nanogui)

set(SRC
    ${INCROOT}/nanogui.h
    ${INCROOT}/serializer/core.h
    ${INCROOT}/serializer/opengl.h
    ${INCROOT}/serializer/sparse.h
    ${INCROOT}/button.h
    ${SRCROOT}/button.cpp
    ${INCROOT}/checkbox.h
    ${SRCROOT}/checkbox.cpp
    ${INCROOT}/colorpicker.h
    ${SRCROOT}/colorpicker.cpp
    ${INCROOT}/combobox.h
    ${SRCROOT}/combobox.cpp
    ${INCROOT}/formhelper.h
    ${INCROOT}/glcanvas.h
    ${SRCROOT}/glcanvas.cpp
    ${INCROOT}/glutil.h
    ${SRCROOT}/glutil.cpp
    ${INCROOT}/graph.h
    ${SRCROOT}/graph.cpp
    ${INCROOT}/imagepanel.h
    ${SRCROOT}/imagepanel.cpp
    ${INCROOT}/imageview.h
    ${SRCROOT}/imageview.cpp
    ${INCROOT}/label.h
    ${SRCROOT}/label.cpp
    ${INCROOT}/layout.h
    ${SRCROOT}/layout.cpp
    ${INCROOT}/messagedialog.h
    ${SRCROOT}/messagedialog.cpp
    ${INCROOT}/object.h
    ${INCROOT}/opengl.h
    ${INCROOT}/popup.h
    ${SRCROOT}/popup.cpp
    ${INCROOT}/popupbutton.h
    ${SRCROOT}/popupbutton.cpp
    ${INCROOT}/progressbar.h
    ${SRCROOT}/progressbar.cpp
    ${INCROOT}/screen.h
    ${SRCROOT}/screen.cpp
    ${INCROOT}/slider.h
    ${SRCROOT}/slider.cpp
    ${INCROOT}/stackedwidget.h
    ${SRCROOT}/stackedwidget.cpp
    ${INCROOT}/tabheader.h
    ${SRCROOT}/tabheader.cpp
    ${INCROOT}/tabwidget.h
    ${SRCROOT}/tabwidget.cpp
    ${INCROOT}/textbox.h
    ${SRCROOT}/textbox.cpp
    ${INCROOT}/theme.h
    ${SRCROOT}/theme.cpp
    ${INCROOT}/vscrollpanel.h
    ${SRCROOT}/vscrollpanel.cpp
    ${INCROOT}/widget.h
    ${SRCROOT}/widget.cpp
    ${INCROOT}/window.h
    ${SRCROOT}/window.cpp
)

add_library(nanogui-static STATIC ${SRC})
target_include_directories(nanogui-static PUBLIC ${eigen_SOURCE_DIR} ${nanovg_SOURCE_DIR}/include)