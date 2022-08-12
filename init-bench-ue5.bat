@echo off

:: Cloning repo
PortableGit\bin\git.exe clone --depth 1 --branch 5.0.3-release https://github.com/EpicGames/UnrealEngine.git

cd UnrealEngine
:: Unreal Engine internal cloning mechanism
call Setup.bat
call GenerateProjectFiles.bat
cd ..
echo Init done!
pause
