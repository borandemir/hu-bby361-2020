-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 12 Oca 2021, 20:03:31
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `borandemir`
--
CREATE DATABASE IF NOT EXISTS `borandemir` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `borandemir`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film`
--

CREATE TABLE `film` (
  `FilmKayitNo` smallint(6) NOT NULL,
  `FilmAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Filmin İsmi bilgisi verilecek Filmin İsmi bilgisi verilecek',
  `Vizyon` date DEFAULT NULL COMMENT 'Filmin yayın tarihi bilgisi\r\n',
  `YonetmenKayitNo` int(10) DEFAULT NULL COMMENT 'Filmin yönetmen bilgisi verilecek \r\n',
  `Dil` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin dil bilgisi verilecek\r\n',
  `Kategori` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin ait olduğu kategori bilgisi\r\n',
  `KonumKayitNo` int(10) DEFAULT NULL COMMENT 'Filmin cd sinin konum bilgii',
  `filmAciklama` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `filmKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Film Temel Bilgileri';

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`FilmKayitNo`, `FilmAdi`, `Vizyon`, `YonetmenKayitNo`, `Dil`, `Kategori`, `KonumKayitNo`, `filmAciklama`, `filmKayitTarihi`) VALUES
(1, 'Aquaman', '2018-12-27', 1, 'İngilizce', 'Aksiyon', 1, 'Aquaman, DC Comics\'in aynı adlı karakterinden uyarlanan ve Warner Bros. Pictures tarafından dağıtılan ABD süper kahraman filmi. James Wan tarafından yönetilen filmin senaryosunu Will Beall yazdı.', '2021-01-08 20:54:53'),
(2, 'Justice League', '2017-11-15', 2, 'İngilizce', 'Aksiyon', 2, 'Justice League: Adalet Birliği, DC Comics\'in süper kahraman takımı Adalet Birliği\'nden uyarlanan Amerikan yapımı süper kahraman filmi. DC Extended Universe\'in beşinci yapımı olarak ayarlandı. Filmi Zack Snyder yönetirken senaryo Chris Terrio tarafından yazıldı.', '2021-01-08 20:54:53'),
(3, 'BatmanvSuperman', '2016-03-25', 3, 'İngilizce', 'Aksiyon', 4, 'Batman v Superman: Adaletin Şafağı, Warner Bros. Pictures tarafından dağıtılan, DC Comics karakterleri Batman ve Superman\'in yer aldığı yaklaşan Amerikan süper kahraman filmi. 2013 yapımı Çelik Adam filmine takiben tasarlandı ve 2013\'te kurulan DC Extended Universe\'in ikinci projesi oldu.', '2021-01-08 20:54:53'),
(4, 'Mission İmpossible 6', '2018-07-12', 4, 'İngilizce', 'Aksiyon', 5, 'Görevimiz Tehlike 6 Christopher McQuarrie tarafından yönetilen ve yazılmış ve J. J. Abrams, Bryan Burk, Tom Cruise, David Ellison, Dana Goldberg, Don Granger ve McQuarrie tarafından üretilen yakında çıkacak bir Amerikan casusluk filmi.', '2021-01-08 20:54:53'),
(5, 'Avengers 1', '2012-05-01', 2, 'İngilizce', 'Aksiyon', 3, 'Yenilmezler, bazı ülkelerde Avengers Assemble olarak da bilinmektedir. Marvel Studios tarafından üretilen ve Marvel Comics\'in süper kahraman ekibidir. Dağıtımını Wss Whedon yazıp yönetmiştir. Ayrıca altıncı Marvel Sinematik Evreni filmi olup 1. Evre\'nin kapanış filmidir.', '2021-01-08 20:54:53'),
(6, 'Lord of the rings1 ', '2001-12-21', 6, 'İngilizce', 'Fantastik', 8, 'Yüzüklerin Efendisi: Yüzük Kardeşliği, Peter Jackson\'ın yönettiği Yüzüklerin Efendisi üçlemesinin birinci filmidir ve 2001 yılında gösterime girmiştir.', '2021-01-08 20:54:53'),
(7, 'Lord of the rings2', '2002-12-20', 6, 'İngilizce', 'Fantastik', 7, 'Yüzüklerin Efendisi: İki Kule, J. R. R. Tolkien\'nin İki Kule adlı kitabından uyarlanmış ve Peter Jackson tarafından yönetilmiş 2002 yılında gösterime giren fantezi filmidir.', '2021-01-08 20:54:53'),
(8, 'Lord of the rings3', '2003-12-19', 6, 'İngilizce', 'Fantastik', 6, 'Yüzüklerin Efendisi: Kralın Dönüşü, Peter Jackson\'ın yönetmenliğini yaptığı, J. R. R. Tolkien\'in Yüzüklerin Efendisi kitaplarının ikinci ve üçüncü bölümlerinden uyarlanan 2003 yılında gösterime giren fantezi filmidir. ', '2021-01-08 20:54:53'),
(9, 'Sherlock Holmes1', '2009-01-15', 7, 'İngilizce', 'Gizem', 9, 'Sherlock Holmes, Arthur Conan Doyle tarafından 1854 yılında yaratılan ve dünyanın en çok bilinen kurgusal dedektifleri arasında yer alan Sherlock Holmes\'den esinlenen film 2009\'un Aralık ayında vizyona girdi', '2021-01-08 20:54:53'),
(10, 'Sherlock Holmes2', '2011-12-16', 7, 'İngilizce', 'Gizem', 10, 'Sherlock Holmes: A Game of Shadows, Sherlock Holmes\'ün devam filmdir.16 Aralık 2011 tarihinde vizyona girmiştir. Sherlock Holmes bu filmde ezeli rakibi Profesör James Moriarty ile karmaşık dengelere uzanan bir kavgaya tutuşuyor.', '2021-01-08 20:54:53'),
(25, 'Jaws', '1989-12-28', 8, 'ingilizce', 'gerilim', 19, 'Çok korkunç bir film', '2021-01-10 09:16:53'),
(26, 'God Fatther', '1989-12-28', 35, 'ingilizce', 'Suç', 9, 'Gelmiş geçmiş en iyi mafya filmi', '2021-01-10 15:39:53');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fimoyuncutablosu`
--

CREATE TABLE `fimoyuncutablosu` (
  `filmoyuncuKayitNo` int(11) NOT NULL,
  `OyuncuKayitNo2` int(11) NOT NULL,
  `FilmKayitNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `fimoyuncutablosu`
--

INSERT INTO `fimoyuncutablosu` (`filmoyuncuKayitNo`, `OyuncuKayitNo2`, `FilmKayitNo`) VALUES
(1, 1, 1),
(2, 25, 1),
(3, 2, 2),
(4, 26, 2),
(5, 3, 3),
(6, 27, 3),
(7, 4, 4),
(8, 3, 4),
(9, 5, 5),
(10, 28, 5),
(11, 6, 6),
(12, 7, 6),
(13, 8, 6),
(14, 6, 7),
(15, 7, 7),
(16, 8, 7),
(17, 6, 8),
(18, 7, 8),
(19, 8, 8),
(20, 9, 9),
(21, 10, 9),
(22, 10, 10),
(23, 9, 10),
(24, 29, 9),
(25, 29, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konum`
--

CREATE TABLE `konum` (
  `KonumKayitNo` smallint(6) NOT NULL,
  `konumKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CdninKonumBilgisi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `KonumDerecesi` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `konum`
--

INSERT INTO `konum` (`KonumKayitNo`, `konumKayitTarihi`, `CdninKonumBilgisi`, `KonumDerecesi`) VALUES
(1, '2021-01-09 22:38:03', '1. dolap/1.raf', '10. Derece'),
(2, '2021-01-09 22:39:42', '1. dolap/2.raf', '20. Derece'),
(3, '2021-01-09 22:39:58', '1. dolap/3.raf', '30. Derece'),
(4, '2021-01-09 22:40:25', '1. dolap/1.raf', '40. Derece'),
(5, '2021-01-09 22:40:48', '2. dolap/1.raf', '50. Derece'),
(6, '2021-01-09 22:41:20', '2. dolap/3.raf', '60. Derece'),
(7, '2021-01-09 22:41:47', '3. dolap/2.raf', '70. Derece'),
(8, '2021-01-09 22:43:17', '4. dolap/1.raf', '80. Derece'),
(9, '2021-01-09 22:43:36', '4. dolap/2.raf', '90. Derece'),
(10, '2021-01-10 08:55:12', '3. dolap/1.raf', '101. Derece'),
(20, '2021-01-10 20:26:24', '4. dolap/2.raf', '103. Derece');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `konumlistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `konumlistesi` (
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncu`
--

CREATE TABLE `oyuncu` (
  `OyuncuKayitNo` smallint(6) NOT NULL COMMENT 'OyuncuTablosunun anahtar alanı ',
  `OyuncuAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oyuncunun İsim bilgisi\r\n',
  `OyuncuSoyadi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Oyuncunun soyad bilgisi',
  `DoğumTarihi` date DEFAULT NULL COMMENT 'Oyuncunun yaş bilgisi\r\n',
  `Nereli` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Oyuncunun ülke bilgisi\r\n',
  `BaşkaFilmleri` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Arşivde olan oyuncunun başka filmlerinin bilgisi\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Oyuncu Temel Bilgileri';

--
-- Tablo döküm verisi `oyuncu`
--

INSERT INTO `oyuncu` (`OyuncuKayitNo`, `OyuncuAdi`, `OyuncuSoyadi`, `DoğumTarihi`, `Nereli`, `BaşkaFilmleri`) VALUES
(1, 'Amber ', 'Heard', '1986-04-22', 'Amerika', 'Aquaman'),
(2, 'Ben ', 'Affleck', '1972-08-15', 'Amerika', 'Justice League\r\nBatmanvSuperman'),
(3, 'Henry ', 'Cavill', '1983-05-05', 'İngiltere', 'Justice League\r\nMission İmpossible 6\r\nBatmanvSuperman'),
(4, 'Tom ', 'Cruise', '1962-07-03', 'Amerika', 'Misson İmpossible 6'),
(5, 'Chiris ', 'Evans', '1981-06-13', 'Amerika', 'Avengers1'),
(6, 'Viggo ', 'Mortensen', '1958-10-20', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(7, 'Ian \r\n', 'McKellen', '1939-05-21', 'İngiltere', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(8, 'Eliyah ', 'Wood', '1981-09-16', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(9, 'Robert ', 'Downey jr', '1965-04-04', 'Amerika', 'Avengers1\r\nSherlock Holmes1\r\nSherlock Holmes2'),
(10, 'Jude ', 'Law', '1972-12-29', 'İngiltere', 'Sherlock Holmes1\r\nSherlock Holmes2'),
(25, 'Jason ', 'Mamoa', '1979-08-01', 'ABD', 'Aquaman'),
(26, 'Ezra ', 'Miller', '1992-09-30', 'ABD', 'justice league'),
(27, 'Gal ', 'Gadot', '1985-04-30', 'İsrail', 'BatmanvSuperman'),
(28, 'Mark ', 'Ruffalo', '1967-11-22', 'ABD', 'Avengers1'),
(29, 'Noomi ', 'Rapace', '1979-12-28', 'İsveç', 'Sherlock Holmes 1\r\nSherlock Holmes 2');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `sadecelotroyunculari`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `sadecelotroyunculari` (
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yönetmen`
--

CREATE TABLE `yönetmen` (
  `YonetmenKayitNo` smallint(6) NOT NULL COMMENT 'Yönetmen tablosunun anahtar alanı',
  `YonetmenAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yönetmen isim bilgisi\r\n',
  `YonetmenSoyadi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmenin Soyad bilgisi',
  `DogumTarihi` date DEFAULT NULL COMMENT 'Yönetmen yaş bilgisi\r\n',
  `Nereli` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmen ülke bilgisi\r\n',
  `BaskaFilmler` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Arşivde olan yönetmenin başka filmlerinin bilgisi\r\n',
  `YonetmenUrl` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmenin imdb profili linki\r\n',
  `yonetmenKayitTarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yönetmen Temel Bilgileri';

--
-- Tablo döküm verisi `yönetmen`
--

INSERT INTO `yönetmen` (`YonetmenKayitNo`, `YonetmenAdi`, `YonetmenSoyadi`, `DogumTarihi`, `Nereli`, `BaskaFilmler`, `YonetmenUrl`, `yonetmenKayitTarihi`) VALUES
(1, 'James ', 'Wan', '1977-02-26', 'Malezya', 'Aquaman', 'https://www.imdb.com/name/nm1490123/', '2021-01-08 22:12:05'),
(2, 'Joss ', 'Whedon', '1964-06-23', 'Amerika', 'Justice league\r\n', 'https://www.imdb.com/name/nm1490123/', '2021-01-08 22:12:05'),
(3, 'Zack \r\n', 'Snyder', '1966-03-01', 'Amerika', 'BatmanvSuperman', 'https://www.imdb.com/name/nm0811583/', '2021-01-08 22:12:05'),
(4, 'Christopher \r\n', 'McQuarrie', '1968-05-12', 'Amerika', 'Misson İmpossible 6', 'https://www.imdb.com/name/nm0003160/', '2021-01-08 22:12:05'),
(5, 'Joss ', 'Whedon', '1964-06-23', 'Amerika', 'Avengers 1', 'https://www.imdb.com/name/nm1490123/', '2021-01-08 22:12:05'),
(6, 'Peter ', 'Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings1\r\n', 'https://www.imdb.com/name/nm0001392/', '2021-01-08 22:12:05'),
(7, 'Guy ', 'Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes1', 'https://www.imdb.com/name/nm0005363/', '2021-01-08 22:12:05'),
(8, 'Steven,', 'Spielberg', '1945-12-18', 'Amerika', 'Jaws', 'https://www.imdb.com/name/nm0000229/', '2021-01-08 23:15:44'),
(9, 'Stanley ', 'Kubrick', '1928-08-16', 'Amerika', 'Cinnet', 'https://www.imdb.com/name/nm0000040/', '2021-01-08 23:18:54'),
(30, 'George', 'Lucas', '1944-05-24', 'Amerika', 'A new Hope', 'https://www.imdb.com/name/nm0000184/', '2021-01-09 10:16:00'),
(35, ' Ford ', 'Coppola', '1939-04-07', 'İtalyan', 'GodFather', 'https://www.imdb.com/name/nm0000338/', '2021-01-10 16:09:53');

-- --------------------------------------------------------

--
-- Görünüm yapısı `konumlistesi`
--
DROP TABLE IF EXISTS `konumlistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `konumlistesi`  AS  select `f`.`FilmAdi` AS `FilmAdi`,`k`.`CdninKonumBilgisi` AS `Cdninkonumbilgisi` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayitNo` = `k`.`KonumKayiNo` and `f`.`FilmKayitNo` = `o`.`OyuncuKayitNo` and `f`.`FilmKayitNo` = `y`.`YönetmenKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `sadecelotroyunculari`
--
DROP TABLE IF EXISTS `sadecelotroyunculari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sadecelotroyunculari`  AS  select `fi`.`FilmAdi` AS `FilmAdi`,`oy`.`OyuncuAdi` AS `OyuncuAdi`,`oy`.`OyuncuSoyadi` AS `OyuncuSoyadi` from ((`fimoyuncutablosu` `fo` join `film` `fi`) join `oyuncu` `oy`) where `fo`.`OyuncuKayitNo` = `oy`.`OyuncuKayitNo` and `fo`.`FilmKayitNo` = `fi`.`FilmKayitNo` and `fo`.`FilmKayitNo` = 6 ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`FilmKayitNo`);

--
-- Tablo için indeksler `fimoyuncutablosu`
--
ALTER TABLE `fimoyuncutablosu`
  ADD PRIMARY KEY (`filmoyuncuKayitNo`);

--
-- Tablo için indeksler `konum`
--
ALTER TABLE `konum`
  ADD PRIMARY KEY (`KonumKayitNo`);

--
-- Tablo için indeksler `oyuncu`
--
ALTER TABLE `oyuncu`
  ADD PRIMARY KEY (`OyuncuKayitNo`);

--
-- Tablo için indeksler `yönetmen`
--
ALTER TABLE `yönetmen`
  ADD PRIMARY KEY (`YonetmenKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `film`
--
ALTER TABLE `film`
  MODIFY `FilmKayitNo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `fimoyuncutablosu`
--
ALTER TABLE `fimoyuncutablosu`
  MODIFY `filmoyuncuKayitNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `konum`
--
ALTER TABLE `konum`
  MODIFY `KonumKayitNo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncu`
--
ALTER TABLE `oyuncu`
  MODIFY `OyuncuKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'OyuncuTablosunun anahtar alanı ', AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `yönetmen`
--
ALTER TABLE `yönetmen`
  MODIFY `YonetmenKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yönetmen tablosunun anahtar alanı', AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
