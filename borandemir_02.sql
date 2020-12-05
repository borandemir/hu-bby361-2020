-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 05 Ara 2020, 20:34:59
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
  `FilmAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Filmin İsmi bilgisi verilecek Filmin İsmi bilgisi verilecek',
  `Vizyon` date DEFAULT NULL COMMENT 'Filmin yayın tarihi bilgisi\r\n',
  `Yönetmen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin yönetmen bilgisi verilecek \r\n',
  `Dil` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin dil bilgisi verilecek\r\n',
  `Kategori` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin ait olduğu kategori bilgisi\r\n',
  `FilmKayitNo` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Film Temel Bilgileri';

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`FilmAdi`, `Vizyon`, `Yönetmen`, `Dil`, `Kategori`, `FilmKayitNo`) VALUES
('Aquaman', '2018-12-28', 'Jammes Wan', 'İngilizce', 'Aksiyon', 1),
('Justice League', '2017-11-15', 'Joss Whedon', 'İngilizce', 'Aksiyon', 2),
('BatmanvSuperman', '2016-03-25', 'Zack Snyder', 'İngilizce', 'Aksiyon', 3),
('Mission İmpossible 6', '2018-07-12', 'Christopher McQuarrie', 'İngilizce', 'Aksiyon', 4),
('Avengers 1', '2012-05-01', 'Joss Whedon', 'İngilizce', 'Aksiyon', 5),
('Lord of the rings1 ', '2001-12-21', 'Peter Jackson', 'İngilizce', 'Fantastik', 6),
('Lord of the rings2', '2002-12-20', 'Peter Jackson', 'İngilizce', 'Fantastik', 7),
('Lord of the rings3', '2003-12-19', 'Peter Jackson', 'İngilizce', 'Fantastik', 8),
('Sherlock Holmes1', '2009-01-15', 'Guy Ritchie', 'İngilizce', 'Gizem', 9),
('Sherlock Holmes2', '2011-12-16', 'Guy Ritchie', 'İngilizce', 'Gizem', 10);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `filmbilgilerilistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `filmbilgilerilistesi` (
`FilmAdi` varchar(100)
,`Vizyon` date
,`Kategori` varchar(75)
,`Dil` varchar(30)
,`YönetmenAdi` varchar(100)
,`YönetmenSoyadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `filmlerveoyunculari`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `filmlerveoyunculari` (
`FilmKayitNo` int(11)
,`FilmAdi` varchar(100)
,`OyuncuAdi` varchar(100)
,`OyuncuSoyadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `filmyönetmenlistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `filmyönetmenlistesi` (
`FilmAdi` varchar(100)
,`YönetmenAdi` varchar(100)
,`YönetmenSoyadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fimoyuncutablosu`
--

CREATE TABLE `fimoyuncutablosu` (
  `filmoyuncuKayitNo` int(11) NOT NULL,
  `OyuncuKayitNo` int(11) NOT NULL,
  `FilmKayitNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `fimoyuncutablosu`
--

INSERT INTO `fimoyuncutablosu` (`filmoyuncuKayitNo`, `OyuncuKayitNo`, `FilmKayitNo`) VALUES
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
  `KonumKayiNo` smallint(6) NOT NULL COMMENT 'Konum tablosunun anahtar alanı',
  `Cdninkonumbilgisi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cd nin bulunduğu yerin neresi olduğu bilgisi\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Konumt temel bilgileri';

--
-- Tablo döküm verisi `konum`
--

INSERT INTO `konum` (`KonumKayiNo`, `Cdninkonumbilgisi`) VALUES
(1, '1. dolap/1. raf'),
(2, '1.dolap/1.raf'),
(3, '2.dolap/1.raf'),
(4, '2.dolap/3.raf'),
(5, '1.dolap/3.raf'),
(6, '3.dolap/1.raf'),
(7, '3.dolap/2.raf'),
(8, '3.dolap/ 1.raf'),
(9, '1.dolap/4.raf'),
(10, '1.dolap/4. raf');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `konumlistesi`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `konumlistesi` (
`FilmAdi` varchar(100)
,`Cdninkonumbilgisi` text
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
`FilmAdi` varchar(100)
,`OyuncuAdi` varchar(100)
,`OyuncuSoyadi` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yönetmen`
--

CREATE TABLE `yönetmen` (
  `YönetmenKayitNo` smallint(6) NOT NULL COMMENT 'Yönetmen tablosunun anahtar alanı',
  `YönetmenAdi` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yönetmen isim bilgisi\r\n',
  `YönetmenSoyadi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmenin Soyad bilgisi',
  `DoğumTarihi` date DEFAULT NULL COMMENT 'Yönetmen yaş bilgisi\r\n',
  `Nereli` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmen ülke bilgisi\r\n',
  `BaşkaFilmleri` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Arşivde olan yönetmenin başka filmlerinin bilgisi\r\n',
  `YönetmenUrl` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmenin imdb profili linki\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yönetmen Temel Bilgileri';

--
-- Tablo döküm verisi `yönetmen`
--

INSERT INTO `yönetmen` (`YönetmenKayitNo`, `YönetmenAdi`, `YönetmenSoyadi`, `DoğumTarihi`, `Nereli`, `BaşkaFilmleri`, `YönetmenUrl`) VALUES
(1, 'James ', 'Wan', '1977-02-26', 'Malezya', 'Aquaman', 'https://www.imdb.com/name/nm1490123/'),
(2, 'Joss ', 'Whedon', '1964-06-23', 'Amerika', 'Justice league\r\n', 'https://www.imdb.com/name/nm1490123/'),
(3, 'Zack \r\n', 'Snyder', '1966-03-01', 'Amerika', 'BatmanvSuperman', 'https://www.imdb.com/name/nm0811583/'),
(4, 'Christopher \r\n', 'McQuarrie', '1968-05-12', 'Amerika', 'Misson İmpossible 6', 'https://www.imdb.com/name/nm0003160/'),
(5, 'Joss ', 'Whedon', '1964-06-23', 'Amerika', 'Avengers 1', 'https://www.imdb.com/name/nm1490123/'),
(6, 'Peter ', 'Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings1\r\n', 'https://www.imdb.com/name/nm0001392/'),
(7, 'Peter ', 'Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings2\r\n', 'https://www.imdb.com/name/nm0001392/'),
(8, 'Peter ', 'Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings3', 'https://www.imdb.com/name/nm0001392/'),
(9, 'Guy ', 'Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes1', 'https://www.imdb.com/name/nm0005363/'),
(10, 'Guy ', 'Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes2', 'https://www.imdb.com/name/nm0005363/');

-- --------------------------------------------------------

--
-- Görünüm yapısı `filmbilgilerilistesi`
--
DROP TABLE IF EXISTS `filmbilgilerilistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `filmbilgilerilistesi`  AS  select `f`.`FilmAdi` AS `FilmAdi`,`f`.`Vizyon` AS `Vizyon`,`f`.`Kategori` AS `Kategori`,`f`.`Dil` AS `Dil`,`y`.`YönetmenAdi` AS `YönetmenAdi`,`y`.`YönetmenSoyadi` AS `YönetmenSoyadi` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayitNo` = `k`.`KonumKayiNo` and `f`.`FilmKayitNo` = `o`.`OyuncuKayitNo` and `f`.`FilmKayitNo` = `y`.`YönetmenKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `filmlerveoyunculari`
--
DROP TABLE IF EXISTS `filmlerveoyunculari`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `filmlerveoyunculari`  AS  select `fo`.`FilmKayitNo` AS `FilmKayitNo`,`fi`.`FilmAdi` AS `FilmAdi`,`oy`.`OyuncuAdi` AS `OyuncuAdi`,`oy`.`OyuncuSoyadi` AS `OyuncuSoyadi` from ((`fimoyuncutablosu` `fo` join `film` `fi`) join `oyuncu` `oy`) where `fo`.`OyuncuKayitNo` = `oy`.`OyuncuKayitNo` and `fo`.`FilmKayitNo` = `fi`.`FilmKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `filmyönetmenlistesi`
--
DROP TABLE IF EXISTS `filmyönetmenlistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `filmyönetmenlistesi`  AS  select `f`.`FilmAdi` AS `FilmAdi`,`y`.`YönetmenAdi` AS `YönetmenAdi`,`y`.`YönetmenSoyadi` AS `YönetmenSoyadi` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayitNo` = `k`.`KonumKayiNo` and `f`.`FilmKayitNo` = `o`.`OyuncuKayitNo` and `f`.`FilmKayitNo` = `y`.`YönetmenKayitNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `konumlistesi`
--
DROP TABLE IF EXISTS `konumlistesi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `konumlistesi`  AS  select `f`.`FilmAdi` AS `FilmAdi`,`k`.`Cdninkonumbilgisi` AS `Cdninkonumbilgisi` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayitNo` = `k`.`KonumKayiNo` and `f`.`FilmKayitNo` = `o`.`OyuncuKayitNo` and `f`.`FilmKayitNo` = `y`.`YönetmenKayitNo` ;

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
  ADD PRIMARY KEY (`KonumKayiNo`),
  ADD UNIQUE KEY `Cdnin konum bilgisi` (`Cdninkonumbilgisi`) USING HASH;

--
-- Tablo için indeksler `oyuncu`
--
ALTER TABLE `oyuncu`
  ADD PRIMARY KEY (`OyuncuKayitNo`);

--
-- Tablo için indeksler `yönetmen`
--
ALTER TABLE `yönetmen`
  ADD PRIMARY KEY (`YönetmenKayitNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `film`
--
ALTER TABLE `film`
  MODIFY `FilmKayitNo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `fimoyuncutablosu`
--
ALTER TABLE `fimoyuncutablosu`
  MODIFY `filmoyuncuKayitNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `konum`
--
ALTER TABLE `konum`
  MODIFY `KonumKayiNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Konum tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncu`
--
ALTER TABLE `oyuncu`
  MODIFY `OyuncuKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'OyuncuTablosunun anahtar alanı ', AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `yönetmen`
--
ALTER TABLE `yönetmen`
  MODIFY `YönetmenKayitNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yönetmen tablosunun anahtar alanı', AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
