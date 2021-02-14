-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Haz 2020, 19:04:44
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gym`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminler`
--

CREATE TABLE `adminler` (
  `username` text COLLATE utf8_turkish_ci NOT NULL,
  `password` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adminler`
--

INSERT INTO `adminler` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `CD` int(11) NOT NULL,
  `ADRESS` text COLLATE utf8_turkish_ci NOT NULL,
  `PHONE` text COLLATE utf8_turkish_ci NOT NULL,
  `SEX` text COLLATE utf8_turkish_ci NOT NULL,
  `FIRST` text CHARACTER SET utf32 COLLATE utf32_turkish_ci NOT NULL,
  `LAST` text COLLATE utf8_turkish_ci NOT NULL,
  `BIRTHDATE` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`CD`, `ADRESS`, `PHONE`, `SEX`, `FIRST`, `LAST`, `BIRTHDATE`) VALUES
(13, 'full', '554782323', 'man', 'furkan', 'zorlu', '12-03-2000'),
(14, 'yenibaglar', '554782322', 'women', 'ayse', 'tan', '12-03-1997'),
(18, 'full', '23232323', 'man', 'ahmet', 'baş', '12-05-2000');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_turkish_ci NOT NULL,
  `type` text COLLATE utf8_turkish_ci NOT NULL,
  `manifacturer` text COLLATE utf8_turkish_ci NOT NULL,
  `conditions` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `type`, `manifacturer`, `conditions`) VALUES
(9, 'bar', 'b', 'b company', '32'),
(13, 'dumbell', 'a', 'a company', '3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `memberreport`
--

CREATE TABLE `memberreport` (
  `RID` int(11) NOT NULL,
  `age` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `weight` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `height` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `fat` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `FatFreeMuscle` varchar(11) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `memberreport`
--

INSERT INTO `memberreport` (`RID`, `age`, `weight`, `height`, `fat`, `FatFreeMuscle`) VALUES
(22, '15', '90', '190', '10', '3'),
(23, '25', '80', '170', '5', '4'),
(26, '17', '58', '180', '3', '6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_turkish_ci NOT NULL,
  `lastname` text COLLATE utf8_turkish_ci NOT NULL,
  `adress` text COLLATE utf8_turkish_ci NOT NULL,
  `phone` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `staff`
--

INSERT INTO `staff` (`id`, `name`, `lastname`, `adress`, `phone`) VALUES
(33, 'furkan', 'zorlu', '53054545', 'full sokak'),
(34, 'ahmet', 'bas', '554736746', 'full ');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CD`);

--
-- Tablo için indeksler `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `memberreport`
--
ALTER TABLE `memberreport`
  ADD PRIMARY KEY (`RID`);

--
-- Tablo için indeksler `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `CD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `memberreport`
--
ALTER TABLE `memberreport`
  MODIFY `RID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
