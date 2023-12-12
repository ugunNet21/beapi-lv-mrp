-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 01:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_forbsp_bis`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `kode_barang` char(20) NOT NULL,
  `kode_kelompok_barang` char(20) DEFAULT NULL,
  `kode_divisi_produk` char(20) DEFAULT NULL,
  `kode_barang_dinkes` char(20) DEFAULT NULL,
  `kode_register_obat` char(20) DEFAULT NULL,
  `kode_kategori_barang` char(30) DEFAULT NULL,
  `nama_barang` text DEFAULT NULL,
  `harga_jual` decimal(10,0) DEFAULT NULL,
  `harga_beli` decimal(10,0) DEFAULT NULL,
  `harga_tac` decimal(10,0) DEFAULT NULL,
  `harga_spreading` decimal(10,0) DEFAULT NULL,
  `tanggal_discontinue` datetime DEFAULT NULL,
  `std_lead_time` smallint(6) DEFAULT NULL,
  `pengali` int(11) DEFAULT NULL,
  `tempo` int(11) DEFAULT NULL,
  `purchasing_level` enum('YA','TIDAK') DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_dinkes`
--

CREATE TABLE `master_barang_dinkes` (
  `kode_barang_dinkes` char(30) NOT NULL,
  `nama_barang_dinkes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_divisi`
--

CREATE TABLE `master_barang_divisi` (
  `kode_divisi_produk` char(30) NOT NULL,
  `kode_prinsipale` char(30) DEFAULT NULL,
  `nama_divisi_produk` text DEFAULT NULL,
  `na_divisi_produk` char(5) DEFAULT NULL,
  `id_karyawan` char(20) DEFAULT NULL,
  `exclusive` enum('N','Y') DEFAULT NULL,
  `vaccine` enum('N','Y') DEFAULT NULL,
  `time_stime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_kategori`
--

CREATE TABLE `master_barang_kategori` (
  `kode_kategori_barang` char(30) NOT NULL,
  `nama_kategori` text DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_kelompok`
--

CREATE TABLE `master_barang_kelompok` (
  `kode_kelompok_barang` char(20) NOT NULL,
  `nama_kelompok_barang` text DEFAULT NULL,
  `na_kelompok_barang` char(10) DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_konversi`
--

CREATE TABLE `master_barang_konversi` (
  `kode_harga_konversi` char(30) NOT NULL,
  `kode_barang` char(30) DEFAULT NULL,
  `kategori_penjualan_barang` enum('barang_satuan','barang_cabang','barang_outlet') DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `konversi_satuan` int(11) DEFAULT NULL,
  `jual_satuan` enum('N','Y') DEFAULT NULL,
  `return_satuan` enum('N','Y') DEFAULT NULL,
  `spreading_satuan` enum('N','Y') DEFAULT NULL,
  `berat_satuan` decimal(10,0) DEFAULT NULL,
  `panjang_satuan` int(11) DEFAULT NULL,
  `lebar_satuan` int(11) DEFAULT NULL,
  `tinggi_satuan` int(11) DEFAULT NULL,
  `harga_beli` decimal(10,0) DEFAULT NULL,
  `harga_tac` decimal(10,0) DEFAULT NULL,
  `harga_jual` decimal(10,0) DEFAULT NULL,
  `harga_speading` decimal(10,0) DEFAULT NULL,
  `kode_cabang` char(1) DEFAULT NULL,
  `kode_jenis_outlet` char(1) DEFAULT NULL,
  `satuan_level` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_ppn`
--

CREATE TABLE `master_barang_ppn` (
  `kode_barang_ppn` char(20) NOT NULL,
  `kode_barang` char(20) DEFAULT NULL,
  `tanggal_mulai_berlaku` date DEFAULT NULL,
  `PPN` int(11) DEFAULT NULL,
  `bebas_ppn` enum('NO','YA') DEFAULT NULL,
  `tanggal_berakhir_ppn` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_barang_register_obat`
--

CREATE TABLE `master_barang_register_obat` (
  `kode_register_obat` char(30) NOT NULL,
  `nama_register_obat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_cabang`
--

CREATE TABLE `master_cabang` (
  `kode_cabang` char(30) NOT NULL,
  `nama_cabang` char(30) DEFAULT NULL,
  `tlp_cabang` char(15) DEFAULT NULL,
  `fax_cabang` char(30) DEFAULT NULL,
  `email_cabang` char(30) DEFAULT NULL,
  `alamat_cabang` text DEFAULT NULL,
  `npwp_cabang` char(30) DEFAULT NULL,
  `npwp_tanggal` datetime DEFAULT NULL,
  `sk_mentri` char(30) DEFAULT NULL,
  `nomor_seri_pajak` text DEFAULT NULL,
  `no_izin` text DEFAULT NULL,
  `akhir_bulan_berlaku` datetime DEFAULT NULL,
  `penangung_jawab` text DEFAULT NULL,
  `sik_aa` text DEFAULT NULL,
  `tanggal_berdiri` datetime DEFAULT NULL,
  `kode_provinsi` char(30) DEFAULT NULL,
  `nik_kepala_cabang` char(30) DEFAULT NULL,
  `no_izin_akses` text DEFAULT NULL,
  `penanggung_jawab_alkes` char(30) DEFAULT NULL,
  `sik_aa_alkes` char(30) DEFAULT NULL,
  `kagud` char(30) DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `kode_negara` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_cabang_mapping`
--

CREATE TABLE `master_cabang_mapping` (
  `kode_cabang_mapping` char(30) NOT NULL,
  `kode_prinsipal` char(30) DEFAULT NULL,
  `kode_cabang` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_daerah_kabkota`
--

CREATE TABLE `master_daerah_kabkota` (
  `kode_kabkot` char(30) NOT NULL,
  `kode_provinsi` char(30) DEFAULT NULL,
  `nama_kabupaten_kota` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_daerah_kecamatan`
--

CREATE TABLE `master_daerah_kecamatan` (
  `id_kecamatan` char(30) NOT NULL,
  `kode_kabkot` char(30) DEFAULT NULL,
  `nama_kecamatan` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_daerah_kelurahan`
--

CREATE TABLE `master_daerah_kelurahan` (
  `id_kelurahan` char(30) NOT NULL,
  `id_kecamatan` char(30) DEFAULT NULL,
  `nama_kelurahan` text DEFAULT NULL,
  `kode_pos` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_daerah_negara`
--

CREATE TABLE `master_daerah_negara` (
  `id_negara` char(30) NOT NULL,
  `nama_negara` char(30) DEFAULT NULL,
  `status_negara` enum('active','deactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_daerah_provinsi`
--

CREATE TABLE `master_daerah_provinsi` (
  `kode_provinsi` char(30) NOT NULL,
  `id_negara` char(30) DEFAULT NULL,
  `nama_provinsi` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal`
--

CREATE TABLE `master_principal` (
  `kode_principal` char(30) NOT NULL,
  `nama_principal` char(30) DEFAULT NULL,
  `cp_logistik` char(30) DEFAULT NULL,
  `cp_finance` char(30) DEFAULT NULL,
  `cp_marketing` char(30) DEFAULT NULL,
  `tlp_principal` char(20) DEFAULT NULL,
  `fax_principal` char(30) DEFAULT NULL,
  `alamat_principal` text DEFAULT NULL,
  `email_principal` char(30) DEFAULT NULL,
  `npwp_principal` char(30) DEFAULT NULL,
  `tanggal_bergabung` date DEFAULT NULL,
  `tanggal_berhenti` date DEFAULT NULL,
  `jenis_pengembalian` enum('cach','ap','barang') DEFAULT NULL,
  `percent_pembulatan` int(11) DEFAULT NULL,
  `disonfaktur` enum('N','Y') DEFAULT NULL,
  `faktur_eklusif` enum('N','Y') DEFAULT NULL,
  `eklusif_awal` date DEFAULT NULL,
  `eklusif_akhir` date DEFAULT NULL,
  `nama_bm` text DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL,
  `harga_acuan` enum('harga_beli','harga_jual','harga_tac','harga_spreading') DEFAULT NULL,
  `nomor_nppkp` text DEFAULT NULL,
  `tgl_pkp` date DEFAULT NULL,
  `mata_uang` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal_chanel`
--

CREATE TABLE `master_principal_chanel` (
  `kode_principal_chanel` char(30) NOT NULL,
  `kode_principal` char(30) DEFAULT NULL,
  `nama_chanel` char(30) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal_pajak`
--

CREATE TABLE `master_principal_pajak` (
  `kode_pajak_prinsipal` char(30) NOT NULL,
  `kode_principal` char(30) DEFAULT NULL,
  `tanggal_pengajuan` date DEFAULT NULL,
  `status_pajak` enum('pending','post','cancel') DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL,
  `time_create` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal_program_diskon`
--

CREATE TABLE `master_principal_program_diskon` (
  `kode_principal_program_diskon` char(30) NOT NULL,
  `kode_principal` char(30) DEFAULT NULL,
  `awal_berlaku` date DEFAULT NULL,
  `akhir_berlaku` date DEFAULT NULL,
  `enternity` enum('N') DEFAULT NULL,
  `status` enum('active','deactive') DEFAULT NULL,
  `id_karyawan` char(1) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal_program_diskon_barang`
--

CREATE TABLE `master_principal_program_diskon_barang` (
  `kode_principal_program_diskon` char(30) NOT NULL,
  `kode_barang` char(30) DEFAULT NULL,
  `sum_diskon1` int(11) DEFAULT NULL,
  `sum_diskon2` int(11) DEFAULT NULL,
  `sum_diskon3` int(11) DEFAULT NULL,
  `sum_diskon4` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `minimum_harga` int(11) DEFAULT NULL,
  `minimum_jumlah` int(11) DEFAULT NULL,
  `minimum_satuan` int(11) DEFAULT NULL,
  `diskon1_1` int(11) DEFAULT NULL,
  `diskon1_2` int(11) DEFAULT NULL,
  `diskon1_3` int(11) DEFAULT NULL,
  `diskon1_4` int(11) DEFAULT NULL,
  `diskon2_1` int(11) DEFAULT NULL,
  `diskon2_2` int(11) DEFAULT NULL,
  `diskon2_3` int(11) DEFAULT NULL,
  `diskon2_4` int(11) DEFAULT NULL,
  `diskon3_1` int(11) DEFAULT NULL,
  `diskon3_2` int(11) DEFAULT NULL,
  `diskon3_3` int(11) DEFAULT NULL,
  `diskon3_4` int(11) DEFAULT NULL,
  `diskon4_1` int(11) DEFAULT NULL,
  `diskon4_2` int(11) DEFAULT NULL,
  `diskon4_3` int(11) DEFAULT NULL,
  `diskon4_4` int(11) DEFAULT NULL,
  `diskon_bertambah1` int(11) DEFAULT NULL,
  `diskon_bertambah2` int(11) DEFAULT NULL,
  `diskon_bertambah3` int(11) DEFAULT NULL,
  `diskon_bertambah4` int(11) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_principal_rekening`
--

CREATE TABLE `master_principal_rekening` (
  `kode_rekening_principal` char(30) NOT NULL,
  `kode_bank` char(10) DEFAULT NULL,
  `kode_principal` char(30) DEFAULT NULL,
  `an_rekening_principal` char(30) DEFAULT NULL,
  `nama_bank` char(30) DEFAULT NULL,
  `id_karyawan` char(30) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL,
  `nomor_rekening` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_prinsipal_program_diskon_cabang`
--

CREATE TABLE `master_prinsipal_program_diskon_cabang` (
  `kode_prinsipal_program_diskon_cabang` char(30) NOT NULL,
  `kode_principal_program_diskon` char(30) DEFAULT NULL,
  `kode_cabang` char(30) DEFAULT NULL,
  `time_stamp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `master_barang_dinkes`
--
ALTER TABLE `master_barang_dinkes`
  ADD PRIMARY KEY (`kode_barang_dinkes`);

--
-- Indexes for table `master_barang_divisi`
--
ALTER TABLE `master_barang_divisi`
  ADD PRIMARY KEY (`kode_divisi_produk`);

--
-- Indexes for table `master_barang_kategori`
--
ALTER TABLE `master_barang_kategori`
  ADD PRIMARY KEY (`kode_kategori_barang`);

--
-- Indexes for table `master_barang_kelompok`
--
ALTER TABLE `master_barang_kelompok`
  ADD PRIMARY KEY (`kode_kelompok_barang`);

--
-- Indexes for table `master_barang_konversi`
--
ALTER TABLE `master_barang_konversi`
  ADD PRIMARY KEY (`kode_harga_konversi`);

--
-- Indexes for table `master_barang_ppn`
--
ALTER TABLE `master_barang_ppn`
  ADD PRIMARY KEY (`kode_barang_ppn`);

--
-- Indexes for table `master_barang_register_obat`
--
ALTER TABLE `master_barang_register_obat`
  ADD PRIMARY KEY (`kode_register_obat`);

--
-- Indexes for table `master_cabang`
--
ALTER TABLE `master_cabang`
  ADD PRIMARY KEY (`kode_cabang`);

--
-- Indexes for table `master_cabang_mapping`
--
ALTER TABLE `master_cabang_mapping`
  ADD PRIMARY KEY (`kode_cabang_mapping`);

--
-- Indexes for table `master_daerah_kabkota`
--
ALTER TABLE `master_daerah_kabkota`
  ADD PRIMARY KEY (`kode_kabkot`);

--
-- Indexes for table `master_daerah_kecamatan`
--
ALTER TABLE `master_daerah_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `master_daerah_kelurahan`
--
ALTER TABLE `master_daerah_kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `master_daerah_negara`
--
ALTER TABLE `master_daerah_negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `master_daerah_provinsi`
--
ALTER TABLE `master_daerah_provinsi`
  ADD PRIMARY KEY (`kode_provinsi`);

--
-- Indexes for table `master_principal`
--
ALTER TABLE `master_principal`
  ADD PRIMARY KEY (`kode_principal`);

--
-- Indexes for table `master_principal_chanel`
--
ALTER TABLE `master_principal_chanel`
  ADD PRIMARY KEY (`kode_principal_chanel`);

--
-- Indexes for table `master_principal_pajak`
--
ALTER TABLE `master_principal_pajak`
  ADD PRIMARY KEY (`kode_pajak_prinsipal`);

--
-- Indexes for table `master_principal_program_diskon`
--
ALTER TABLE `master_principal_program_diskon`
  ADD PRIMARY KEY (`kode_principal_program_diskon`);

--
-- Indexes for table `master_principal_program_diskon_barang`
--
ALTER TABLE `master_principal_program_diskon_barang`
  ADD PRIMARY KEY (`kode_principal_program_diskon`);

--
-- Indexes for table `master_principal_rekening`
--
ALTER TABLE `master_principal_rekening`
  ADD PRIMARY KEY (`kode_rekening_principal`);

--
-- Indexes for table `master_prinsipal_program_diskon_cabang`
--
ALTER TABLE `master_prinsipal_program_diskon_cabang`
  ADD PRIMARY KEY (`kode_prinsipal_program_diskon_cabang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
