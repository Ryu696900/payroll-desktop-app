-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2025 pada 14.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `kode_jabatan` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id`, `tgl_absen`, `nik`, `nama_karyawan`, `kode_jabatan`, `status`, `keterangan`) VALUES
(2, '2025-12-12', '2024001', 'Budi Santoso', 'J01', 'Izin', 'Sedang Mengurus keluarga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` varchar(10) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `tunjangan_transport` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `gaji_pokok`, `tunjangan_transport`) VALUES
('J01', 'Manager', 8000000, 1000000),
('J02', 'Supervisor', 6000000, 750000),
('J03', 'Staff Admin', 4500000, 500000),
('J04', 'Staff Teknis', 4000000, 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(20) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_telp` varchar(15) DEFAULT NULL,
  `status_menikah` varchar(20) DEFAULT NULL,
  `kode_jabatan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama_karyawan`, `tgl_lahir`, `alamat`, `no_telp`, `status_menikah`, `kode_jabatan`) VALUES
('2024001', 'Budi Santoso', '1990-05-15', 'Jl. Merdeka No. 1', '08123456789', 'Menikah', 'J01'),
('2024002', 'Siti Aminah', '1995-08-20', 'Jl. Sudirman No. 45', '08567891234', 'Belum', 'J03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', '123', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_gaji`
--

CREATE TABLE `transaksi_gaji` (
  `no_slip` varchar(20) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `gaji_pokok` int(11) DEFAULT NULL,
  `tunjangan` int(11) DEFAULT NULL,
  `jam_lembur` int(11) DEFAULT NULL,
  `total_lembur` int(11) DEFAULT NULL,
  `potongan` int(11) DEFAULT NULL,
  `total_gaji` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_gaji`
--

INSERT INTO `transaksi_gaji` (`no_slip`, `tgl_transaksi`, `nik`, `gaji_pokok`, `tunjangan`, `jam_lembur`, `total_lembur`, `potongan`, `total_gaji`, `keterangan`) VALUES
('', '2024-12-01', '2024001', 8000000, 1000000, 10, 1000000, 0, 10000000, 'Gaji Bulan Ini'),
('SG-2025-12', '2024-12-01', '2024001', 8000000, 1000000, 10, 1000000, 0, 10000000, 'Gaji Bulan Ini');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `kode_jabatan` (`kode_jabatan`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `transaksi_gaji`
--
ALTER TABLE `transaksi_gaji`
  ADD PRIMARY KEY (`no_slip`),
  ADD KEY `nik` (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_gaji`
--
ALTER TABLE `transaksi_gaji`
  ADD CONSTRAINT `transaksi_gaji_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
