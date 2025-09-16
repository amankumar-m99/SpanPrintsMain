@echo off

REM === Start Config Server ===
start "Config Server" 05_AuthService/AuthService.exe > 05_AuthService/AuthService.log 2>&1
goto :eof