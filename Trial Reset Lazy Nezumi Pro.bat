@echo off
echo ======================================================
echo Lazy Nezumi Pro Trial Reset
echo Author: Husko
echo Version: 1.0
echo ======================================================
echo.
echo Killing Lazy Nezumi Pro if active..
timeout 5 >nul
taskkill /f /im LazyNezumiPro.exe >nul 2>nul && (
  echo Task Successfully Killed!
) || (
  echo Failed to close the program. Either its not active or permission was denied.
)
echo.
echo Deleting old Trial Data...
timeout 5 >nul
REG DELETE "HKCU\SOFTWARE\Lazy Nezumi\Lazy Nezumi Pro\Settings" /v gfycmh /f >nul 2>nul && (
  echo Successfully Deleted Trial Data!
) || (
  echo Trial not found.
)
echo.
echo Thanks for using my Trial Reset for Lazy Nezumi Pro. The Program will close in 10 seconds.
timeout /t 10