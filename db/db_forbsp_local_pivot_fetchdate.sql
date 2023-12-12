-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 08:32 AM
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
-- Database: `db_forbsp_local`
--

-- --------------------------------------------------------

--
-- Table structure for table `pivot_barang_datang`
--

CREATE TABLE `pivot_barang_datang` (
  `kode_cabang` varchar(10) DEFAULT '',
  `nama_cabang` varchar(30) DEFAULT '',
  `no_barang_datang` varchar(30) DEFAULT '',
  `tgl_bd` date DEFAULT '0000-00-00',
  `tgl_po` date DEFAULT '0000-00-00',
  `no_surat_jalan` varchar(30) DEFAULT '',
  `no_bpb` varchar(30) DEFAULT '',
  `no_spb` varchar(30) DEFAULT '',
  `no_do` varchar(30) DEFAULT '',
  `no_po` varchar(30) DEFAULT '',
  `tglpajak` date DEFAULT '0000-00-00',
  `nopajak` varchar(30) DEFAULT '',
  `topfkt` tinyint(4) DEFAULT 0,
  `jenis_faktur` varchar(10) DEFAULT '',
  `jenis_beli` varchar(50) DEFAULT '',
  `jenis_mac` varchar(10) DEFAULT '',
  `sub_jenis_beli` varchar(10) DEFAULT '',
  `pcpl_kode` varchar(6) DEFAULT '',
  `noitem` int(11) DEFAULT 0,
  `kode_barang` varchar(12) DEFAULT '',
  `kode_barang_bis` varchar(20) DEFAULT '',
  `nama_barang` varchar(50) DEFAULT '',
  `nobatch` varchar(20) DEFAULT '',
  `qty_transaksi` double(18,2) DEFAULT 0.00,
  `satuan_transaksi` varchar(15) DEFAULT '',
  `harga_transaksi` double(18,2) DEFAULT 0.00,
  `qty_beli_terkecil` double(18,2) DEFAULT 0.00,
  `harga_beli_terkecil` double(18,2) DEFAULT 0.00,
  `satuan_beli_terkecil` varchar(15) DEFAULT '',
  `ssl_pr` int(11) DEFAULT 0,
  `qty_order_terkecil` double(18,2) DEFAULT 0.00,
  `satuan_order_terkecil` varchar(50) DEFAULT '',
  `harga_order_terkecil` double(18,2) DEFAULT 0.00,
  `qty_besar` double(9,2) DEFAULT 0.00,
  `harga_beli_terbesar` double(9,2) DEFAULT 0.00,
  `satuan_beli_terbesar` varchar(10) DEFAULT '',
  `tgl_ed` date DEFAULT '0000-00-00',
  `bonus` varchar(10) DEFAULT '',
  `gross` double(18,2) DEFAULT 0.00,
  `netto` tinyint(4) DEFAULT 0,
  `kode_divisi_produk` varchar(10) DEFAULT '',
  `kode_principal` varchar(10) DEFAULT '',
  `status_terkirim` varchar(15) DEFAULT '',
  `status_barang` varchar(10) DEFAULT '',
  `flagdepo` varchar(30) DEFAULT '',
  `kurir` varchar(100) DEFAULT '',
  `status_quo_barang` varchar(20) DEFAULT '',
  `catatan` text DEFAULT NULL,
  `dosub` varchar(10) DEFAULT '',
  `bulando` varchar(5) DEFAULT '',
  `cbgitem` varchar(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_daily_stock`
--

CREATE TABLE `pivot_daily_stock` (
  `kode_cabang` varchar(10) NOT NULL DEFAULT '',
  `nama_cabang` varchar(50) NOT NULL DEFAULT '',
  `kode_barang_clipper` varchar(30) NOT NULL DEFAULT '',
  `kode_barang_bis` varchar(30) NOT NULL DEFAULT '',
  `kode_barang_principal` varchar(50) NOT NULL DEFAULT '',
  `group_barang` varchar(50) DEFAULT '',
  `subgroup_barang` varchar(50) DEFAULT '',
  `sub_prc` varchar(50) DEFAULT '',
  `category` varchar(50) DEFAULT '',
  `unb_brand` varchar(50) DEFAULT '',
  `type_barang` varchar(50) DEFAULT '',
  `nama_barang` varchar(200) NOT NULL DEFAULT '',
  `pcpl_kode_clipper` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `kode_principal` varchar(5) NOT NULL DEFAULT '',
  `Kode_Divisi_Produk` varchar(5) NOT NULL DEFAULT '',
  `klasifikasi_jual` varchar(5) NOT NULL DEFAULT '',
  `tgl_discontinue_pembelian` date NOT NULL DEFAULT '0000-00-00',
  `jenis_barang` varchar(20) NOT NULL DEFAULT '',
  `harga_jual_current` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `harga_terkecil` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `harga_terbesar` decimal(16,4) NOT NULL DEFAULT 0.0000,
  `qty1` varchar(1) NOT NULL DEFAULT '1',
  `satuan1` varchar(20) NOT NULL DEFAULT '',
  `qty2` varchar(5) NOT NULL DEFAULT '1',
  `satuan2` varchar(20) NOT NULL DEFAULT '',
  `qty3` varchar(5) NOT NULL DEFAULT '1',
  `satuan3` varchar(20) NOT NULL DEFAULT '',
  `qty4` varchar(5) NOT NULL DEFAULT '1',
  `satuan4` varchar(20) NOT NULL DEFAULT '',
  `avail_awal` decimal(16,0) NOT NULL DEFAULT 0,
  `avail_rp_awal` decimal(16,3) NOT NULL DEFAULT 0.000,
  `avail_q1_awal` int(6) NOT NULL DEFAULT 0,
  `avail_q2_awal` int(6) NOT NULL DEFAULT 0,
  `avail_q3_awal` int(6) NOT NULL DEFAULT 0,
  `avail_q4_awal` int(6) NOT NULL DEFAULT 0,
  `bs_awal` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_awal` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_awal` int(6) NOT NULL DEFAULT 0,
  `bs_q2_awal` int(6) NOT NULL DEFAULT 0,
  `bs_q3_awal` int(6) NOT NULL DEFAULT 0,
  `bs_q4_awal` int(6) NOT NULL DEFAULT 0,
  `dps_awal` decimal(16,0) NOT NULL DEFAULT 0,
  `dps_rp_awal` decimal(16,3) NOT NULL DEFAULT 0.000,
  `dps_q1_awal` int(6) NOT NULL DEFAULT 0,
  `dps_q2_awal` int(6) NOT NULL DEFAULT 0,
  `dps_q3_awal` int(6) NOT NULL DEFAULT 0,
  `dps_q4_awal` int(6) NOT NULL DEFAULT 0,
  `depo_awal` decimal(16,0) NOT NULL DEFAULT 0,
  `depo_rp_awal` decimal(16,3) NOT NULL DEFAULT 0.000,
  `depo_q1_awal` int(6) NOT NULL DEFAULT 0,
  `depo_q2_awal` int(6) NOT NULL DEFAULT 0,
  `depo_q3_awal` int(6) NOT NULL DEFAULT 0,
  `depo_q4_awal` int(6) NOT NULL DEFAULT 0,
  `bs_In` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_In_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_In_q1` varchar(40) NOT NULL DEFAULT '',
  `bs_In_q2` int(6) NOT NULL DEFAULT 0,
  `bs_In_q3` int(6) NOT NULL DEFAULT 0,
  `bs_In_q4` int(6) NOT NULL DEFAULT 0,
  `bs_out` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_Out_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_Out_q1` int(6) NOT NULL DEFAULT 0,
  `bs_Out_q2` int(6) NOT NULL DEFAULT 0,
  `bs_Out_q3` int(6) NOT NULL DEFAULT 0,
  `bs_Out_q4` int(6) NOT NULL DEFAULT 0,
  `bs_adj` int(1) NOT NULL DEFAULT 0,
  `bs_adj_rp` int(1) NOT NULL DEFAULT 0,
  `bs_adj_q1` int(1) NOT NULL DEFAULT 0,
  `bs_adj_q2` int(1) NOT NULL DEFAULT 0,
  `bs_adj_q3` int(1) NOT NULL DEFAULT 0,
  `bs_adj_q4` int(1) NOT NULL DEFAULT 0,
  `dps_in` decimal(16,0) NOT NULL DEFAULT 0,
  `dps_In_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `dps_In_q1` int(6) NOT NULL DEFAULT 0,
  `dps_In_q2` int(6) NOT NULL DEFAULT 0,
  `dps_In_q3` int(6) NOT NULL DEFAULT 0,
  `dps_In_q4` int(6) NOT NULL DEFAULT 0,
  `dps_Out` decimal(16,0) NOT NULL DEFAULT 0,
  `dps_Out_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `dps_Out_q1` int(6) NOT NULL DEFAULT 0,
  `dps_Out_q2` int(6) NOT NULL DEFAULT 0,
  `dps_Out_q3` int(6) NOT NULL DEFAULT 0,
  `dps_Out_q4` int(6) NOT NULL DEFAULT 0,
  `dps_rtr` decimal(16,0) NOT NULL DEFAULT 0,
  `dps_rtr_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `dps_rtr_q1` int(6) NOT NULL DEFAULT 0,
  `dps_rtr_q2` int(6) NOT NULL DEFAULT 0,
  `dps_rtr_q3` int(6) NOT NULL DEFAULT 0,
  `dps_rtr_q4` int(6) NOT NULL DEFAULT 0,
  `depo_In` decimal(16,0) NOT NULL DEFAULT 0,
  `depo_In_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `depo_In_q1` int(6) NOT NULL DEFAULT 0,
  `depo_In_q2` int(6) NOT NULL DEFAULT 0,
  `depo_In_q3` int(6) NOT NULL DEFAULT 0,
  `depo_In_q4` int(6) NOT NULL DEFAULT 0,
  `depo_Out` decimal(16,0) NOT NULL DEFAULT 0,
  `depo_Out_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `depo_Out_q1` int(6) NOT NULL DEFAULT 0,
  `depo_Out_q2` int(6) NOT NULL DEFAULT 0,
  `depo_Out_q3` int(6) NOT NULL DEFAULT 0,
  `depo_Out_q4` int(6) NOT NULL DEFAULT 0,
  `depo_rtr` int(1) NOT NULL DEFAULT 0,
  `depo_rtr_rp` int(1) NOT NULL DEFAULT 0,
  `depo_rtr_q1` int(1) NOT NULL DEFAULT 0,
  `depo_rtr_q2` int(1) NOT NULL DEFAULT 0,
  `depo_rtr_q3` int(1) NOT NULL DEFAULT 0,
  `depo_rtr_q4` int(1) NOT NULL DEFAULT 0,
  `beli` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_beli` decimal(16,3) NOT NULL DEFAULT 0.000,
  `beli_q1` int(6) NOT NULL DEFAULT 0,
  `beli_q2` int(6) NOT NULL DEFAULT 0,
  `beli_q3` int(6) NOT NULL DEFAULT 0,
  `beli_q4` int(6) NOT NULL DEFAULT 0,
  `rtr_beli` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_rtr_beli` decimal(16,3) NOT NULL DEFAULT 0.000,
  `rtr_beli_q1` int(6) NOT NULL DEFAULT 0,
  `rtr_beli_q2` int(6) NOT NULL DEFAULT 0,
  `rtr_beli_q3` int(6) NOT NULL DEFAULT 0,
  `rtr_beli_q4` int(6) NOT NULL DEFAULT 0,
  `jual` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_jual` decimal(16,3) NOT NULL DEFAULT 0.000,
  `jual_q1` int(6) NOT NULL DEFAULT 0,
  `jual_q2` int(6) NOT NULL DEFAULT 0,
  `jual_q3` int(6) NOT NULL DEFAULT 0,
  `jual_q4` int(6) NOT NULL DEFAULT 0,
  `rtr_jual` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_rtr_jual` decimal(16,3) NOT NULL DEFAULT 0.000,
  `rtr_jual_q1` int(6) NOT NULL DEFAULT 0,
  `rtr_jual_q2` int(6) NOT NULL DEFAULT 0,
  `rtr_jual_q3` int(6) NOT NULL DEFAULT 0,
  `rtr_jual_q4` int(6) NOT NULL DEFAULT 0,
  `mac_masuk` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_mac_masuk` decimal(16,3) NOT NULL DEFAULT 0.000,
  `macIn_q1` int(6) NOT NULL DEFAULT 0,
  `macIn_q2` int(6) NOT NULL DEFAULT 0,
  `macIn_q3` int(6) NOT NULL DEFAULT 0,
  `macIn_q4` int(6) NOT NULL DEFAULT 0,
  `mac_keluar` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_mac_keluar` decimal(16,3) NOT NULL DEFAULT 0.000,
  `macOut_q1` int(6) NOT NULL DEFAULT 0,
  `macOut_q2` int(6) NOT NULL DEFAULT 0,
  `macOut_q3` int(6) NOT NULL DEFAULT 0,
  `macOut_q4` int(6) NOT NULL DEFAULT 0,
  `adjust` decimal(16,0) NOT NULL DEFAULT 0,
  `rp_adjust` decimal(16,3) NOT NULL DEFAULT 0.000,
  `adj_q1` int(6) NOT NULL DEFAULT 0,
  `adj_q2` int(6) NOT NULL DEFAULT 0,
  `adj_q3` int(6) NOT NULL DEFAULT 0,
  `adj_q4` int(6) NOT NULL DEFAULT 0,
  `avail_akhir` decimal(16,0) NOT NULL DEFAULT 0,
  `avail_rp_akhir` decimal(16,3) NOT NULL DEFAULT 0.000,
  `avail_q1_akhir` int(6) NOT NULL DEFAULT 0,
  `avail_q2_akhir` int(6) NOT NULL DEFAULT 0,
  `avail_q3_akhir` int(6) NOT NULL DEFAULT 0,
  `avail_q4_akhir` int(6) NOT NULL DEFAULT 0,
  `bs_akhir` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_akhir` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_akhir` int(6) NOT NULL DEFAULT 0,
  `bs_q2_akhir` int(6) NOT NULL DEFAULT 0,
  `bs_q3_akhir` int(6) NOT NULL DEFAULT 0,
  `bs_q4_akhir` int(6) NOT NULL DEFAULT 0,
  `dps_akhir` decimal(16,0) NOT NULL DEFAULT 0,
  `dps_rp_akhir` decimal(16,3) NOT NULL DEFAULT 0.000,
  `dps_q1_akhir` int(6) NOT NULL DEFAULT 0,
  `dps_q2_akhir` int(6) NOT NULL DEFAULT 0,
  `dps_q3_akhir` int(6) NOT NULL DEFAULT 0,
  `dps_q4_akhir` int(6) NOT NULL DEFAULT 0,
  `depo_akhir` decimal(16,0) NOT NULL DEFAULT 0,
  `depo_rp_akhir` decimal(16,3) NOT NULL DEFAULT 0.000,
  `depo_q1_akhir` int(6) NOT NULL DEFAULT 0,
  `depo_q2_akhir` int(6) NOT NULL DEFAULT 0,
  `depo_q3_akhir` int(6) NOT NULL DEFAULT 0,
  `depo_q4_akhir` int(6) NOT NULL DEFAULT 0,
  `ag_akhir` decimal(16,0) NOT NULL DEFAULT 0,
  `ag_rp_akhir` decimal(16,3) NOT NULL DEFAULT 0.000,
  `ag_q1_akhir` int(6) NOT NULL DEFAULT 0,
  `ag_q2_akhir` int(6) NOT NULL DEFAULT 0,
  `ag_q3_akhir` int(6) NOT NULL DEFAULT 0,
  `ag_q4_akhir` int(6) NOT NULL DEFAULT 0,
  `no_batch` varchar(20) NOT NULL DEFAULT '',
  `tgl_expired` date NOT NULL DEFAULT '0000-00-00',
  `bs_akhir_reject` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_akhir_reject` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_akhir_reject` int(6) NOT NULL DEFAULT 0,
  `bs_q2_akhir_reject` int(6) NOT NULL DEFAULT 0,
  `bs_q3_akhir_reject` int(6) NOT NULL DEFAULT 0,
  `bs_q4_akhir_reject` int(6) NOT NULL DEFAULT 0,
  `bs_akhir_defect` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_akhir_defect` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_akhir_defect` int(6) NOT NULL DEFAULT 0,
  `bs_q2_akhir_defect` int(6) NOT NULL DEFAULT 0,
  `bs_q3_akhir_defect` int(6) NOT NULL DEFAULT 0,
  `bs_q4_akhir_defect` int(6) NOT NULL DEFAULT 0,
  `bs_akhir_pending` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_akhir_pending` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_akhir_pending` int(6) NOT NULL DEFAULT 0,
  `bs_q2_akhir_pending` int(6) NOT NULL DEFAULT 0,
  `bs_q3_akhir_pending` int(6) NOT NULL DEFAULT 0,
  `bs_q4_akhir_pending` int(6) NOT NULL DEFAULT 0,
  `bs_akhir_hold` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_rp_akhir_hold` decimal(16,3) NOT NULL DEFAULT 0.000,
  `bs_q1_akhir_hold` int(6) NOT NULL DEFAULT 0,
  `bs_q2_akhir_hold` int(6) NOT NULL DEFAULT 0,
  `bs_q3_akhir_hold` int(6) NOT NULL DEFAULT 0,
  `bs_q4_akhir_hold` int(6) NOT NULL DEFAULT 0,
  `keluar_tender` decimal(16,0) NOT NULL DEFAULT 0,
  `keluar_tender_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `keluar_tender_q1` int(6) NOT NULL DEFAULT 0,
  `keluar_tender_q2` int(6) NOT NULL DEFAULT 0,
  `keluar_tender_q3` int(6) NOT NULL DEFAULT 0,
  `keluar_tender_q4` int(6) NOT NULL DEFAULT 0,
  `keluar_hc` decimal(16,3) NOT NULL DEFAULT 0.000,
  `keluar_hc_rp` decimal(16,3) NOT NULL DEFAULT 0.000,
  `keluar_hc_q1` int(6) NOT NULL DEFAULT 0,
  `keluar_hc_q2` int(6) NOT NULL DEFAULT 0,
  `keluar_hc_q3` int(6) NOT NULL DEFAULT 0,
  `keluar_hc_q4` int(6) NOT NULL DEFAULT 0,
  `bs_current_reject` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_current_defect` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_current_pending` decimal(16,0) NOT NULL DEFAULT 0,
  `bs_current_hold` decimal(16,0) NOT NULL DEFAULT 0,
  `tgl_stock` date NOT NULL DEFAULT '0000-00-00',
  `sslx` decimal(16,0) NOT NULL DEFAULT 0,
  `rev_ssl` decimal(16,0) NOT NULL DEFAULT 0,
  `sslx_kecil` decimal(16,0) NOT NULL DEFAULT 0,
  `rev_ssl_kecil` decimal(16,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_konsolidasi`
--

CREATE TABLE `pivot_konsolidasi` (
  `kode_cabang` varchar(3) NOT NULL DEFAULT '',
  `kode_gudang` varchar(15) DEFAULT '',
  `kode_barang` varchar(20) NOT NULL DEFAULT '',
  `satuan_purchaselvl` varchar(15) DEFAULT '',
  `satuan_Yjual_kecil` varchar(15) DEFAULT '',
  `satuan_sp_terkecil` varchar(15) DEFAULT '',
  `satuan_faktur_terkecil` varchar(15) DEFAULT '',
  `satuan_sp` varchar(15) NOT NULL DEFAULT '',
  `satuan_sales` varchar(15) DEFAULT '',
  `flag_barang` varchar(15) DEFAULT '',
  `sp_kode_jenis_jual` varchar(10) DEFAULT '',
  `sp_top` smallint(5) DEFAULT 0,
  `sp_total_harga` decimal(16,3) DEFAULT 0.000,
  `sp_ppn` decimal(6,3) DEFAULT 0.000,
  `sp_diskon` decimal(16,3) DEFAULT 0.000,
  `sp_potongan` decimal(16,3) DEFAULT 0.000,
  `sp_banded` varchar(1) DEFAULT '',
  `cekin_time` varchar(15) DEFAULT '',
  `cekout_time` varchar(15) DEFAULT '',
  `no_referensi_order` varchar(30) DEFAULT '',
  `tgl_referensi_order` date DEFAULT '1899-12-30',
  `podate` date DEFAULT '1899-12-30',
  `ponumber` varchar(30) NOT NULL DEFAULT '',
  `tglpomanual` date DEFAULT '1899-12-30',
  `pomtc` varchar(30) DEFAULT '',
  `tgledsp` date DEFAULT '1899-12-30',
  `unitprice` decimal(16,3) DEFAULT 0.000,
  `qtyorder` decimal(10,3) NOT NULL DEFAULT 0.000,
  `qtyterpenuhi` decimal(10,3) DEFAULT 0.000,
  `remaks` varchar(100) DEFAULT '',
  `histori_remaks` varchar(100) DEFAULT '',
  `kode_salesman` varchar(20) DEFAULT '',
  `diskonsp1` decimal(6,3) NOT NULL DEFAULT 0.000,
  `diskonsp2` decimal(6,3) NOT NULL DEFAULT 0.000,
  `flagsp` varchar(30) DEFAULT '',
  `flagsales` varchar(30) DEFAULT '',
  `via` varchar(20) DEFAULT '',
  `status_sp` varchar(20) DEFAULT '',
  `trak_activity` varchar(30) DEFAULT '',
  `no_batch` varchar(15) NOT NULL DEFAULT '',
  `kadaluarsa` date DEFAULT '1899-12-30',
  `kode_pelanggan` varchar(15) DEFAULT '',
  `no_faktur` varchar(30) NOT NULL DEFAULT '',
  `tahun` int(4) DEFAULT 0,
  `bulan` int(2) DEFAULT 0,
  `tgl_faktur` date DEFAULT '1899-12-30',
  `tgl_jatuh_tempo` date DEFAULT '1899-12-30',
  `tgl_permintaan_kirim` date DEFAULT '1899-12-30',
  `delivery_date` date DEFAULT '1899-12-30',
  `tgl_mulai_overdue` date DEFAULT '1899-12-30',
  `jenis_transaksi` varchar(15) DEFAULT '',
  `jenis_pembayaran` varchar(15) DEFAULT '',
  `kredit_lunak` varchar(15) DEFAULT '',
  `jenis_faktur` varchar(15) DEFAULT '',
  `no_reff_retur` varchar(30) DEFAULT '',
  `no_referensi` varchar(30) DEFAULT '',
  `tgl_referensi` date DEFAULT '1899-12-30',
  `id_program_diskon` varchar(50) DEFAULT '',
  `id_program_promosi` varchar(50) DEFAULT '',
  `id_program_voucher` varchar(50) DEFAULT '',
  `sales_depo` varchar(100) DEFAULT '',
  `ket_retur` varchar(150) DEFAULT '',
  `status_barang` varchar(15) DEFAULT '',
  `kode_promosi_principal` varchar(100) DEFAULT '',
  `qty_terbesar` decimal(16,3) DEFAULT 0.000,
  `hargasat_terbesar` decimal(16,3) DEFAULT 0.000,
  `qty_terkecil` decimal(16,3) DEFAULT 0.000,
  `hargasat_terkecil` decimal(16,3) DEFAULT 0.000,
  `qty_faktur` decimal(16,3) DEFAULT 0.000,
  `hargasat_faktur` decimal(16,3) DEFAULT 0.000,
  `qty_purchase_level` decimal(16,3) DEFAULT 0.000,
  `hargasat_purchase_level` decimal(16,3) DEFAULT 0.000,
  `qty_YJual_terkecil` decimal(10,3) DEFAULT 0.000,
  `hargasat_YJual_terkecil` decimal(16,3) DEFAULT 0.000,
  `gross` decimal(16,3) DEFAULT 0.000,
  `diskon1` decimal(6,3) DEFAULT 0.000,
  `diskon2` decimal(6,3) DEFAULT 0.000,
  `cash_diskon` decimal(16,3) DEFAULT 0.000,
  `potongan` decimal(16,3) DEFAULT 0.000,
  `netto` decimal(16,3) DEFAULT 0.000,
  `harga_mtc` decimal(16,3) DEFAULT 0.000,
  `harga_ttc` decimal(16,3) DEFAULT 0.000,
  `gross_pricelist` decimal(16,3) DEFAULT 0.000,
  `harga_penyetaraan` decimal(16,3) DEFAULT 0.000,
  `bsp_diskon_khusus` decimal(16,3) DEFAULT 0.000,
  `principal_diskon_khusus` decimal(16,3) DEFAULT 0.000,
  `principal_cn` decimal(16,3) DEFAULT 0.000,
  `bsp_cn` decimal(16,3) DEFAULT 0.000,
  `tonase` decimal(16,8) DEFAULT 0.00000000,
  `kubikasi` decimal(16,8) DEFAULT 0.00000000,
  `bsp_share` decimal(16,3) DEFAULT 0.000,
  `principal_share` decimal(16,3) DEFAULT 0.000,
  `gross_faktur` decimal(16,3) DEFAULT 0.000,
  `total_faktur` decimal(16,3) DEFAULT 0.000,
  `prc_prosen_diskon1` decimal(16,3) DEFAULT 0.000,
  `prc_value_diskon1` decimal(16,3) DEFAULT 0.000,
  `prc_prosen_diskon2` decimal(16,3) DEFAULT 0.000,
  `prc_value_diskon2` decimal(16,3) DEFAULT 0.000,
  `prc_prosen_diskon3` decimal(16,3) DEFAULT 0.000,
  `prc_value_diskon3` decimal(16,3) DEFAULT 0.000,
  `prc_prosen_diskon4` decimal(16,3) DEFAULT 0.000,
  `prc_value_diskon4` decimal(16,3) DEFAULT 0.000,
  `prc_prosen_diskon5` decimal(16,3) DEFAULT 0.000,
  `prc_value_diskon5` decimal(16,3) DEFAULT 0.000,
  `kode_rayon_kolektor` varchar(10) DEFAULT '',
  `total_bayar` decimal(16,3) DEFAULT 0.000,
  `diskon_headerfk` decimal(16,3) DEFAULT 0.000,
  `potongan_headerfk` decimal(16,3) DEFAULT 0.000,
  `no_delivery` varchar(30) DEFAULT '',
  `tgl_delivery` date DEFAULT '1899-12-30',
  `no_faktur_pajak` varchar(50) DEFAULT '',
  `tgl_faktur_pajak` date DEFAULT '1899-12-30',
  `jml_pajak` decimal(16,3) DEFAULT 0.000,
  `kc_promosi` varchar(50) DEFAULT '',
  `topf` smallint(5) DEFAULT 0,
  `topk` smallint(5) DEFAULT 0,
  `hna` decimal(16,3) DEFAULT 0.000,
  `sub_total` decimal(16,3) DEFAULT 0.000,
  `diskon_item` decimal(16,3) DEFAULT 0.000,
  `extra` decimal(16,3) DEFAULT 0.000,
  `cash_diskon_recalculate` decimal(16,3) DEFAULT 0.000,
  `nom_ppn` decimal(16,3) DEFAULT 0.000,
  `ppn_td_std` decimal(16,3) DEFAULT 0.000,
  `ppn_td_sdrhn` decimal(16,3) DEFAULT 0.000,
  `bebas_ppn_std` decimal(16,3) DEFAULT 0.000,
  `bebas_ppn_sdrhn` decimal(16,3) DEFAULT 0.000,
  `last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_mrp_bpb`
--

CREATE TABLE `pivot_mrp_bpb` (
  `ISS_NO` varchar(50) NOT NULL DEFAULT '',
  `ISS_DATE` date NOT NULL,
  `ISS_STATUS` varchar(30) NOT NULL DEFAULT '',
  `DO_NO` varchar(50) DEFAULT NULL,
  `MO_NO` varchar(50) NOT NULL DEFAULT '',
  `MO_TYPE` varchar(30) DEFAULT NULL,
  `po_no` varchar(50) DEFAULT NULL,
  `PRODUCT_CODE` varchar(30) NOT NULL DEFAULT '',
  `PRODUCT_DESC` varchar(50) DEFAULT NULL,
  `prod_unit` varchar(20) NOT NULL,
  `prod_group` varchar(30) DEFAULT NULL,
  `LOT_NUMBER` varchar(30) DEFAULT NULL,
  `iss_qty` decimal(34,6) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `LOCATION_NO` varchar(30) DEFAULT NULL,
  `CUSTOMER_CODE` varchar(10) DEFAULT NULL,
  `CUST_NAME` varchar(100) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `actual_date` date DEFAULT NULL,
  `loading_date` date DEFAULT NULL,
  `execdate` varchar(20) DEFAULT NULL,
  `exp_no` varchar(50) DEFAULT NULL,
  `exp_status` varchar(30) DEFAULT NULL,
  `forwarder` varchar(50) DEFAULT NULL,
  `resi_number` varchar(50) DEFAULT NULL,
  `jumlah` decimal(32,0) DEFAULT NULL,
  `total_vol` decimal(42,2) DEFAULT NULL,
  `total_weight` decimal(55,2) DEFAULT NULL,
  `fetch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_mrp_mopending`
--

CREATE TABLE `pivot_mrp_mopending` (
  `MoNo` varchar(255) DEFAULT NULL,
  `MoDate` timestamp NULL DEFAULT NULL,
  `MoType` varchar(255) DEFAULT NULL,
  `MoGroup` varchar(255) DEFAULT NULL,
  `CustomerCode` varchar(255) DEFAULT NULL,
  `Customer` varchar(255) DEFAULT NULL,
  `OrderStatus` varchar(255) DEFAULT NULL,
  `ProductCode` varchar(255) DEFAULT NULL,
  `ProductDesc` varchar(255) DEFAULT NULL,
  `OrderQty` double DEFAULT NULL,
  `ShipQty` double DEFAULT NULL,
  `PendingQty` double DEFAULT NULL,
  `SoNo` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `fetch_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_mrp_sla`
--

CREATE TABLE `pivot_mrp_sla` (
  `productOwner` varchar(30) NOT NULL,
  `ProductionUnit` varchar(30) NOT NULL,
  `ProductCode` varchar(30) NOT NULL DEFAULT '',
  `ProductName` varchar(80) NOT NULL DEFAULT '',
  `UOMCodeDefault` varchar(30) NOT NULL DEFAULT '',
  `ProductCategory` varchar(30) NOT NULL DEFAULT '',
  `MonthlyForecastQuantity` decimal(18,2) NOT NULL,
  `MORequest` decimal(62,6) NOT NULL,
  `MODelivery` decimal(62,6) NOT NULL,
  `MOPendingQuantity` decimal(63,6) NOT NULL,
  `WIPBalanceQty` decimal(65,6) NOT NULL,
  `QuarantinedBalanceQuantity` decimal(63,6) NOT NULL,
  `QuarantinedHoldBalanceQuantity` decimal(63,6) NOT NULL,
  `QuarantinedLastLotNo` varchar(30) NOT NULL,
  `ReleasedBalanceQuantity` decimal(64,6) NOT NULL,
  `ReleasedBalanceHoldQuantity` decimal(63,6) NOT NULL,
  `ReleasedBalanceAndHoldQuantity` decimal(65,6) NOT NULL,
  `ReleasedLastLotNo` varchar(30) NOT NULL,
  `TotalStockQuantity` decimal(65,6) NOT NULL,
  `LevelTotalValuemonths` decimal(65,10) NOT NULL,
  `ReadyStockQuantity` decimal(65,6) NOT NULL,
  `LevelReadyValuemonths` decimal(65,10) NOT NULL,
  `PlantGroup` varchar(20) NOT NULL DEFAULT '',
  `exeuid` varchar(30) NOT NULL,
  `exetime` varchar(30) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `fetch_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pivot_replacing`
--

CREATE TABLE `pivot_replacing` (
  `kode_cabang` varchar(20) NOT NULL DEFAULT '',
  `nama_cabang` varchar(150) NOT NULL DEFAULT '',
  `kode_barang` varchar(20) NOT NULL DEFAULT '',
  `nama_barang` varchar(150) NOT NULL DEFAULT '',
  `kode_divisi_produk` varchar(10) NOT NULL DEFAULT '',
  `kode_principal` varchar(10) NOT NULL DEFAULT '',
  `kode_barang_principal` varchar(20) NOT NULL DEFAULT '',
  `master_keterbesar` int(5) NOT NULL DEFAULT 0,
  `konversi_terkecil` int(5) NOT NULL DEFAULT 0,
  `ssl_cbg_levelasal` decimal(18,0) NOT NULL DEFAULT 0,
  `ssl_cbg_levelkecil` decimal(18,0) NOT NULL DEFAULT 0,
  `harga_beli_terkecil` decimal(18,3) NOT NULL DEFAULT 0.000,
  `stock_avail` decimal(18,0) NOT NULL DEFAULT 0,
  `stock_avail_rp` decimal(18,0) NOT NULL DEFAULT 0,
  `pending` decimal(18,3) NOT NULL DEFAULT 0.000,
  `pending_rp` decimal(18,3) NOT NULL DEFAULT 0.000,
  `intransit` decimal(18,3) NOT NULL DEFAULT 0.000,
  `intransit_rp` decimal(18,3) NOT NULL DEFAULT 0.000,
  `orderr` decimal(18,3) NOT NULL DEFAULT 0.000,
  `order_rp` decimal(18,3) NOT NULL DEFAULT 0.000,
  `ratio` decimal(18,2) NOT NULL DEFAULT 0.00,
  `sales` decimal(18,3) NOT NULL DEFAULT 0.000,
  `sales_rp` decimal(18,3) NOT NULL DEFAULT 0.000,
  `faktor_pengali` decimal(18,3) NOT NULL DEFAULT 0.000,
  `ssl_fix` decimal(18,3) NOT NULL DEFAULT 0.000,
  `ket_divisi` varchar(20) NOT NULL DEFAULT '',
  `flag_ratio` varchar(20) NOT NULL DEFAULT '',
  `tgl_berlaku_ssl` varchar(20) NOT NULL DEFAULT '',
  `stock_good` decimal(18,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pivot_replacing`
--

INSERT INTO `pivot_replacing` (`kode_cabang`, `nama_cabang`, `kode_barang`, `nama_barang`, `kode_divisi_produk`, `kode_principal`, `kode_barang_principal`, `master_keterbesar`, `konversi_terkecil`, `ssl_cbg_levelasal`, `ssl_cbg_levelkecil`, `harga_beli_terkecil`, `stock_avail`, `stock_avail_rp`, `pending`, `pending_rp`, `intransit`, `intransit_rp`, `orderr`, `order_rp`, `ratio`, `sales`, `sales_rp`, `faktor_pengali`, `ssl_fix`, `ket_divisi`, `flag_ratio`, `tgl_berlaku_ssl`, `stock_good`) VALUES
('BLG', 'BANDUNG-LG', 'BDF-COM-11', 'NIVEA EXTRA BRIGHT C&E VIT LOT 180 24\'S', 'BDF', 'BDF', '48332-00165-01', 1, 24, 0, 0, 998880.000, 0, 0, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.00, 0.000, 0.000, 1.000, 0.000, 'CON', 'BLANK', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pivot_barang_datang`
--
ALTER TABLE `pivot_barang_datang`
  ADD KEY `idxno_barang_datang` (`no_barang_datang`),
  ADD KEY `idxno_po` (`no_po`),
  ADD KEY `idx_po_item` (`no_po`,`kode_barang_bis`);

--
-- Indexes for table `pivot_daily_stock`
--
ALTER TABLE `pivot_daily_stock`
  ADD PRIMARY KEY (`kode_barang_bis`,`no_batch`);

--
-- Indexes for table `pivot_konsolidasi`
--
ALTER TABLE `pivot_konsolidasi`
  ADD PRIMARY KEY (`kode_cabang`,`ponumber`,`no_faktur`,`kode_barang`,`qtyorder`,`satuan_sp`,`diskonsp1`,`diskonsp2`,`no_batch`),
  ADD KEY `idx_pelanggan` (`kode_cabang`,`kode_pelanggan`),
  ADD KEY `idx_salesman` (`kode_cabang`,`kode_salesman`),
  ADD KEY `idx_ponumber` (`ponumber`),
  ADD KEY `idx_no_faktur` (`no_faktur`),
  ADD KEY `idx_item` (`kode_barang`),
  ADD KEY `idx_flagsales` (`flagsales`),
  ADD KEY `idx_flag` (`flag_barang`);

--
-- Indexes for table `pivot_replacing`
--
ALTER TABLE `pivot_replacing`
  ADD KEY `idxPrimary_key` (`kode_cabang`,`kode_barang`),
  ADD KEY `idxDiv_produk` (`kode_divisi_produk`),
  ADD KEY `idxbarang` (`kode_barang`),
  ADD KEY `ketdivisi` (`ket_divisi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
