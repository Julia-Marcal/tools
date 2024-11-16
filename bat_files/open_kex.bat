@echo off

powershell -Command "Start-Process 'wsl.exe' -ArgumentList 'kali-linux' -Verb RunAs"
timeout /t 3 /nobreak >nul
wsl -d kali-linux sudo kex --win
