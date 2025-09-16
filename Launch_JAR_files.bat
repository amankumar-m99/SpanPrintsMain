@echo off

REM === Start Config Server ===
start "Config Server" cmd /k java -jar 01_ConfigServer/ConfigServer.jar
call :wait_for_port localhost 8888

REM === Start Eureka ===
start "Eureka Server" cmd /k java -jar 02_ServiceRegistry/ServiceRegistry.jar
call :wait_for_port localhost 8761

REM === Start Actuator Admin ===
start "Actuator Admin" cmd /k java -jar 03_ActuatorAdmin/ActuatorAdmin.jar
call :wait_for_port localhost 9999

REM === Start API Gateway ===
start "API Gateway" cmd /k java -jar 04_ApiGateway/ApiGateway.jar
call :wait_for_port localhost 8080

echo All services started.
REM === pause ===
goto :eof

REM === Function to wait until port is open ===
:wait_for_port
set "host=%1"
set "port=%2"
echo Waiting for %host%:%port% ...
:repeat
powershell -Command "try { $tcp = New-Object Net.Sockets.TcpClient('%host%', %port%); $tcp.Close(); exit 0 } catch { exit 1 }"
if errorlevel 1 (
    timeout /t 3 >nul
    goto repeat
)
goto :eof