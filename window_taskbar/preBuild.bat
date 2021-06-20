@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo Running pre-build for %config%

where /q GmlCppExtFuncs
if %ERRORLEVEL% EQU 0 (
	echo Running GmlCppExtFuncs...
	GmlCppExtFuncs ^
	--prefix window_taskbar^
	--cpp "%projectDir%autogen.cpp"^
	--gml "%solutionDir%window_taskbar_23/extensions/window_taskbar/autogen.gml"^
	%projectDir%window_taskbar.cpp
)