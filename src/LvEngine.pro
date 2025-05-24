CONFIG += console
CONFIG -= app_bundle
CONFIG += c++17

TARGET = lveapp
TEMPLATE = app

SOURCES += main.cpp \
    first_app.cpp \
    keyboard_movement_controller.cpp \
    lve_buffer.cpp \
    lve_camera.cpp \
    lve_descriptors.cpp \
    lve_device.cpp \
    lve_game_object.cpp \
    lve_model.cpp \
    lve_pipeline.cpp \
    lve_renderer.cpp \
    lve_swap_chain.cpp \
    lve_window.cpp  \
    systems/point_light_system.cpp \
    systems/simple_render_system.cpp

HEADERS += \
    external/tinyobjloader/tiny_obj_loader.h \
    first_app.hpp \
    keyboard_movement_controller.hpp \
    lve_buffer.hpp \
    lve_camera.hpp \
    lve_descriptors.hpp \
    lve_device.hpp \
    lve_frame_info.hpp \
    lve_game_object.hpp \
    lve_model.hpp \
    lve_pipeline.hpp \
    lve_renderer.hpp \
    lve_swap_chain.hpp \
    lve_utils.hpp \
    lve_window.hpp  \
    systems/point_light_system.hpp \
    systems/simple_render_system.hpp

DISTFILES += \
    ../.gitignore \
    ../LICENSE \
    ../README.md \
    shaders/compile-shaders.sh \
    shaders/point_light.frag \
    shaders/point_light.vert \
    shaders/simple_shader.frag \
    shaders/simple_shader.vert

# Windows
win32 {
    message("Windows")
    INCLUDEPATH += C:/VulkanSDK/1.2.182.0/Include \
                   C:/Users/Admin/work/cpp/api/vulkan/lve/LvEngine/libs/include \
                   C:/Lib/glfw64/include \
                   C:/Lib/glm

    LIBS += -L"C:/Lib/glfw64/lib-vc2015/" -lglfw3dll
    LIBS += -L"C:/VulkanSDK/1.2.182.0/Lib/" -lvulkan-1
    LIBS += -lopengl32
    LIBS += -lglu32
}

#  Linux
unix {
    message("Unix/Linux")

    # INCLUDEPATH += /usr/include/vulkan
    # INCLUDEPATH += /usr/include/GLFW
    # INCLUDEPATH += /usr/include/glm

    #  pkg-config
    # CONFIG += link_pkgconfig
    # PKGCONFIG += vulkan glfw3 glm

    # not pkg
    # LIBS += -L/usr/lib/x86_64-linux-gnu -lvulkan
    # LIBS += -L/usr/lib/x86_64-linux-gnu -lglfw
    # LIBS += -lGL # OpenGL
    # LIBS += -lGLU # GLU

    LIBS += -lvulkan
    LIBS += -lglfw
    LIBS += -lGL
    LIBS += -lGLU

}

