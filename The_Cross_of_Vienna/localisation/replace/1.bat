@echo off
set /p str1= 1
set /p str2= 1
echo.
echo awa..?
for /f "delims=" %%a in ('dir /s /b ^|sort /+65535') do (
if "%%~nxa" neq "%~nx0" (
set "file=%%a"
set "name=%%~na"
set "extension=%%~xa"
call set "name=%%name:%str1%=%str2%%%"
setlocal enabledelayedexpansion
ren"!file!" "!name!" 2>nul
endlocal
)
)
exit