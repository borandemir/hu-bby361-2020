-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Ara 2020, 15:03:49
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
-- Görünüm yapısı durumu `arsivdekactanevar`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `arsivdekactanevar` (
`FilmAdı` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film`
--

CREATE TABLE `film` (
  `FilmAdı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Filmin İsmi bilgisi verilecek Filmin İsmi bilgisi verilecek',
  `Oyuncular` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin oyuncu kadrosu bilgisi\r\n',
  `Vizyon` date DEFAULT NULL COMMENT 'Filmin yayın tarihi bilgisi\r\n',
  `Yönetmen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin yönetmen bilgisi verilecek \r\n',
  `Dil` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin dil bilgisi verilecek\r\n',
  `Kategori` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Filmin ait olduğu kategori bilgisi\r\n',
  `FilmKayıtNo` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Film Temel Bilgileri';

--
-- Tablo döküm verisi `film`
--

INSERT INTO `film` (`FilmAdı`, `Oyuncular`, `Vizyon`, `Yönetmen`, `Dil`, `Kategori`, `FilmKayıtNo`) VALUES
('Aquaman', 'Jason Mamoa\r\nAmber Heard\r\nPatrick Wilson\r\nNicole Kidman', '2018-12-28', 'Jammes Wan', 'İngilizce', 'Aksiyon', 1),
('Justice League', 'Ben Affleck\r\nJason Mamoa\r\nHenry Cavill\r\nGal Gadot\r\nEzra Miller', '2017-11-15', 'Joss Whedon', 'İngilizce', 'Aksiyon', 2),
('BatmanvSuperman', 'Ben Affleck\r\nHenry Cavill\r\nGal Gadot\r\nAmy Addams\r\njesse Eisenberg', '2016-03-25', 'Zack Snyder', 'İngilizce', 'Aksiyon', 3),
('Mission İmpossible 6', 'Henry Cavill\r\nTom Cruise\r\nRebecca Ferguson', '2018-07-12', 'Christopher McQuarrie', 'İngilizce', 'Aksiyon', 4),
('Avengers 1', 'Robert Downey Jr\r\nChris Evans\r\nScarlett Johansson\r\nChris Hemsworth', '2012-05-01', 'Joss Whedon', 'İngilizce', 'Aksiyon', 5),
('Lord of the rings1 ', 'Ian Mckellen\r\nEliyah Wood\r\nOrlando Bloom\r\nViggo Mortensen\r\nCate Blanchet\r\nSean Astin', '2001-12-21', 'Peter Jackson', 'İngilizce', 'Fantastik', 6),
('Lord of the rings2', 'Ian Mckellen\r\nEliyah Wood\r\nOrlando Bloom\r\nViggo Mortensen\r\nCate Blanchet\r\nSean Astin', '2002-12-20', 'Peter Jackson', 'İngilizce', 'Fantastik', 7),
('Lord of the rings3', 'Ian Mckellen\r\nEliyah Wood\r\nOrlando Bloom\r\nViggo Mortensen\r\nCate Blanchet\r\nSean Astin', '2003-12-19', 'Peter Jackson', 'İngilizce', 'Fantastik', 8),
('Sherlock Holmes1', 'Robert Downey Jr\r\nJude Law\r\nRachel McAdams\r\n', '2009-01-15', 'Guy Ritchie', 'İngilizce', 'Gizem', 9),
('Sherlock Holmes2', 'Robert Downey Jr\r\nJude Law\r\nRachel McAdams', '2011-12-16', 'Guy Ritchie', 'İngilizce', 'Gizem', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konum`
--

CREATE TABLE `konum` (
  `KonumKayıtNo` smallint(6) NOT NULL COMMENT 'Konum tablosunun anahtar alanı',
  `Cdninkonumbilgisi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cd nin bulunduğu yerin neresi olduğu bilgisi\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Konumt temel bilgileri';

--
-- Tablo döküm verisi `konum`
--

INSERT INTO `konum` (`KonumKayıtNo`, `Cdninkonumbilgisi`) VALUES
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
-- Görünüm yapısı durumu `listenumber2`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `listenumber2` (
`FilmAdı` varchar(100)
,`Cdninkonumbilgisi` text
,`OyuncuAdı` varchar(100)
,`YönetmenAdı` varchar(100)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `listenumber3`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `listenumber3` (
`FilmAdı` varchar(100)
,`Vizyon` date
,`Dil` varchar(30)
,`Kategori` varchar(75)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `listenumber4`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `listenumber4` (
`FilmAdı` varchar(100)
,`Oyuncular` text
,`OyuncuAdı` varchar(100)
,`DoğumTarihi` date
,`Nereli` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyuncu`
--

CREATE TABLE `oyuncu` (
  `OyuncuKayıtNo` smallint(6) NOT NULL COMMENT 'OyuncuTablosunun anahtar alanı ',
  `OyuncuAdı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Oyuncunun İsim bilgisi\r\n',
  `DoğumTarihi` date DEFAULT NULL COMMENT 'Oyuncunun yaş bilgisi\r\n',
  `Nereli` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Oyuncunun ülke bilgisi\r\n',
  `BaşkaFilmleri` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Arşivde olan oyuncunun başka filmlerinin bilgisi\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Oyuncu Temel Bilgileri';

--
-- Tablo döküm verisi `oyuncu`
--

INSERT INTO `oyuncu` (`OyuncuKayıtNo`, `OyuncuAdı`, `DoğumTarihi`, `Nereli`, `BaşkaFilmleri`) VALUES
(1, 'Amber Heard', '1986-04-22', 'Amerika', 'Aquaman'),
(2, 'Ben Affleck', '1972-08-15', 'Amerika', 'Justice League\r\nBatmanvSuperman'),
(3, 'Henry Cavill', '1983-05-05', 'İngiltere', 'Justice League\r\nMission İmpossible 6\r\nBatmanvSuperman'),
(4, 'Tom Cruise', '1962-07-03', 'Amerika', 'Misson İmpossible 6'),
(5, 'Chiris Evans', '1981-06-13', 'Amerika', 'Avengers1'),
(6, 'Viggo Mortensen', '1958-10-20', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(7, 'Ian McKellen\r\n', '1939-05-21', 'İngiltere', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(8, 'Eliyah Wood', '1981-09-16', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(9, 'Robert Downey jr', '1965-04-04', 'Amerika', 'Avengers1\r\nSherlock Holmes1\r\nSherlock Holmes2'),
(10, 'Jude Law', '1972-12-29', 'İngiltere', 'Sherlock Holmes1\r\nSherlock Holmes2');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `oyuncular`
-- (Asıl görünüm için aşağıya bakın)
--
CREATE TABLE `oyuncular` (
`OyuncuAdı` varchar(100)
,`DoğumTarihi` date
,`Nereli` varchar(100)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yönetmen`
--

CREATE TABLE `yönetmen` (
  `YönetmenKayıtNo` smallint(6) NOT NULL COMMENT 'Yönetmen tablosunun anahtar alanı',
  `YönetmenAdı` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Yönetmen isim bilgisi\r\n',
  `DoğumTarihi` date DEFAULT NULL COMMENT 'Yönetmen yaş bilgisi\r\n',
  `Nereli` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmen ülke bilgisi\r\n',
  `BaşkaFilmleri` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Arşivde olan yönetmenin başka filmlerinin bilgisi\r\n',
  `YönetmenUrl` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Yönetmenin imdb profili linki\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Yönetmen Temel Bilgileri';

--
-- Tablo döküm verisi `yönetmen`
--

INSERT INTO `yönetmen` (`YönetmenKayıtNo`, `YönetmenAdı`, `DoğumTarihi`, `Nereli`, `BaşkaFilmleri`, `YönetmenUrl`) VALUES
(1, 'James Wan', '1977-02-26', 'Malezya', 'Aquaman', 'https://www.imdb.com/name/nm1490123/'),
(2, 'Joss Whedon', '1964-06-23', 'Amerika', 'Justice league\r\n', 'https://www.imdb.com/name/nm1490123/'),
(3, 'Zack Snyder\r\n', '1966-03-01', 'Amerika', 'BatmanvSuperman', 'https://www.imdb.com/name/nm0811583/'),
(4, 'Christopher McQuarrie\r\n', '1968-05-12', 'Amerika', 'Misson İmpossible 6', 'https://www.imdb.com/name/nm0003160/'),
(5, 'Joss Whedon', '1964-06-23', 'Amerika', 'Avengers 1', 'https://www.imdb.com/name/nm1490123/'),
(6, 'Peter Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings1\r\n', 'https://www.imdb.com/name/nm0001392/'),
(7, 'Peter Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings2\r\n', 'https://www.imdb.com/name/nm0001392/'),
(8, 'Peter Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings3', 'https://www.imdb.com/name/nm0001392/'),
(9, 'Guy Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes1', 'https://www.imdb.com/name/nm0005363/'),
(10, 'Guy Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes2', 'https://www.imdb.com/name/nm0005363/');

-- --------------------------------------------------------

--
-- Görünüm yapısı `arsivdekactanevar`
--
DROP TABLE IF EXISTS `arsivdekactanevar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arsivdekactanevar`  AS  select `f`.`FilmAdı` AS `FilmAdı` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayıtNo` = `k`.`KonumKayıtNo` and `f`.`FilmKayıtNo` = `o`.`OyuncuKayıtNo` and `f`.`FilmKayıtNo` = `y`.`YönetmenKayıtNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `listenumber2`
--
DROP TABLE IF EXISTS `listenumber2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listenumber2`  AS  select `f`.`FilmAdı` AS `FilmAdı`,`k`.`Cdninkonumbilgisi` AS `Cdninkonumbilgisi`,`o`.`OyuncuAdı` AS `OyuncuAdı`,`y`.`YönetmenAdı` AS `YönetmenAdı` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayıtNo` = `k`.`KonumKayıtNo` and `f`.`FilmKayıtNo` = `o`.`OyuncuKayıtNo` and `f`.`FilmKayıtNo` = `y`.`YönetmenKayıtNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `listenumber3`
--
DROP TABLE IF EXISTS `listenumber3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listenumber3`  AS  select `f`.`FilmAdı` AS `FilmAdı`,`f`.`Vizyon` AS `Vizyon`,`f`.`Dil` AS `Dil`,`f`.`Kategori` AS `Kategori` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayıtNo` = `k`.`KonumKayıtNo` and `f`.`FilmKayıtNo` = `o`.`OyuncuKayıtNo` and `f`.`FilmKayıtNo` = `y`.`YönetmenKayıtNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `listenumber4`
--
DROP TABLE IF EXISTS `listenumber4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `listenumber4`  AS  select `f`.`FilmAdı` AS `FilmAdı`,`f`.`Oyuncular` AS `Oyuncular`,`o`.`OyuncuAdı` AS `OyuncuAdı`,`o`.`DoğumTarihi` AS `DoğumTarihi`,`o`.`Nereli` AS `Nereli` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayıtNo` = `k`.`KonumKayıtNo` and `f`.`FilmKayıtNo` = `o`.`OyuncuKayıtNo` and `f`.`FilmKayıtNo` = `y`.`YönetmenKayıtNo` ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `oyuncular`
--
DROP TABLE IF EXISTS `oyuncular`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `oyuncular`  AS  select `o`.`OyuncuAdı` AS `OyuncuAdı`,`o`.`DoğumTarihi` AS `DoğumTarihi`,`o`.`Nereli` AS `Nereli` from (((`film` `f` join `konum` `k`) join `oyuncu` `o`) join `yönetmen` `y`) where `f`.`FilmKayıtNo` = `k`.`KonumKayıtNo` and `f`.`FilmKayıtNo` = `o`.`OyuncuKayıtNo` and `f`.`FilmKayıtNo` = `y`.`YönetmenKayıtNo` ;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`FilmKayıtNo`);

--
-- Tablo için indeksler `konum`
--
ALTER TABLE `konum`
  ADD PRIMARY KEY (`KonumKayıtNo`),
  ADD UNIQUE KEY `Cdnin konum bilgisi` (`Cdninkonumbilgisi`) USING HASH;

--
-- Tablo için indeksler `oyuncu`
--
ALTER TABLE `oyuncu`
  ADD PRIMARY KEY (`OyuncuKayıtNo`);

--
-- Tablo için indeksler `yönetmen`
--
ALTER TABLE `yönetmen`
  ADD PRIMARY KEY (`YönetmenKayıtNo`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `film`
--
ALTER TABLE `film`
  MODIFY `FilmKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `konum`
--
ALTER TABLE `konum`
  MODIFY `KonumKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Konum tablosunun anahtar alanı', AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `oyuncu`
--
ALTER TABLE `oyuncu`
  MODIFY `OyuncuKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'OyuncuTablosunun anahtar alanı ', AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `yönetmen`
--
ALTER TABLE `yönetmen`
  MODIFY `YönetmenKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yönetmen tablosunun anahtar alanı', AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
