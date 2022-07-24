project "imgui"
	kind "StaticLib"
	language "C++"
    cppdialect "C++17"
	
	systemversion "latest"
	staticruntime "on"

	targetdir (output_dir .. "/%{prj.name}")
	objdir (obj_dir .. "/%{prj.name}")

	files {
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_internal.h",
		"imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
	}

	filter { "configurations:Debug" }
		runtime "Debug"
		symbols "on"

	filter { "configurations:Release" }
		runtime "Release"
		optimize "on"
