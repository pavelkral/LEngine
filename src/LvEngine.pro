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
    lve_window.cpp \
    simple_render_system.cpp
          
#LIBS += opengl32.lib
INCLUDEPATH += C:/VulkanSDK/1.2.182.0/Include \
# install
INCLUDEPATH += C:/Users/Admin/work/cpp/__dev/vulkan/lve/LvEngine/libs/include \
INCLUDEPATH += C:/Users/Admin/work/cpp/lib/glfw64/include \
               C:/Users/Admin/work/cpp/lib/glm


LIBS += -L"C:/Users/Admin/work/cpp/lib/glfw64/lib-vc2015/" -lglfw3dll
LIBS += -L"C:VulkanSDK/1.2.182.0/Lib/" -lvulkan-1


LIBS += -lopengl32
LIBS += -lglu32

HEADERS += \
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
    lve_window.hpp \
    simple_render_system.hpp


DISTFILES += \
    shaders/compile.sh \
    shaders/simple_shader.frag \
    shaders/simple_shader.vert




