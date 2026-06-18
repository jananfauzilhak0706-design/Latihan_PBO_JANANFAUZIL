-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2026 at 06:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_jananfauzilhak`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(255) NOT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzi', 'SMA Negeri 1 Kebumen', 85.50, 250000.00, 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(2, 'Siti Aminah', 'MA Negeri 2 Cilacap', 79.25, 250000.00, 'Reguler', 'Sistem Informasi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(3, 'Rian Hidayat', 'SMA Negeri 1 Purwokerto', 88.00, 250000.00, 'Reguler', 'Teknik Elektro', 'Kampus 2', NULL, NULL, NULL, NULL),
(4, 'Dewi Lestari', 'SMK Negeri 1 Gombong', 82.10, 250000.00, 'Reguler', 'Akuntansi', 'Kampus Utama', NULL, NULL, NULL, NULL),
(5, 'Budi Santoso', 'SMA Swasta Muhammadiyah', 76.80, 250000.00, 'Reguler', 'Teknik Mesin', 'Kampus 2', NULL, NULL, NULL, NULL),
(6, 'Fitriani Ayu', 'SMA Negeri 3 Cilacap', 91.15, 250000.00, 'Reguler', 'Teknik Informatika', 'Kampus Utama', NULL, NULL, NULL, NULL),
(7, 'Dimas Saputra', 'SMK Tekkom Kebumen', 80.45, 250000.00, 'Reguler', 'Sistem Informasi', 'Kampus 2', NULL, NULL, NULL, NULL),
(8, 'Eko Prasetyo', 'SMA Negeri 1 Cilacap', 92.00, 150000.00, 'Prestasi', NULL, NULL, 'Juara 1 Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Anisa Rahma', 'SMA Negeri 2 Kebumen', 89.50, 150000.00, 'Prestasi', NULL, NULL, 'Juara 2 Karya Ilmiah Remaja', 'Provinsi', NULL, NULL),
(10, 'Gilang Perkasa', 'SMK Negeri 2 Banyumas', 84.00, 150000.00, 'Prestasi', NULL, NULL, 'Juara 1 Lomba Kompetensi Siswa IT', 'Nasional', NULL, NULL),
(11, 'Putri Indah', 'SMA Negeri 1 Karanganyar', 87.30, 150000.00, 'Prestasi', NULL, NULL, 'Juara 3 Pencak Silat', 'Nasional', NULL, NULL),
(12, 'Bagus Wijaya', 'MA Negeri 1 Kebumen', 90.00, 150000.00, 'Prestasi', NULL, NULL, 'Hafidz Quran 30 Juz', 'Kabupaten', NULL, NULL),
(13, 'Riska Amelia', 'SMA Negeri 4 Purworejo', 86.85, 150000.00, 'Prestasi', NULL, NULL, 'Juara 1 Desain Grafis', 'Provinsi', NULL, NULL),
(14, 'Fajar Nugroho', 'SMK Negeri 1 Purbalingga', 85.10, 150000.00, 'Prestasi', NULL, NULL, 'Juara 2 Basket Popda', 'Karesidenan', NULL, NULL),
(15, 'Hendra Wijaya', 'SMA Taruna Nusantara', 86.50, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-001', 'Kementerian Perhubungan'),
(16, 'Mega Utami', 'SMA Negeri 1 Banyumas', 83.20, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-002', 'Badan Siber dan Sandi Negara'),
(17, 'Aditya Pratama', 'SMK Negeri 1 Cilacap', 89.00, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-003', 'Pemerintah Daerah Cilacap'),
(18, 'Yulia Citra', 'SMA Negeri 1 Prembun', 81.75, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-004', 'Kementerian Komunikasi dan Digital'),
(19, 'Rizky Ramadhan', 'SMA Negeri 5 Purwokerto', 85.40, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-005', 'Kementerian Perindustrian'),
(20, 'Nadia Safira', 'MA Swasta Kebumen', 88.10, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-006', 'Badan Meteorologi Klimatologi Geofisika'),
(21, 'Taufik Hidayat', 'SMA Negeri 2 Purbalingga', 84.60, 300000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK-DIK-2026-007', 'Kementerian Dalam Negeri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
