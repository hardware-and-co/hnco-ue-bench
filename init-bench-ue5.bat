@echo off

:: Cloning repo
PortableGit\bin\git.exe clone https://github.com/EpicGames/UnrealEngine.git
cd UnrealEngine
..\PortableGit\bin\git.exe checkout 5.0.3-release

:: Unreal Engine internal cloning mechanism
call Setup.bat
call GenerateProjectFiles.bat
cd ..
echo Init done!
pause
