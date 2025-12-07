@echo off
title Bus Ticket Reservation System Launcher

cd /d "%~dp0"

echo ===============================================
echo 🔹 Checking MySQL Connection...
echo ===============================================
"C:\xampp\mysql\bin\mysql.exe" -h localhost -P 3309 -u root -e "SELECT VERSION();" >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ MySQL not running OR wrong credentials!
    echo 👉 Start MySQL in XAMPP first
    pause
    exit /b
) else (
    echo ✅ MySQL Connected Successfully!
)

echo ===============================================
echo 🔹 Compiling Java application...
echo ===============================================
javac -cp ".;mysql-connector-j-9.4.0.jar" src\BusReservationApp.java -d .
if %errorlevel% neq 0 (
    echo ❌ Compilation Failed!
    pause
    exit /b
)
echo ✅ Compilation Done!

echo ===============================================
echo 🚀 Launching Bus Ticket Reservation System...
echo ===============================================
java -cp ".;mysql-connector-j-9.4.0.jar" BusReservationApp
pause
