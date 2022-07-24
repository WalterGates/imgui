cmake_minimum_required(VERSION 3.20)

# The default is to assume that you would clone both imgui and glm in the same folder
option(IMGUI_GLM_PATH "The relative path to the glm folder" "../glm")
option(IMGUI_USE_GLM "If imgui should include and provide conversions to glm vector types" OFF)

project(imgui)
add_library(${PROJECT_NAME}
	imgui/imconfig.h
	imgui/imgui_demo.cpp
	imgui/imgui_draw.cpp
	imgui/imgui_internal.h
	imgui/imgui_tables.cpp
	imgui/imgui_widgets.cpp
	imgui/imgui.cpp
	imgui/imgui.h
	imgui/imstb_rectpack.h
	imgui/imstb_textedit.h
	imgui/imstb_truetype.h
)

target_include_directories(imgui INTERFACE ..)

if(IMGUI_USE_GLM)
	target_include_directories(imgui PUBLIC ${IMGUI_GLM_PATH})
	target_compile_definitions(imgui PRIVATE IMGUI_USE_GLM=1)
endif()
