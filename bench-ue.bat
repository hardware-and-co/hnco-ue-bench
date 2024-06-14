@echo off

cd UnrealEngine
call Engine\Build\BatchFiles\GetDotnetPath.bat
call Engine\Build\BatchFiles\Clean.bat -Target="ShaderCompileWorker Win64 Development" -Target="UnrealEditor Win64 Development"

:: Compilation
set start=%time%
call Engine\Build\BatchFiles\Build.bat -Target="ShaderCompileWorker Win64 Development" -Target="UnrealEditor Win64 Development" -WaitMutex -FromMsBuild
set end=%time%

cd ..\
:: Found on https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
:: Print time in a readable format
set options="tokens=1-4 delims=:.,"
for /f %options% %%a in ("%start%") do set start_h=%%a&set /a start_m=100%%b %% 100&set /a start_s=100%%c %% 100&set /a start_ms=100%%d %% 100
for /f %options% %%a in ("%end%") do set end_h=%%a&set /a end_m=100%%b %% 100&set /a end_s=100%%c %% 100&set /a end_ms=100%%d %% 100

set /a hours=%end_h%-%start_h%
set /a mins=%end_m%-%start_m%
set /a secs=%end_s%-%start_s%
set /a ms=%end_ms%-%start_ms%
if %ms% lss 0 set /a secs = %secs% - 1 & set /a ms = 100%ms%
if %secs% lss 0 set /a mins = %mins% - 1 & set /a secs = 60%secs%
if %mins% lss 0 set /a hours = %hours% - 1 & set /a mins = 60%mins%
if %hours% lss 0 set /a hours = 24%hours%
if 1%ms% lss 100 set ms=0%ms%

:: Mission accomplished
set /a totalsecs = %hours%*3600 + %mins%*60 + %secs%
echo Build took %hours%:%mins%:%secs%.%ms% (%totalsecs%.%ms%s total)
echo WARNING: NOTE THIS RESULT IMMEDIATLY, IT WILL *NOT* BE SAVED!
echo Done !
pause
