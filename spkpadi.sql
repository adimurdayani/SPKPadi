-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2022 pada 06.11
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkpadi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`penyakit_id`, `gejala_id`) VALUES
(1, 3),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 11),
(1, 12),
(1, 22),
(1, 25),
(1, 26),
(1, 56),
(2, 3),
(2, 4),
(2, 7),
(2, 12),
(2, 24),
(2, 27),
(2, 28),
(3, 7),
(3, 9),
(3, 10),
(3, 12),
(3, 14),
(4, 1),
(4, 2),
(4, 13),
(4, 14),
(4, 18),
(4, 19),
(4, 20),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 47),
(5, 41),
(5, 46),
(5, 49),
(5, 50),
(5, 54),
(6, 1),
(6, 16),
(6, 17),
(6, 23),
(6, 33),
(6, 35),
(6, 36),
(6, 38),
(6, 41),
(6, 43),
(6, 44),
(6, 48),
(6, 51),
(6, 52),
(6, 53),
(7, 3),
(7, 6),
(7, 9),
(7, 34),
(7, 35),
(7, 36),
(7, 37),
(7, 57),
(7, 58),
(7, 60),
(7, 61),
(7, 62),
(7, 63),
(7, 64),
(8, 6),
(8, 29),
(8, 30),
(8, 41),
(8, 42),
(8, 43),
(8, 45),
(8, 47),
(8, 52),
(8, 65),
(8, 66),
(8, 67),
(8, 68),
(9, 10),
(9, 15),
(9, 21),
(9, 22),
(9, 26),
(9, 31),
(9, 32),
(9, 72),
(9, 73),
(10, 47),
(10, 48),
(10, 54),
(10, 55),
(10, 69),
(10, 70),
(10, 71);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `persentase` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bagian_tanaman` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kode`, `bagian_tanaman`, `name`, `created_at`, `updated_at`) VALUES
(1, 'G01', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna kecoklatan atau necrotic.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'G02', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna coklat kemerahan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'G03', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna kuning.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'G04', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna kuning-orange.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'G05', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna hijau pucat atau hijau kelabu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'G06', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna kering (mengering).', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'G07', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna hijau mudah kekuningan atau klorotik.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'G08', 'Daun', 'Helaian daun / tepi daun / ujung daun kebasahan / water soaked.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'G09', 'Daun', 'Helaian daun / tepi daun / ujung daun berwarna kecoklatan seperti terbakar.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'G10', 'Daun', 'Helaian daun / tepi daun / ujung daun terdapat garis-garis putih transparan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'G11', 'Daun', 'Bercak / luka pada daun berwarna abu-abu (kekuningan) (hawar).', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'G12', 'Daun', 'Bercak / luka pada daun berwarna coklat.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'G13', 'Daun', 'Bercak / luka pada daun berwarna coklat coklat kehitaman dengan pusat bercak berwarna putih / abu-abu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'G14', 'Daun', 'Bercak / luka pada daun berwarna coklat gelap / coklat kemerahan dengan pusat bercak berwarna putih/abu-abu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'G15', 'Daun', 'Bercak/luka pada daun berwarna putih-abu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'G16', 'Selumbung Daun', 'Bercak/luka pada selubung daun berwarna coklat gelap/coklat kemerahan dengan pusat bercak berwarna?abu-abu/abu-abu?kecoklatan. ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'G17', 'Pelepah Daun', 'Bercak/luka pada pelepah daun bagian bawah berwarna abu-abu kehijauan dan pinggirnya berwarna coklat atau coklat kemerahan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'G18', 'Daun', 'Bercak/luka pada daun berbentuk belah ketupat.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'G19', 'Daun', 'Bercak/luka pada daun berbentuk elips.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'G20', 'Daun', 'Bercak/luka pada daun berbentuk oval.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'G21', 'Daun', 'Bercak/luka pada daun berbentuk tidak beraturan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'G22', 'Daun', 'Bercak/luka pada daun berbentuk stripe atau memanjang.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'G23', 'SelumbungDaun', 'Bercak/luka pada selubung daun berbentuk tidak beraturan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'G24', 'Daun', 'Terdapat garis klorosis pada intervein (tulang daun).', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'G25', 'Daun', 'Daun terkulai.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'G26', 'Daun', 'Daun menggulung/terlipat.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'G27', 'Daun', 'Daun seperti kipas (gejala kipas).', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'G28', 'Daun', 'Daun memendek.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'G29', 'Daun', 'Daun pucuk berwarna coklat dan mudah dicabut.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'G30', 'Daun', 'Daun pucuk/titik tumbuh seperti dimakan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'G31', 'Daun', 'Ujung daun tampak diikat ke bagian basal daun.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'G32', 'Daun', 'Terdapat bekas korokan atau jaringan daun yang rusak.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'G33', 'Batang?/       Selubung', 'Bercak/luka pada batang/selubung berwarna kecoklatan kemerahan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'G34', 'Batang?/       Selubung', 'Bercak/luka pada batang/selubung berwarna kehitam-hitaman.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'G35', 'Batang?', 'Selubung batang busuk.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'G36', 'Batang', 'Batang busuk.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'G37', 'Batang', 'Batang kering.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'G38', 'Daun', 'Terdapat tepung jamur (miselium) berwarna keputihan pada bagian dalam selubung batang.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'G39', 'Malai', 'Bercak kehitaman pada sekat tangkai/buku malai.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'G40', 'Malai', 'Bercak coklat kehitaman/coklat keabu-abuan pada pangkal leher malai.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'G41', 'Malai', 'Malai tidak berisi/hampa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'G42', 'Malai', 'Malai mati dan berwarna abu-abu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'G43', 'Malai', 'Malai berubah warna.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'G44', 'Malai', 'Malai busuk.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'G45', 'Malai', 'Malai mudah dicabut.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'G46', 'Malai', 'Malai berubah menjadi spora.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'G47', 'Bulir', 'Gabah hampa.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'G48', 'Bulir', 'Bulir terdapat bercak berwarna coklat kehitaman.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'G49', 'Bulir', 'Bulir terisi spora cendawan yang berwarna kuning sampai orange.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'G50', 'Bulir', 'Bulir tertutupi spora cendawan berwarna hijau sampai hitam kehijauan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'G51', 'Bulir', 'Bulir berwarna coklat tua.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'G52', 'Buliri', 'Bulir terisi sebagian.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'G53', 'Bulir', 'Bulir busuk.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'G54', 'Bulir', 'Bulir padi rusak.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'G55', 'Bulir', 'Beras berubah warna.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'G56', 'Daun', 'Terdapat bakteri ooze (eksudat bakteri) atau milky substance berwarna kuning pada daun.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'G57', 'Lainnya', 'Tanaman terlihat layu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'G58', 'Lainnya', 'Tanaman terlihat berwarna kuning.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'G59', 'Lainnya', 'Tanaman terlihat kerdil.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'G60', 'Lainnya', 'Tanaman terlihat mongering.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'G61', 'Lainnya', 'Tanaman mati.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'G62', 'Lainnya', 'Ditemukannya telur berbentuk seperti pisang berwarna putih.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'G63', 'Lainnya', 'Ditemukannya nimfa berwarna putih atau coklat.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'G64', 'Lainnya', 'Ditemukannya imago berwarna coklat muda atau coklat tua dengan warna sayap berbintik-bintik pada bagian pertemuan sayap depan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'G65', 'Lainnya', 'Ditemukannya telur yang ditutupi rambut halus berwarna coklat kekuningan.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'G66', 'Lainnya', 'Ditemukannya larva berwarna putih kekuningan sampai kehijauan dalam batang.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'G67', 'Lainnya', 'Ditemukannya pupa berwarna coklat tua dalam pangkal tunas dekat permukaan tanah.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'G68', 'Lainnya', 'Ditemukannya?imago/ngengat?berwarna?kuning/ putih/bergaris/merah jambu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'G69', 'Lainnya', 'Ditemukannya telur serangga berbentuk pipih lonjong berwarna coklat tua atau agak hitam disepanjang pelepah daun.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'G70', 'Lainnya', 'Ditemukannya nimfa dengan bentuk ramping berwarna hijau terang - coklat abu-abu.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'G71', 'Lainnya', 'Ditemukannya imago dengan bentuk ramping berwarna coklat.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'G72', 'Lainnya', 'Terdapat larva dengan kepala berwarna coklat dalam lipatan daun.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'G73', 'Lainnya', 'Ditemukan ngengat berwarna kuning coklat/coklat muda dengan tiga buah pita hitam dengan garis.', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_01_195049_create_gejala_table', 1),
(4, '2017_07_01_195148_create_penyakit_table', 1),
(5, '2017_07_02_031810_create_gejala_penyakit_table', 1),
(6, '2017_07_02_062333_create_pasien_table', 1),
(7, '2017_07_02_085613_create_tmp_diagnosa_table', 1),
(8, '2017_07_09_081816_create_diagnosa_table', 1),
(9, '2017_07_09_111229_create_tmp_gejala_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'Adi Murdayani', 'palopo', '2022-05-25 02:32:53', '2022-05-25 02:32:53'),
(2, 'Adi Murdayani', 'Sukamaju', '2022-05-25 02:40:31', '2022-05-25 02:40:31'),
(3, 'Adi Murdayani', 'Palopo', '2022-05-25 03:05:25', '2022-05-25 03:05:25'),
(4, 'Adi Murdayani', 'Sukadamai\r\n', '2022-05-25 03:07:45', '2022-05-25 03:07:45'),
(5, 'adi', 'palopo\r\n', '2022-06-17 09:14:02', '2022-06-17 09:14:02'),
(6, 'adf', 'asdf', '2022-06-17 09:20:20', '2022-06-17 09:20:20'),
(7, 'adf', 'ad', '2022-06-17 14:24:40', '2022-06-17 14:24:40'),
(8, 'ad', 'asdf', '2022-06-17 15:03:04', '2022-06-17 15:03:04'),
(9, 'Adi Murdayani', 'palopo', '2022-06-18 01:43:25', '2022-06-18 01:43:25'),
(10, 'Adi ', 'palopo\r\n', '2022-06-18 06:10:31', '2022-06-18 06:10:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `definisi` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `penyebab` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `definisi`, `penyebab`, `created_at`, `updated_at`) VALUES
(1, 'PN01', 'Penyakit Hawar Daun Bakteri', 'Penyakit hawar daun bakteri (HDB) merupakan salah satu penyakit padi tersebar di berbagai ekosistem padi di negara-negara penghasil padi, termasuk di Indonesia. Penyakit disebabkan oleh bakteri Xanthomonas oryzae pv. oryzae (Xoo). Patogen ini dapat mengenfeksi tanaman padi pada semua fase pertumbuhan tanaman dari mulai pesemaian sampai menjelang panen. Penyebab penyakit  (patogen) menginfeksi tanaman padi pada bagian daun melalui luka daun atau lobang alami berupa stomata dan merusak klorofil daun. Hal tersebut menyebabkan menurunnya kemampuan tanaman untuk melakukan fotosintesis.', 'bakteri Xanthomonas oryzae pv. oryzae (Xoo)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'PN02', 'Penyakit Turgo', 'Penyakit tungro adalah penyakit yang disebabkan oleh dua jenis virus yang berbeda, yaitu virus bentuk batang Rice Tungro Bacilliform Virus (RTBV) dan virus bentuk bulat Rice Tungro Spherical Virus (RTSV).', 'Rice Tungro Bacilliform Virus (RTBV) dan virus bentuk bulat Rice Tungro Spherical Virus (RTSV)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'PN03', 'Penyakit Bercak Coklat', 'Penyakit bercak daun cercospora atau bercak coklat sempit (narrow brown leaf spot) tersebar luas di negara-negara penanam padi. Di Indonesia penyakit berkembang dengan baik terutama pada daerah-daerah lahan yang miskin unsur nitrogen dan kalium.', 'jamur Cercospora janseane (Racib) O. Const.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'PN04', 'Penyakit Blas', 'Penyakit blas merupakan salah satu penyakit penting pada pertanaman padi gogo di seluruh sentra produksi padi gogo Indonesia. Namun demikian, penyakit blas mulai menjadi kendala penting bagi pertanaman padi sawah terutama menyerang varietas-varietas unggul yang rentan terhadap blas. Daerah endemik penyakit blas di Indonesia antara lain Sumut, Sumsel, Lampung, Jawa Barat, Bali, dan NTB.', 'jamur Pyricularia grisea (Cooke) Sacc. atau juga dikenal dengan nama Pricularia oryzae.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PN05', 'Penyakit Noda Palsu', 'Penyakit noda palsu biasanya sampai saat ini bukanlah penyakit yang terlalu penting karena luasan dan intensitas serangannya masih rendah sehingga belum perlu dilakukan', 'jamur Ustilaginoidea virens.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'PN06', 'Penyakit Busuk Pelepah', 'Penyakit busuk pelepah merupakan salah satu faktor yang menghambat produktivitas padi di beberapa negara. Penelitian ini bertujuan untuk melaporkan penyakit busuk pelepah di Indonesia melalui survei lapangan, isolasi jamur, uji patogenisitas, identifikasi molekuler, karakterisasi morfologi, keragaman genetik, bioekologi dan uji varietas padi.', 'bakteri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'HM01', 'Hama Wereng Coklat', 'Wereng cokelat (Nilaparvata lugens) adalah salah satu hama padi yang paling berbahaya dan merugikan, terutama di daerah Asia Tenggara dan Asia Timur. Serangga kecil ini mengisap cairan tumbuhan dan sekaligus juga menyebarkan beberapa virus (terutama reovirus) yang menyebabkan penyakit tungro).', 'hama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'HM02', 'Hama Penggerek Batang', 'Penggerek batang padi merupakan hama utama tanaman padi di Indonesia. Di dunia terdapat 21 spesies penggerek batang yang beradaptasi pada agroekosistem padi, sedangkan di Indonesia terdapat enam spesies yang terdiri dari lima famili Pyralidae dan satu spesies dari famili Noctuidae.', 'hama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'HM03', 'Hama Putih Palsu', 'Hama putih palsu jarang menjadi hama utama padi. Serangannya menjadi berarti bila kerusakan pada daun pada fase anakan maksimum dan fase pematangan mencapai >50%. Kerusakan akibat serangan larva hama putih palsu (Gambar D) terlihat dengan adanya warna putih pada daun di pertanaman (Gambar B & C). Larva (Gambar D) makan jaringan hijau daun dari dalam lipatan daun meninggalkan permukaan bawah daun yang berwarna putih (Gambar C).', 'hama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'HM04', 'Hama Walang Sangit', 'Walang sangit (Leptocorisa oratorius Fabricius, (Hemiptera:Alydidae); syn. Leptocorisa acuta) adalah serangga yang menjadi hama penting pada tanaman budidaya, terutama padi. Di Indonesia, serangga ini disebut: kungkang (Sunda), pianggang (Sumatra), dan tenang (Madura).', 'hama', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `pasien_id` int(10) UNSIGNED DEFAULT NULL,
  `penyakit_id` int(10) UNSIGNED DEFAULT NULL,
  `gejala` int(10) UNSIGNED DEFAULT NULL,
  `gejala_terpenuhi` int(10) UNSIGNED DEFAULT NULL,
  `persen` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`pasien_id`, `gejala_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 8),
(3, 1),
(3, 5),
(3, 6),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(4, 1),
(4, 4),
(4, 5),
(4, 6),
(4, 9),
(4, 18),
(4, 24),
(4, 25),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@pakarpadi', '$2y$10$mmB0QxqgKVRFliAnd5opueBng/zk.2Lh0.DUt7HLLHuWzx2Lcb9kW', 'mZjqKK8e5FLfqNkcdaEXrpjxhnZp7a2hEOJDJI4vQMUDMxnaAUZINhmztuh8', '2020-01-26 16:00:49', '2022-05-25 02:36:48'),
(2, 'Lilian', 'admin@admin.com', '$2y$10$zcvfaCFPj8dSjTC0FhxVAu6/D54.4ronL5NaL07P6S7JE5jzwWBaW', NULL, '2022-06-16 03:10:25', '2022-06-16 03:10:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`penyakit_id`,`gejala_id`);

--
-- Indeks untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD KEY `tmp_diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `tmp_diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indeks untuk tabel `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`pasien_id`,`gejala_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD CONSTRAINT `tmp_diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
