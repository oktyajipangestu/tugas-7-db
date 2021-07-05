-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jul 2021 pada 17.35
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_7`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daerah`
--

CREATE TABLE `daerah` (
  `kota` varchar(50) NOT NULL,
  `kecamatan` int(3) NOT NULL,
  `kelurahan` int(4) NOT NULL,
  `luas` decimal(6,2) NOT NULL,
  `penduduk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daerah`
--

INSERT INTO `daerah` (`kota`, `kecamatan`, `kelurahan`, `luas`, `penduduk`) VALUES
('Bandung', 30, 151, '167.67', 2339463),
('Bekasi', 12, 56, '206.00', 2381053),
('Depok', 11, 63, '200.29', 1631951),
('jakarta', 44, 267, '664.01', 9988495),
('Makassar', 14, 143, '199.26', 1651146),
('Medan', 21, 151, '265.00', 2465469),
('Palembang', 14, 107, '369.22', 1548064),
('Semarang', 16, 177, '373.78', 1621384),
('Surabaya', 31, 154, '350.00', 2805906),
('Tangerang', 13, 104, '153.93', 1566190);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkotaan`
--

CREATE TABLE `perkotaan` (
  `kota` varchar(50) NOT NULL,
  `penduduk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perkotaan`
--

INSERT INTO `perkotaan` (`kota`, `penduduk`) VALUES
('Bandung', 2339463),
('Bekasi', 2381053),
('Depok', 1631951),
('jakarta', 9988495),
('Makassar', 1651146),
('Medan', 2465469),
('Palembang', 1548064),
('Semarang', 1621384),
('Surabaya', 2805906),
('Tangerang', 1566190);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daerah`
--
ALTER TABLE `daerah`
  ADD PRIMARY KEY (`kota`);

--
-- Indeks untuk tabel `perkotaan`
--
ALTER TABLE `perkotaan`
  ADD PRIMARY KEY (`kota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
