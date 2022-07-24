cmake_minimum_required(VERSION 3.20)

# The default is to assume that you would clone both imgui and glm in the same folder
option(IMGUI_GLM_PATH "The relative path to the glm folder" "../glm")
option(IMGUI_USE_GLM "If imgui should include and provide conversions to glm vector types" OFF)

project(imgui)
add_library(imgui
	imconfig.h
	imgui_demo.cpp
	imgui_draw.cpp
	imgui_internal.h
	imgui_tables.cpp
	imgui_widgets.cpp
	imgui.cpp
	imgui.h
	imstb_rectpack.h
	imstb_textedit.h
	imstb_truetype.h
)

target_include_directories(imgui INTERFACE ..)

if(IMGUI_USE_GLM)
	target_compile_definitions(imgui INTERFACE IMGUI_USE_GLM=1)
	target_include_directories(imgui INTERFACE ${IMGUI_GLM_PATH})
endif()
