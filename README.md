# Minecraft 1.21.4 Sunucu Başlatıcı

Bu klasör, Minecraft Java Edition 1.21.4 sunucusunu başlatmak için hazırlanmış Windows tabanlı bir başlatıcı içerir.

## Gereksinimler

- **Windows İşletim Sistemi** (Windows 10/11 önerilir)
- **Java 21 veya üzeri** ([İndir](https://www.java.com/download))
- **En az 4GB RAM** (sunucu için ayrılabilir)
- **İnternet bağlantısı** (ilk kurulum için JAR dosyasını indirmek için)

## Kurulum

1. **Java'yı Yükleyin**
   - Eğer Java yüklü değilse, [Java İndirme Sayfası](https://www.java.com/download) adresinden Java 21 veya üzeri sürümü indirin ve yükleyin.

2. **Sunucu JAR Dosyasını İndirin**
   - `indir.bat` dosyasını çift tıklayarak sunucu JAR dosyasını otomatik olarak indirin.
   - Veya manuel olarak [mcversions.net](https://mcversions.net/download/1.21.4) adresinden indirebilirsiniz.

## Kullanım

### Sunucuyu Başlatmak

1. `baslat.bat` dosyasını çift tıklayın.
2. İlk çalıştırmada `eula.txt` dosyası otomatik oluşturulur ve EULA kabul edilir.
3. Sunucu başlatıldığında, konsol penceresi açık kalacaktır.

### Sunucuyu Durdurmak

- Konsol penceresinde `stop` yazın ve Enter'a basın.
- Veya `Ctrl + C` tuşlarına basın.

## Dosyalar

- **baslat.bat** - Sunucuyu başlatan ana dosya
- **indir.bat** - Minecraft server JAR dosyasını indiren dosya
- **olustur_properties.bat** - Varsayılan server.properties dosyasını oluşturan dosya
- **server.jar** - Minecraft sunucu dosyası (indir.bat ile otomatik oluşur)
- **eula.txt** - EULA kabul dosyası (ilk çalıştırmada otomatik oluşur)
- **server.properties** - Sunucu ayarları dosyası (ilk çalıştırmada otomatik oluşur)

## Sunucu Ayarları

Sunucu ayarlarını değiştirmek için `server.properties` dosyasını bir metin editörü ile açın ve değişiklik yapın. Önemli ayarlar:

- **server-port**: Sunucu portu (varsayılan: 25565)
- **max-players**: Maksimum oyuncu sayısı (varsayılan: 20)
- **difficulty**: Zorluk seviyesi (easy, normal, hard)
- **gamemode**: Oyun modu (survival, creative, adventure)
- **online-mode**: Doğru (true) ayarlanırsa, sadece orijinal Minecraft hesapları bağlanabilir
- **motd**: Sunucu açıklama metni

## Notlar

- **EULA**: Minecraft sunucu çalıştırmak için Mojang'ın EULA'sını kabul etmeniz gerekir. Bu başlatıcı otomatik olarak kabul eder, ancak lütfen [EULA'yı](https://aka.ms/MinecraftEULA) okuyun.
- **RAM**: Varsayılan olarak 2-4GB RAM kullanılır. Bu değeri `baslat.bat` dosyasındaki `MIN_MEM` ve `MAX_MEM` değişkenlerini değiştirerek ayarlayabilirsiniz.
- **Güvenlik**: Sunucuyu internete açmak istiyorsanız, güvenlik ayarlarınızı gözden geçirin (firewall, port yönlendirme vb.).

## Sorun Giderme

### Java Bulunamıyor
- Java'nın yüklü olduğundan emin olun.
- Sistem PATH değişkeninde Java'nın bulunduğundan emin olun.

### Port Zaten Kullanılıyor
- `server.properties` dosyasındaki `server-port` değerini değiştirin.
- Veya başka bir programın 25565 portunu kullandığını kontrol edin.

### Yetersiz Bellek
- `baslat.bat` dosyasındaki RAM değerlerini düşürün.
- Bilgisayarınızda daha fazla RAM olduğundan emin olun.

## Lisans

Minecraft, Mojang Studios'un ticari markasıdır. Bu başlatıcı, Minecraft'ın resmi bir parçası değildir ve Mojang Studios ile ilişkili değildir.
