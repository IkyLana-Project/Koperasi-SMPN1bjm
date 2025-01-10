-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2025 pada 08.21
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi_smpn1bjm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_20_025712_product_controller', 1),
(5, '2024_03_21_112448_products', 1),
(6, '2024_04_16_103102_types', 1),
(7, '2024_05_11_111813_carts', 1),
(8, '2024_05_14_125404_notes', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `barang_satuan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`barang_satuan`)),
  `jumlah_barang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`jumlah_barang`)),
  `total_harga` varchar(255) NOT NULL,
  `total_harga_keseluruhan` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `notes`
--

INSERT INTO `notes` (`id`, `nama`, `barang_satuan`, `jumlah_barang`, `total_harga`, `total_harga_keseluruhan`, `created_at`, `updated_at`) VALUES
(80, 'Rizky', '[\"Baju Olahraga\"]', '[\"8\"]', '0', '320000', '2024-08-19', '2024-08-19 05:18:13'),
(91, 'Sanjaya', '[\"Baju Putih\"]', '[\"1\"]', '0', '50000', '2024-08-21', '2024-08-21 15:08:29'),
(92, 'Arif', '[\"Baju Olahraga\"]', '[\"1\"]', '0', '40000', '2024-08-30', '2024-08-30 02:06:56'),
(94, 'fherikyy', '[\"Baju Batik (S)\"]', '[\"1\"]', '0', '135000', '2024-09-04', '2024-09-03 20:40:08'),
(95, 'Saii', '[\"Baju Batik (M)\"]', '[\"1\"]', '0', '1000000000', '2024-09-11', '2024-09-11 02:21:53'),
(97, 'Saii', '[\"Baju Batik (M)\"]', '[\"2\"]', '0', '2000000000', '2024-09-11', '2024-09-11 02:23:50'),
(98, 'Saii', '[\"Kain Batik (2,5 M)\"]', '[\"1\"]', '0', '135000', '2024-09-11', '2024-09-11 02:25:26'),
(99, 'Arif', '[\"Lambang Koko\"]', '[\"1\"]', '0', '5000', '2024-09-13', '2024-09-13 11:31:29'),
(100, 'Arif', '[\"Kain Sasirangan\"]', '[\"5\"]', '0', '875000', '2024-09-24', '2024-09-24 02:46:38'),
(101, 'Testing', '[\"Kain Batik (2,5 M)\"]', '[\"1\"]', '0', '135000', '2024-09-25', '2024-09-25 01:48:35'),
(102, 'Testing', '[\"Baju Batik (M)\"]', '[\"1\"]', '0', '1000000000', '2024-09-25', '2024-09-25 02:21:25'),
(103, 'Testing', '[\"Baju Batik (L)\"]', '[\"1\"]', '0', '135000', '2024-09-25', '2024-09-25 04:04:08'),
(104, 'Arif', '[\"Baju Batik (S)\",\"Baju Olahraga (M)\"]', '[\"1\",\"1\"]', '0', '305000', '2024-09-30', '2024-09-30 08:28:59'),
(105, 'Testing', '[\"Baju Batik (S)\",\"Baju Olahraga (M)\"]', '[\"1\",\"5\"]', '0', '985000', '2024-09-30', '2024-09-30 08:31:47'),
(106, 'SAii', '[\"Baju Batik (M)\"]', '[\"3\"]', '[\"405000\"]', '405000', '2024-10-01', '2024-10-01 06:10:58'),
(108, 'Arif', '[\"Baju Batik (L)\"]', '[\"1\"]', '[\"135000\"]', '135000', '2024-10-01', '2024-10-01 06:20:59'),
(109, '1', '[\"Topi Pramuka 049 (Laki-Laki)\"]', '[\"1\"]', '[\"30000\"]', '30000', '2024-10-01', '2024-10-01 07:32:51'),
(110, 'Saii', '[\"Baju Batik (L)\",\"Baju Olahraga (XL)\"]', '[\"2\",\"2\"]', '[\"270000\",\"360000\"]', '630000', '2024-10-03', '2024-10-03 03:06:14'),
(111, 'Saii', '[\"Baju Koko (XL)\"]', '[\"3\"]', '[\"420000\"]', '420000', '2024-10-03', '2024-10-03 03:09:20'),
(112, 'Zaini', '[\"Ikat Pinggang Besar\"]', '[\"3\"]', '[\"75000\"]', '75000', '2024-10-03', '2024-10-03 03:11:31'),
(113, 'Testing', '[\"Baju Batik (S)\",\"Baju Batik (S)\"]', '[\"1\",\"1\"]', '[\"135000\",\"135000\"]', '270000', '2024-10-09', '2024-10-09 00:34:08'),
(114, 'Arif', '[\"Baju Batik (S)\"]', '[\"5\"]', '[\"675000\"]', '675000', '2024-10-14', '2024-10-14 13:34:11'),
(115, 'Bernadya', '[\"Baju Batik (M)\"]', '[\"5\"]', '[\"675000\"]', '675000', '2024-10-14', '2024-10-14 14:38:46'),
(116, '1', '[\"Baju Batik (L)\"]', '[\"2\"]', '[\"270000\"]', '270000', '2024-10-29', '2024-10-29 06:50:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `barang`, `types`, `harga`, `stok`, `gambar`, `created_at`, `updated_at`) VALUES
(15, 'Baju Batik (S)', 'Seragam Sekolah', 135000, 5, 'product-images/ugBPdQVV0TLajb27jX1odUkfTVMUrPR4CJncaAsj.png', '2024-09-02 02:51:27', '2024-10-14 13:34:11'),
(16, 'Baju Batik (M)', 'Seragam Sekolah', 135000, 5, 'product-images/TtxRZlnxOVWt7DKC2KRqk6rWmRaFjZZHFrvsmEM0.png', '2024-09-02 02:53:25', '2024-10-14 14:38:46'),
(18, 'Baju Batik (L)', 'Seragam Sekolah', 135000, 2, 'product-images/WG3U1FmF4EkR5yYeh729oBQYScrScUdvKFMPcegU.png', '2024-09-02 03:00:01', '2024-10-29 06:50:04'),
(19, 'Baju Olahraga (M)', 'Seragam Sekolah', 170000, 20, 'product-images/XTLdC4Q9DVximSaoV8bl1i3jisrciUOKFGbYEVeW.png', '2024-09-02 03:20:44', '2024-10-03 01:45:42'),
(20, 'Baju Olahraga (L)', 'Seragam Sekolah', 170000, 2, 'product-images/UBa2xItQibNpqH6IXGJ9yOjebBDrq4W6Jx2tCAm0.png', '2024-09-02 03:23:42', '2024-10-03 01:46:16'),
(21, 'Baju Olahraga (XL)', 'Seragam Sekolah', 180000, 31, 'product-images/MuVywpOwKM2Cn6V7rPB0McIeCEikZlnKAV3Z81QZ.png', '2024-09-02 03:25:27', '2024-10-03 03:06:14'),
(22, 'Baju Olahraga (XXXL / 3L)', 'Seragam Sekolah', 190000, 29, 'product-images/8OKX9XTvNwGmXUhg3PhOwJfTfK8NBjZfCmrSVNze.png', '2024-09-02 03:26:46', '2024-10-03 01:47:04'),
(23, 'Kaos Kaki Putih', 'Perlengkapan Seragam Sekolah', 20000, 366, 'product-images/JwFKjmIrdrQa8XgKOeXC0Yf2yttRJ5avKYRlFZrI.png', '2024-09-02 04:28:03', '2024-10-03 01:49:08'),
(24, 'Kaos Kaki Hitam', 'Perlengkapan Seragam Sekolah', 20000, 322, 'product-images/8quP0FvDxtT0nb4NvLmhu53FlbT4V54LbJFT9tit.png', '2024-09-02 04:30:10', '2024-10-03 01:48:08'),
(25, 'Kain Sasirangan', 'Seragam Sekolah', 175000, 60, 'product-images/DFThl0VyOpAl5x6H3GbzOYsHZHaPatIFHo5g9Pt1.png', '2024-09-02 04:34:02', '2024-10-03 01:50:13'),
(26, 'Topi Pramuka 049 (Laki-Laki)', 'Perlengkapan Seragam Sekolah', 30000, 108, 'product-images/aR4sjFudujill2yTocn6AybIheU6nbfeCnr5m9i7.png', '2024-09-02 04:37:25', '2024-10-03 01:51:10'),
(27, 'Topi Biru', 'Perlengkapan Seragam Sekolah', 30000, 187, 'product-images/qeeSJ3N7nFixBdt68rr9uqihLp1cW08inU8q2llB.png', '2024-09-02 04:48:02', '2024-10-03 01:58:31'),
(28, 'Ikat Pinggang Kecil', 'Perlengkapan Seragam Sekolah', 20000, 5, 'product-images/93xOikZN989emFOVeTgy44u4xyi1QB7GrB8LK7iC.png', '2024-09-03 19:53:44', '2024-09-03 19:56:42'),
(29, 'Ikat Pinggang Besar', 'Perlengkapan Seragam Sekolah', 25000, 42, 'product-images/GSS17sQeyyrdMA5HbtcUHKxsLygqtWSLdstDOPHS.png', '2024-09-03 19:55:46', '2024-10-03 03:11:31'),
(30, 'Baju Koko (S)', 'Seragam Sekolah', 130000, 1, 'product-images/i5afxIIm2opDi07HmigA4ANh40w8rbhjAeVCM2nA.png', '2024-09-03 20:01:53', '2024-10-03 01:39:25'),
(31, 'Baju Koko (L)', 'Seragam Sekolah', 130000, 27, 'product-images/v9Le7VO31XWbKWzTW2CigmiSk4gIWaytlayB2in7.png', '2024-09-03 20:02:57', '2024-10-03 01:39:57'),
(32, 'Baju Koko (XL)', 'Seragam Sekolah', 140000, 34, 'product-images/sQ986TYexzgxUHiRpWcjBBuT9xnV8ebQ0n7gxKxJ.png', '2024-09-03 20:03:54', '2024-10-03 03:09:20'),
(33, 'Baju Koko (XXL)', 'Seragam Sekolah', 150000, 5, 'product-images/txQW6u38MWt9La1ok6Cj29yDKuqUCTKgvPgiQfpy.png', '2024-09-03 20:04:37', '2024-10-03 01:40:47'),
(34, 'Jilbab Putih Biru', 'Perlengkapan Seragam Sekolah', 60000, 212, 'product-images/JFxPpHjoDgmpVXnT4c0kAlvVUFBuI0hIW0dHi4Sv.png', '2024-09-03 20:07:45', '2024-10-03 02:06:55'),
(35, 'Jilbab Pramuka', 'Perlengkapan Seragam Sekolah', 65000, 281, 'product-images/1Ce312HTJZADFsM9JZaoE1MW0k9N1axBISFd4WZR.png', '2024-09-03 20:11:49', '2024-10-03 02:07:31'),
(36, 'Dasi Biru', 'Perlengkapan Seragam Sekolah', 20000, 585, 'product-images/XwuvwNurYwzPzJhAUet7WIeiUZVnRcgXB0ZtYWiU.jpg', '2024-09-03 20:13:07', '2024-09-03 20:13:07'),
(37, 'Topi Pramuka 050 (Perempuan)', 'Perlengkapan Seragam Sekolah', 30000, 92, 'product-images/a6RYM1jGyBatjCXN6YfBysajuqkSaj2oKdxLEyzr.png', '2024-09-03 20:20:15', '2024-10-03 02:01:00'),
(38, 'Lambang Kelas 7', 'Lambang Sekolah', 10000, 408, 'product-images/7agfTp0WMkihLUA5zkC0INaSdPj5Ow8jcxAdGfNs.png', '2024-09-03 20:23:41', '2024-09-09 05:42:31'),
(39, 'Lambang Kelas 8', 'Lambang Sekolah', 10000, 163, 'product-images/fNxV9TgrxyaT10qzDcPjQIdqGCsYte5hYCHXrB2P.png', '2024-09-03 20:24:38', '2024-09-09 05:45:51'),
(40, 'Lambang Kelas 9', 'Lambang Sekolah', 10000, 254, 'product-images/Io0AvyywXiNI0f5RM7y6Zg0BcO6lMVTCLwQp7Gnv.png', '2024-09-03 20:25:18', '2024-09-09 05:46:30'),
(46, 'LKS Bahasa Indonesia Kelas 7', 'Buku LKS Kelas 7', 22000, 10000, 'product-images/alLIawxjaCOH4smyK3y4neMU2ce6HM3aeayqfgKM.jpg', '2024-09-09 01:02:22', '2024-09-09 02:28:55'),
(47, 'LKS Bahasa Inggris Kelas 7', 'Buku LKS Kelas 7', 22000, 10000, 'product-images/e5WflRXj5GIns2VDDBfx3wdXCLSW0z7LtwY1r8KM.jpg', '2024-09-09 03:22:39', '2024-09-09 03:22:39'),
(48, 'LKS Penjaskes Kelas 7', 'Buku LKS Kelas 7', 22000, 10000, 'product-images/aZzNtj5GStENCY4FFTBPXMKDhxjkT4RByJzbhx07.jpg', '2024-09-09 03:25:21', '2024-09-09 03:25:21'),
(49, 'LKS Ilmu Pengetahuan Alam Kelas 7', 'Buku LKS Kelas 7', 22000, 1000000, 'product-images/bVzjrCpbT4a9xdHqJ796bS3PVDA7QCCl3Qw5UJJU.jpg', '2024-09-09 03:30:55', '2024-09-09 03:30:55'),
(50, 'LKS Ilmu Pengetahuan Sosial Kelas 7', 'Buku LKS Kelas 7', 22000, 10000, 'product-images/sMYWUa6CPOX6ebPKQsMAusfYnWGWBDB7CcIznnUe.jpg', '2024-09-09 03:33:17', '2024-09-09 03:33:17'),
(51, 'LKS Pendidikan Agama Islam Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/NuotlKxkennCNJ44p1V5f9jJgNMTnXJ4izlryRJO.jpg', '2024-09-09 03:34:26', '2024-09-09 03:34:26'),
(52, 'LKS Informatika Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/zuXFEZmDfrhTczTesGrfyzl55wvp53QZ798dgcof.jpg', '2024-09-09 03:35:44', '2024-09-09 03:35:44'),
(53, 'LKS Matematika Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/CQ5EFe9qwJbWKYp6nsNsr1TDpDYCldWiuulz9RvK.jpg', '2024-09-09 03:37:17', '2024-09-09 03:37:17'),
(54, 'LKS Pendidikan Pancasila Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/b3eH2XoLH43GE0YLPTozFakwETwN1old7CnQ1WGv.jpg', '2024-09-09 03:38:27', '2024-09-09 03:38:27'),
(55, 'LKS Seni Musik Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/vibVhULIJCpHVRIPevwfuPoGTgCAPWr8pl4neqgA.jpg', '2024-09-09 03:39:13', '2024-09-09 03:39:13'),
(56, 'LKS Prakarya Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/ydPaV4zNCWx0jLDwlc14Spq6GGyQmDi9Eqhahoq2.jpg', '2024-09-09 03:40:39', '2024-09-09 03:40:39'),
(57, 'LKS Bahasa Inggris Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/5NTixEfhN22w1QDKXY7hmkb8vcK8elOH0FlnXJEz.jpg', '2024-09-09 04:06:59', '2024-09-09 04:06:59'),
(58, 'LKS Matematika Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/ztx5dkyxdh3QeRihiEynLM7trIHTQD8U6WtOh3wm.jpg', '2024-09-09 04:08:32', '2024-09-09 04:08:32'),
(59, 'LKS Pendidikan Agama Islam Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/inkotIus0EkJeLtGdMuUqcENkFiFosajClqMCzaV.jpg', '2024-09-09 04:15:09', '2024-09-09 04:15:09'),
(60, 'LKS Informatika Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/Rp5i3GByLtPJ4ZxwDiSjmSam7CJm7BOgYdcjAQtd.jpg', '2024-09-09 04:18:59', '2024-09-09 04:18:59'),
(61, 'LKS Ilmu Pengetahuan Sosial Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/yuatsWEstA3IL0sUrLbnLKMBurXltiRoxeJUZYl9.jpg', '2024-09-09 04:21:06', '2024-09-09 04:21:06'),
(62, 'LKS Ilmu Pengetahuan Alam Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/OEFlTerAdWutdJhYjxEzQcMXzXEGInP5mfV8A0gO.jpg', '2024-09-09 04:23:18', '2024-09-09 04:23:18'),
(63, 'LKS Pendidikan Pancasila Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/2S8ovBAeZYnhoyxZTruUVjDS4mGC1sYwsQFD6qFt.jpg', '2024-09-09 04:27:16', '2024-09-09 04:27:16'),
(64, 'LKS Seni Musik Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/3emcgr535Bp0nmTpm7cPbATEHwYsPTvR9pSIelr7.jpg', '2024-09-09 04:28:04', '2024-09-09 04:28:04'),
(65, 'LKS Seni Tari Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/ILxpVnR9VYM4Eqm2DflIhtLb5M813AT5UX2s8V3g.jpg', '2024-09-09 04:29:59', '2024-09-09 04:29:59'),
(66, 'LKS Prakarya Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/zlKMdhbFRebfvP7Z4plxpjcjUp2tYuR0GwHh549G.jpg', '2024-09-09 04:30:56', '2024-09-09 04:30:56'),
(67, 'LKS Bahasa Indonesia Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/GneV9A67pygO3qGZ375ETHqJ8peaZrLEnetA5i4R.png', '2024-09-09 04:33:14', '2024-09-09 04:33:14'),
(68, 'LKS Penjaskes Kelas 8', 'Buku LKS Kelas 8', 22000, 0, 'product-images/wKBuKLFoTpJAbVbHqKk16QYW6FsAk3JYCC5zxzME.png', '2024-09-09 04:33:55', '2024-09-09 04:33:55'),
(69, 'LKS Bahasa Inggris Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/E4jkTiw5yDUT7GPFmLVL4PDkVRmMUTK9vSWyrhMD.jpg', '2024-09-09 04:35:04', '2024-09-09 04:35:04'),
(70, 'LKS Ilmu Pengetahuan Alam Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/kRTZfmgn2b6Hxc5J3K9JDafEkBufTS9KOZP18pPt.jpg', '2024-09-09 04:35:43', '2024-09-09 04:35:43'),
(71, 'LKS Ilmu Pengetahuan Sosial Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/uBoFZ56d5VuzZoEY0Rp5dNnf9OiyLcWRnoLIX9pS.jpg', '2024-09-09 04:36:30', '2024-09-09 04:37:25'),
(72, 'LKS Penjaskes Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/YaKGVD1wBJRZENedFn8IlqU9NA7eO0hQmI1u2qGM.jpg', '2024-09-09 04:40:04', '2024-09-09 04:40:04'),
(73, 'LKS Informatika Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/sGNBPJEQ9exDFHEVNlMpNhBwvu5Jp66C9nRvofT2.jpg', '2024-09-09 04:41:12', '2024-09-09 04:41:12'),
(74, 'LKS Pendidikan Pancasila Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/SrKSuGaylVfjBVgso0j4F59D02NuTZ6fOpUoiMkY.jpg', '2024-09-09 04:41:54', '2024-09-09 04:41:54'),
(75, 'LKS Pendidikan Agama Islam Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/TVWMPKn9gEOT01eO9Q8tvJLDCinozcVYxPk0oSN2.jpg', '2024-09-09 04:42:45', '2024-09-09 04:43:37'),
(76, 'LKS Seni Musik Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/DOYhRdClfNAUriL6zri3j0mlpxEXmCnYuWFsd3GV.jpg', '2024-09-09 04:44:32', '2024-09-09 04:44:32'),
(77, 'LKS Bahasa Indonesia Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/P36OoeWk7v3xeg2ee8gaWTHjyzF29RitGv09hR6k.jpg', '2024-09-09 04:45:21', '2024-09-09 04:45:21'),
(78, 'LKS Prakarya Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/knMt2qobmuuXuDE7MSgxg0w5GqvA44XF1SXbwMyr.png', '2024-09-09 04:46:40', '2024-09-09 04:46:40'),
(79, 'LKS Seni Tari Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/Lx0Rs5SnP2QefILZpPaXBgbPVOagF0dwgPOY8GOV.png', '2024-09-09 04:47:24', '2024-09-09 04:47:24'),
(80, 'LKS Matematika Kelas 9', 'Buku LKS Kelas 9', 22000, 0, 'product-images/1jAI2Ju2tV7ogF6aYllQAiHX4KAyqekQEPM7JKve.png', '2024-09-09 04:47:57', '2024-09-09 04:47:57'),
(81, 'LKS Seni Tari Kelas 7', 'Buku LKS Kelas 7', 22000, 0, 'product-images/9jwebErCN2ja1fVCHnzZhQZVXwScQRm3xmwvlRkm.png', '2024-09-09 05:29:09', '2024-09-09 05:29:09'),
(82, 'Lambang Koko', 'Lambang Sekolah', 5000, 223, 'product-images/bTF8nWySpozAQO7bXK6b79DDlMJ9cmrHtD3v9aub.png', '2024-09-09 06:05:07', '2024-09-13 11:31:29'),
(83, 'Lambang OSIS', 'Lambang Sekolah', 10000, 356, 'product-images/ruxF3yGs1ixq50xC7QgvyLVpB2QpJOiLICloLs3U.png', '2024-09-09 06:06:57', '2024-09-09 06:06:57'),
(84, 'Lambang Bendera Merah Putih', 'Lambang Sekolah', 5000, 560, 'product-images/2Cv0qEg2bfPNyG93Jm4A5HsCYUCQr35a4NIwOz39.png', '2024-09-09 06:09:16', '2024-09-09 06:09:16'),
(92, 'Paket Lambang Pramuka', 'Lambang Sekolah', 15000, 0, 'product-images/UacMaf4g0pO6K1JnPga974b5pA73zbfmdIIgg5zW.png', '2024-09-11 03:19:51', '2024-09-11 04:32:47'),
(93, 'Baju Koko (M)', 'Seragam Sekolah', 130000, 21, 'product-images/wXu4yKIEhJEy13C9UZ8N2LXEBQ5F5KbsPfPOotnL.png', '2024-10-03 01:34:09', '2024-10-03 02:15:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fwSGPDbGHECHRo1KorYNy0r9obRfv1MSUkeH5He1', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibjE4T0tkeUpkMXF2UWVzNXpETHdDMDUzMGYzZHI2R3ExTEVQczZEUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNDt9', 1733194388),
('mNPoFIDrubhVS3dZRRTQ070nrgd1QYVMJUlWQx2L', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR2lVdnU3MEhtU2FBTnhhTlJlZjRHMlA3aDNKa0QyaDhidnU2UHdORSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9oaXN0b3J5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTU7fQ==', 1735894224);

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(16, 'Perlengkapan Seragam Sekolah', '2024-09-02 02:21:19', '2024-09-02 02:21:19'),
(17, 'Lambang Sekolah', '2024-09-02 02:21:29', '2024-09-02 02:21:29'),
(18, 'Buku LKS Kelas 7', '2024-09-02 02:22:15', '2024-09-02 02:22:15'),
(19, 'Buku LKS Kelas 8', '2024-09-02 02:22:29', '2024-09-02 02:22:29'),
(20, 'Buku LKS Kelas 9', '2024-09-02 02:22:37', '2024-09-02 02:22:37'),
(21, 'Seragam Sekolah', '2024-09-02 02:23:52', '2024-09-02 02:23:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user` enum('admindata','admincetak') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `user`, `created_at`, `updated_at`) VALUES
(14, 'Admindata@Gmail.com', '$2y$12$xgm7Zv5Uxut7OKc7b7RACeY44qAqeXGWTm1aabaT8dfOVZ.FVJTRm', 'admindata', '2024-09-02 01:05:46', '2024-09-02 01:05:46'),
(15, 'Admincetak@Gmail.com', '$2y$12$NUoGmkJFvFkWbieHqNx2y.vr51zvA8LEmgBjv9jLm3Ds9gtdCtrB2', 'admincetak', '2024-09-02 01:05:46', '2024-09-02 01:05:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
