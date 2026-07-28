@echo off
title Duino Coin
color 0b

:: --- 1. Bağımlılıkları Yükle ---
echo [BILGI] Gereksinimler kontrol ediliyor ve yukleniyor...
py -3 -m pip install -r "%~dp0requirements.txt" --quiet

:: --- 2. Dizin Ayarı ---
set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

:: --- 3. Ana Scripti Başlat ---
echo [BILGI] Motor baslatiliyor...
py -3 "AVR_Miner.py"

echo.
echo Islem tamamlandi veya script kapatildi.
pause
