

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
  `Cdnin konum bilgisi` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cd nin bulunduğu yerin neresi olduğu bilgisi\r\n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Konumt temel bilgileri';

--
-- Tablo döküm verisi `konum`
--

INSERT INTO `konum` (`KonumKayıtNo`, `Cdnin konum bilgisi`) VALUES
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
(1, 'Jason Mamoa', '1979-08-01', 'Hawai', 'justice League\r\nAquaman'),
(2, 'Amber Heard', '1986-04-22', 'Amerika', 'Aquaman'),
(3, 'Patrick Wilson', '1973-07-03', 'Amerika', 'Aquaman'),
(4, 'Ben Affleck', '1972-08-15', 'Amerika', 'Justice League\r\nBatmanvSuperman'),
(5, 'Henry Cavill', '1983-05-05', 'İngiltere', 'Justice League\r\nMission İmpossible 6\r\nBatmanvSuperman'),
(6, 'Gal Gadot', '1985-04-30', 'İsrail', 'Justice League\r\nBatmanvSuperman'),
(7, 'Ezra Miller', '1986-07-21', 'Amerika', 'Justice League'),
(8, 'Jesse Eisenberg', '1988-12-06', 'Amerika', 'BatmanvSuperman'),
(9, 'Amy Adams', '1974-07-20', 'İtalya', 'BatmanvSuperman'),
(10, 'Tom Cruise', '1962-07-03', 'Amerika', 'Misson İmpossible 6'),
(11, 'Rebecca Ferguson', '1983-10-19', 'İsveç', 'Misson İmpossible 6'),
(12, 'Robert Downey jr', '1965-04-04', 'Amerika', 'Avengers1\r\nSherlock Holmes1\r\nSherlock Holmes2'),
(13, 'Chiris Evans', '1981-06-13', 'Amerika', 'Avengers1'),
(14, 'Scarlett Johansson ', '1984-11-22', 'Amerika', 'Avengers1'),
(15, 'Chris Hemsworth', '1983-08-11', 'Avustralya', 'Avengers1'),
(16, 'Viggo Mortensen', '1958-10-20', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(17, 'Ian McKellen\r\n', '1939-05-21', 'İngiltere', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(18, 'Eliyah Wood', '1981-09-16', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(19, 'Orlando Bloom', '1977-01-13', 'İngiltere', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(20, 'Sean Astin', '1971-02-25', 'Amerika', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(21, 'Cate Blanchett', '1969-05-14', ' Avustralya', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3'),
(22, 'Jude Law', '1972-12-29', 'İngiltere', 'Sherlock Holmes1\r\nSherlock Holmes2'),
(23, 'Rachel McAdams', '1978-11-17', 'Kanada', 'Sherlock Holmes1\r\nSherlock Holmes2');

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
(2, 'Joss Whedon', '1964-06-23', 'Amerika', 'Justice league\r\nAvengers 1', 'https://www.imdb.com/name/nm1490123/'),
(3, 'Zack Snyder\r\n', '1966-03-01', 'Amerika', 'BatmanvSuperman', 'https://www.imdb.com/name/nm0811583/'),
(4, 'Christopher McQuarrie\r\n', '1968-05-12', 'Amerika', 'Misson İmpossible 6', 'https://www.imdb.com/name/nm0003160/'),
(5, 'Peter Jackson', '1961-10-31', 'Yeni Zellanda', 'Lord of the rings1\r\nLord of the rings2\r\nLord of the rings3', 'https://www.imdb.com/name/nm0001392/'),
(6, 'Guy Ritchie', '1968-09-10', 'İngiltere', 'Sherlock Holmes1\r\nSherlock Holmes2', 'https://www.imdb.com/name/nm0005363/');

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
  ADD UNIQUE KEY `Cdnin konum bilgisi` (`Cdnin konum bilgisi`) USING HASH;

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
  MODIFY `OyuncuKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'OyuncuTablosunun anahtar alanı ', AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `yönetmen`
--
ALTER TABLE `yönetmen`
  MODIFY `YönetmenKayıtNo` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Yönetmen tablosunun anahtar alanı', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
