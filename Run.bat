@echo off
setlocal

set "SCRIPT_DIR=%~dp0"

:display_menu
cls
echo Options:
echo 1. Set Proxy
echo 2. Disable Proxy
set /p choice=Enter an option:

if "%choice%"=="1" (
    start "" "%SCRIPT_DIR%EnableProxy.exe"
) else if "%choice%"=="2" (
    start "" "%SCRIPT_DIR%DisableProxy.exe"
) else (
    echo Invalid choice. Please enter 1 or 2.
    goto display_menu
)

goto display_menu