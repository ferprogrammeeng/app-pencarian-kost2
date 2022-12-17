-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2022 pada 06.02
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kost` int(11) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `file` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kost`
--

CREATE TABLE `kost` (
  `id_kost` int(11) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `tersedia` int(2) NOT NULL,
  `status` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `fasilitas` text NOT NULL,
  `harga_3bulan` int(9) NOT NULL,
  `harga_6bulan` int(9) NOT NULL,
  `harga_pertahun` int(9) NOT NULL,
  `pengunjung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kost`
--

INSERT INTO `kost` (`id_kost`, `id_pemilik`, `nama`, `alamat`, `latitude`, `longitude`, `tersedia`, `status`, `fasilitas`, `harga_3bulan`, `harga_6bulan`, `harga_pertahun`, `pengunjung`) VALUES
(1, 1, 'Alfa Kost', 'Gg. Putri, Simpang Baru, Kec. Tampan, Kota Pekanba', 0.475039, 101.373, 0, NULL, '', 800000, 0, 0, NULL),
(2, 1, 'Kost Putri 4 Bersaud', 'Jalan Mawar, Gg. Putri Panam No.2, Simpang Baru, K', 0.477859, 101.374, 0, NULL, '', 840000, 0, 0, NULL),
(3, 1, 'Kost Putri Kamboja', 'Jl. Kamboja Jl. Bangau Sakti, Simpang Baru, Kec. T', 0.481739, 101.375, 0, NULL, '', 780000, 0, 0, NULL),
(4, 1, 'Kost Panam Alkahfi', 'JL Mukhsinin no 24 B, Panam, Tuah Karya, Kec. Tamp', 0.472469, 101.385, 0, NULL, '', 800000, 0, 0, NULL),
(5, 1, 'Zifer Kost Panam', 'Jl. HR. Soebrantas No.11, Delima, Kec. Tampan, Kot', 0.472745, 101.388, 0, NULL, '', 850000, 0, 0, NULL),
(6, 1, 'Kost Nasya 1', 'jl. Tuah karya, Perumahan Royal Permata Hijau Blok', 0.465342, 101.398, 0, NULL, '', 950000, 0, 0, NULL),
(7, 1, 'Kost Putri Jingga Ka', 'Jl. Buluh Cina panam, Tuah Karya, Kec. Tampan, Kot', 0.463362, 101.391, 0, NULL, '', 880000, 0, 0, NULL),
(8, 1, 'Kost Putri Mandala', 'Jl. Tuah Karya, Tuah Karya, Kec. Tampan, Kota Peka', 0.459425, 101.376, 0, NULL, '', 1000000, 0, 0, NULL),
(9, 1, 'Kost Putra Panam Ray', 'Jl. Binakrida UNRI No.Kelurahan, Simpang Baru, Kec', 0.457623, 101.385, 0, NULL, '', 900000, 0, 0, NULL),
(10, 1, 'Kost Pria', 'F95G+C65, Tuah Karya, Tampan, Pekanbaru City, Riau', 0.469236, 101.363, 0, NULL, '', 850000, 0, 0, NULL),
(11, 1, 'De\'Kost Panam', 'Di belakang Rs. Awal Bros Panam, Jl. HR. Subrantas', 0.461427, 101.37, 0, NULL, '', 950000, 0, 0, NULL),
(12, 1, 'Kos Putra Rizki', 'Perumahan Villa Pesona Panam Blok J11, Jalan HR. S', 0.458616, 101.353, 0, NULL, '', 850000, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `nama`, `alamat`, `telepon`, `email`, `username`, `password`) VALUES
(1, 'Pemilik Kost', 'Karangbendo Wetan RT. 02 RW.08', '081234567890', 'pemilik@gmail.com', 'pemilik', '58399557dae3c60e23c78606771dfa3d');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `fk_kost` (`id_kost`);

--
-- Indeks untuk tabel `kost`
--
ALTER TABLE `kost`
  ADD PRIMARY KEY (`id_kost`),
  ADD KEY `fk_pemilik` (`id_pemilik`);

--
-- Indeks untuk tabel `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kost`
--
ALTER TABLE `kost`
  MODIFY `id_kost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_kost`) REFERENCES `kost` (`id_kost`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
