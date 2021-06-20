@echo off

if not exist "window_taskbar-for-GMS1" mkdir "window_taskbar-for-GMS1"
cmd /C copyre ..\window_taskbar.gmx\extensions\window_taskbar.extension.gmx window_taskbar-for-GMS1\window_taskbar.extension.gmx
cmd /C copyre ..\window_taskbar.gmx\extensions\window_taskbar window_taskbar-for-GMS1\window_taskbar
cmd /C copyre ..\window_taskbar.gmx\datafiles\window_taskbar.html window_taskbar-for-GMS1\window_taskbar\Assets\datafiles\window_taskbar.html
cd window_taskbar-for-GMS1
cmd /C 7z a window_taskbar-for-GMS1.7z *
move /Y window_taskbar-for-GMS1.7z ../window_taskbar-for-GMS1.gmez
cd ..

if not exist "window_taskbar-for-GMS2\extensions" mkdir "window_taskbar-for-GMS2\extensions"
if not exist "window_taskbar-for-GMS2\datafiles" mkdir "window_taskbar-for-GMS2\datafiles"
if not exist "window_taskbar-for-GMS2\datafiles_yy" mkdir "window_taskbar-for-GMS2\datafiles_yy"
cmd /C copyre ..\window_taskbar_yy\extensions\window_taskbar window_taskbar-for-GMS2\extensions\window_taskbar
cmd /C copyre ..\window_taskbar_yy\datafiles\window_taskbar.html window_taskbar-for-GMS2\datafiles\window_taskbar.html
cmd /C copyre ..\window_taskbar_yy\datafiles_yy\window_taskbar.html.yy window_taskbar-for-GMS2\datafiles_yy\window_taskbar.html.yy
cd window_taskbar-for-GMS2
cmd /C 7z a window_taskbar-for-GMS2.zip *
move /Y window_taskbar-for-GMS2.zip ../window_taskbar-for-GMS2.yymp
cd ..

if not exist "window_taskbar-for-GMS2.3+\extensions" mkdir "window_taskbar-for-GMS2.3+\extensions"
if not exist "window_taskbar-for-GMS2.3+\datafiles" mkdir "window_taskbar-for-GMS2.3+\datafiles"
cmd /C copyre ..\window_taskbar_23\extensions\window_taskbar window_taskbar-for-GMS2.3+\extensions\window_taskbar
cmd /C copyre ..\window_taskbar_23\datafiles\window_taskbar.html window_taskbar-for-GMS2.3+\datafiles\window_taskbar.html
cd window_taskbar-for-GMS2.3+
cmd /C 7z a window_taskbar-for-GMS2.3+.zip *
move /Y window_taskbar-for-GMS2.3+.zip ../window_taskbar-for-GMS2.3+.yymps
cd ..

pause