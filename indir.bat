@echo off
chcp 65001 >nul
title Minecraft Server JAR İndirici

echo ========================================
echo  Minecraft 1.21.4 Server JAR İndirici
echo ========================================
echo.

REM PowerShell ile JAR dosyasını indir
echo [BILGI] Minecraft 1.21.4 server.jar indiriliyor...
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "try { [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $ProgressPreference = 'SilentlyContinue'; $url = 'https://piston-data.mojang.com/v1/objects/85b2ce5b52e9700a5e5be4b86c8bc7e45ba640af/server.jar'; Invoke-WebRequest -Uri $url -OutFile 'server.jar' -UseBasicParsing -ErrorAction Stop; if (Test-Path 'server.jar') { Write-Host '[BILGI] server.jar başarıyla indirildi!' -ForegroundColor Green } else { throw 'Dosya oluşturulamadı' } } catch { Write-Host '[HATA] İndirme başarısız oldu!' -ForegroundColor Red; Write-Host 'Hata:' $_.Exception.Message; exit 1 }"

if exist "server.jar" (
    echo.
    echo [BILGI] İndirme tamamlandı! server.jar hazır.
) else (
    echo.
    echo [HATA] İndirme başarısız oldu!
    echo Manuel olarak indirebilirsiniz:
    echo https://mcversions.net/download/1.21.4
    echo.
)

pause
