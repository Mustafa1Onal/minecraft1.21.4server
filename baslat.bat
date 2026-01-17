@echo off
chcp 65001 >nul
title Minecraft 1.21.4 Sunucu Başlatıcı

echo ========================================
echo  Minecraft 1.21.4 Sunucu Başlatıcı
echo ========================================
echo.

REM Java kontrolü
where java >nul 2>&1
if %errorlevel% neq 0 (
    echo [HATA] Java bulunamadı!
    echo Lütfen Java'yı yükleyin: https://www.java.com/download
    echo Minecraft 1.21.4 için Java 21 veya üzeri gereklidir.
    pause
    exit /b 1
)

java -version >nul 2>&1
if %errorlevel% neq 0 (
    echo [HATA] Java çalıştırılamıyor!
    pause
    exit /b 1
)

REM Server JAR dosyası kontrolü
if not exist "server.jar" (
    echo [UYARI] server.jar bulunamadı!
    echo Sunucu JAR dosyasını indirmek ister misiniz? (E/H)
    set /p indir="> "
    if /i "%indir%"=="E" (
        call indir.bat
        if not exist "server.jar" (
            echo [HATA] İndirme başarısız oldu veya dosya bulunamadı!
            echo Lütfen server.jar dosyasını manuel olarak bu klasöre ekleyin.
            pause
            exit /b 1
        )
    ) else (
        echo Sunucu başlatılamıyor. Lütfen server.jar dosyasını bu klasöre ekleyin.
        pause
        exit /b 1
    )
)

REM EULA kontrolü
if not exist "eula.txt" (
    echo [BILGI] EULA kabul ediliyor...
    echo eula=true > eula.txt
    echo EULA kabul edildi. Lütfen https://aka.ms/MinecraftEULA adresinden lisansı okuyun.
    echo.
)

REM Server properties kontrolü
if not exist "server.properties" (
    echo [BILGI] server.properties oluşturuluyor...
    call olustur_properties.bat
)

REM Bellek ayarları (4GB RAM önerilir, ihtiyaca göre değiştirilebilir)
set MIN_MEM=2G
set MAX_MEM=4G

echo [BILGI] Sunucu başlatılıyor...
echo [BILGI] RAM: %MIN_MEM% - %MAX_MEM%
echo [BILGI] Durdurmak için STOP yazın veya Ctrl+C tuşlarına basın.
echo.
echo ========================================
echo.

java -Xms%MIN_MEM% -Xmx%MAX_MEM% -jar server.jar nogui

echo.
echo ========================================
echo  Sunucu durdu!
echo ========================================
pause
