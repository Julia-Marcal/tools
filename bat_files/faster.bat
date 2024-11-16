@echo off
echo Cleaning up temporary files and cache to optimize system performance...

echo Cleaning temporary files...
del /s /q %temp%\*
rd /s /q %temp%

echo Cleaning Prefetch files...
del /s /q C:\Windows\Prefetch\*

echo Cleaning Windows Update Cache...
del /s /q C:\Windows\SoftwareDistribution\Download\*

echo Emptying the Recycle Bin...
rd /s /q %systemdrive%\$Recycle.bin

echo Flushing DNS Cache...
ipconfig /flushdns

echo Clearing Event Logs...
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (wevtutil.exe cl "%%G")

echo Cleanup completed successfully!
pause
