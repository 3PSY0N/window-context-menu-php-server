@echo off
setlocal

:: Generate Random port
:generate_port
set /a "port=%RANDOM% * (65535 - 1024 + 1) / 32767 + 1024"

:: Check if port is already used
netstat -an | find "%port%" > nul
if not errorlevel 1 (
    goto generate_port
)

:: Get current directory (where context menu was clicked)
set "current_directory=%cd%"

:: Start PHP Server
start "PHP Server" cmd /c "php -S localhost:%port% -t "%current_directory%""

:: Start Browser and open server URL
start "Browser" "http://localhost:%port%"

endlocal
