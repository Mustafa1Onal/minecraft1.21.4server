@echo off
chcp 65001 >nul

echo #Minecraft server properties > server.properties
echo #Oluşturulma tarihi: %date% %time% >> server.properties
echo. >> server.properties
echo #Sunucu Ayarları >> server.properties
echo motd=Minecraft 1.21.4 Sunucusu >> server.properties
echo server-port=25565 >> server.properties
echo max-players=20 >> server.properties
echo online-mode=true >> server.properties
echo difficulty=easy >> server.properties
echo gamemode=survival >> server.properties
echo spawn-monsters=true >> server.properties
echo spawn-animals=true >> server.properties
echo spawn-npcs=true >> server.properties
echo spawn-protection=16 >> server.properties
echo max-world-size=29999984 >> server.properties
echo view-distance=10 >> server.properties
echo server-ip= >> server.properties
echo enable-rcon=false >> server.properties
echo enable-query=false >> server.properties
echo enable-command-block=false >> server.properties
echo max-tick-time=60000 >> server.properties
echo network-compression-threshold=256 >> server.properties
echo resource-pack= >> server.properties
echo resource-pack-sha1= >> server.properties
echo enforce-whitelist=false >> server.properties
echo white-list=false >> server.properties
echo allow-nether=true >> server.properties
echo announce-player-achievements=true >> server.properties
echo force-gamemode=false >> server.properties
echo generate-structures=true >> server.properties
echo generator-settings= >> server.properties
echo hardcore=false >> server.properties
echo level-name=world >> server.properties
echo level-seed= >> server.properties
echo level-type=normal >> server.properties
echo max-build-height=256 >> server.properties
echo pvp=true >> server.properties
echo snooper-enabled=true >> server.properties
echo use-native-transport=true >> server.properties

echo [BILGI] server.properties dosyası oluşturuldu.
