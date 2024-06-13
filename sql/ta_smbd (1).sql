-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 19.27
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_smbd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fitur`
--

CREATE TABLE `fitur` (
  `fitur_id` int(11) NOT NULL,
  `fitur_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fitur`
--

INSERT INTO `fitur` (`fitur_id`, `fitur_name`, `created_at`) VALUES
(1, 'view', '2024-06-12 14:47:34'),
(2, 'insert', '2024-06-12 14:47:46'),
(3, 'update', '2024-06-12 14:47:53'),
(4, 'delete', '2024-06-12 14:48:00'),
(5, 'print', '2024-06-12 15:07:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `created_at`) VALUES
(1, 'dashboard', '2024-06-12 17:25:19'),
(2, 'data', '2024-06-12 17:25:26'),
(3, 'profil', '2024-06-12 17:25:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `created_at`) VALUES
(1, 'Super_admin', '2024-06-12 14:07:49'),
(2, 'admin', '2024-06-12 14:07:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_fitur`
--

CREATE TABLE `role_fitur` (
  `role_fitur_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `fitur_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_fitur`
--

INSERT INTO `role_fitur` (`role_fitur_id`, `role_id`, `fitur_id`, `created_at`) VALUES
(2, 1, 1, '2024-06-12 17:22:13'),
(3, 1, 2, '2024-06-12 17:22:23'),
(4, 1, 3, '2024-06-12 17:22:32'),
(5, 1, 4, '2024-06-12 17:22:42'),
(6, 1, 5, '2024-06-12 17:22:51'),
(7, 2, 1, '2024-06-12 17:23:00'),
(9, 2, 2, '2024-06-12 17:23:16'),
(10, 2, 3, '2024-06-12 17:23:29'),
(11, 2, 4, '2024-06-12 17:23:38'),
(12, 2, 5, '2024-06-12 17:23:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_menu`
--

CREATE TABLE `role_menu` (
  `role_menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_menu`
--

INSERT INTO `role_menu` (`role_menu_id`, `role_id`, `menu_id`, `created_at`) VALUES
(1, 1, 1, '2024-06-12 17:25:58'),
(2, 1, 2, '2024-06-12 17:26:11'),
(3, 1, 3, '2024-06-12 17:26:27'),
(5, 2, 1, '2024-06-12 17:26:41'),
(6, 2, 2, '2024-06-12 17:26:54'),
(7, 2, 3, '2024-06-12 17:27:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `role_id`, `full_name`, `username`, `password`, `email`, `created_at`) VALUES
(1, 1, 'Rudi Setiawan', 'rudi123', 'r123', 'rudi@gmail.com', '2024-06-12 14:21:37'),
(2, 1, 'Agus Pratama', 'agus123', 'a123', 'agus@gmail.com', '2024-06-12 14:21:37'),
(3, 1, 'Dewi Lestari', 'dewi123', 'd123', 'dewi@gmail.com', '2024-06-12 14:21:37'),
(4, 1, 'Siti Aminah', 'siti123', 's123', 'siti@gmail.com', '2024-06-12 14:21:37'),
(5, 1, 'Ikhwani Arifin', 'ikhwan123', 'i123', 'ikhwan@gmail.com', '2024-06-12 14:21:37'),
(6, 2, 'Budi Santoso', 'budi123', 'b123', 'budi@gmaiil.com', '2024-06-12 14:21:37'),
(7, 2, 'Taufik Hidayat', 'taufik123', 't123', 'taufik@gmail.com', '2024-06-12 14:21:37'),
(8, 2, 'Wati Mulyani', 'wati123', 'w123', 'wati@gmail.com', '2024-06-12 14:21:37'),
(9, 2, 'Fajar Nugraha', 'fajar123', 'f123', 'fajar@gmail.com', '2024-06-12 14:21:37'),
(10, 2, 'Lina Marlina', 'lina123', 'l123', 'lina@gmail.com', '2024-06-12 14:21:37'),
(11, 1, 'Zainal Arifin', 'zainal123', 'z123', 'zainal@gmail.com', '2024-06-12 15:15:38'),
(12, 1, 'Yulia Indrawati', 'yulia123', 'y123', 'yulia@gmail.com', '2024-06-12 15:15:42'),
(13, 1, 'Ali Zaffar', 'ali123', 'a123', 'ali@gmail.com', '2024-06-12 15:15:46'),
(14, 1, 'Harun Abidin', 'harun123', 'h123', 'harun@gmail.com', '2024-06-12 15:15:49'),
(15, 1, 'Gerry Pratama', 'gerry123', 'g123', 'gerry@gmail.com', '2024-06-12 15:15:53'),
(16, 2, 'Panji Setiawan', 'panji123', 'p123', 'panji@gmaiil.com', '2024-06-12 15:15:56'),
(17, 2, 'Hilmy Zaffran', 'hilmy123', 'h123', 'hilmy@gmail.com', '2024-06-12 15:16:01'),
(18, 2, 'Nabil Fekir', 'nabil123', 'n123', 'nabil@gmail.com', '2024-06-12 15:16:05'),
(19, 2, 'Martinius Nugraha', 'martinus123', 'm123', 'martinus@gmail.com', '2024-06-12 15:16:08'),
(20, 2, 'Vanesha Marlina', 'vanesha123', 'v123', 'vanesha@gmail.com', '2024-06-12 15:15:25'),
(21, 1, 'Alex Muhammad', 'alexl123', 'a123', 'alex@gmail.com', '2024-06-12 15:48:28'),
(22, 1, 'Rehan Saputra', 'rehan123', 'r123', 'rehan@gmail.com', '2024-06-12 15:48:28'),
(23, 1, 'Yoga Pratama', 'yoga123', 'y123', 'yoga@gmail.com', '2024-06-12 15:48:28'),
(24, 1, 'Choirul Mahmud', 'choirul123', 'c123', 'choirul@gmail.com', '2024-06-12 15:48:28'),
(25, 1, 'Petersesn', 'petersen123', 'p123', 'petersen@gmail.com', '2024-06-12 15:48:28'),
(26, 2, 'Farras Surya', 'farras123', 'f123', 'farras@gmaiil.com', '2024-06-12 15:48:28'),
(27, 2, 'Rangga Putra', 'rangga123', 'r123', 'rangga@gmail.com', '2024-06-12 15:48:28'),
(28, 2, 'Raja Takbir', 'raja123', 'r123', 'raja@gmail.com', '2024-06-12 15:48:28'),
(29, 2, 'Fauzanny Dewi', 'fauzanny123', 'f123', 'fauzanny@gmail.com', '2024-06-12 15:48:28'),
(30, 2, 'Zakky Zamroni', 'zakky123', 'z123', 'zakky@gmail.com', '2024-06-12 15:48:28'),
(31, 1, 'Bayu Aji', 'bayul123', 'b123', 'bayu@gmail.com', '2024-06-12 16:13:05'),
(32, 1, 'Aldi Kurniawan', 'aldi123', 'a123', 'aldi@gmail.com', '2024-06-12 16:13:05'),
(33, 1, 'agung widodo', 'agung123', 'a123', 'agung@gmail.com', '2024-06-12 16:13:05'),
(34, 1, 'Satria Yudha', 'satria123', 's123', 'satria@gmail.com', '2024-06-12 16:13:05'),
(35, 1, 'Kemal Pahlevi', 'kemal123', 'k123', 'kemal@gmail.com', '2024-06-12 16:13:05'),
(36, 2, 'Rico Rahmat', 'rico123', 'r123', 'rico@gmaiil.com', '2024-06-12 16:13:05'),
(37, 2, 'Putri Nanda', 'putri123', 'p123', 'putri@gmail.com', '2024-06-12 16:13:05'),
(38, 2, 'Anis Dewi', 'anis123', 'a123', 'anis@gmail.com', '2024-06-12 16:13:05'),
(39, 2, 'Arman Malik', 'arman123', 'a123', 'arman@gmail.com', '2024-06-12 16:13:05'),
(40, 2, 'Rina Widya', 'rina123', 'r123', 'rina@gmail.com', '2024-06-12 16:13:05'),
(41, 1, 'Joko Budiarto', 'joko123', 'j123', 'joko@gmail.com', '2024-06-12 16:20:11'),
(42, 1, 'Agus Sucipto', 'agus123', 'a123', 'agus@gmail.com', '2024-06-12 16:20:11'),
(43, 1, 'Tohir Muhammad', 'tohir123', 't123', 'tohir@gmail.com', '2024-06-12 16:20:11'),
(44, 1, 'Nasikh Zainal', 'nasikh123', 'n123', 'nasikh@gmail.com', '2024-06-12 16:20:11'),
(45, 1, 'Akmal Ramadhan', 'akmal123', 'a123', 'akmal@gmail.com', '2024-06-12 16:20:11'),
(46, 2, 'Faril Ainur', 'faril123', 'f123', 'faril@gmaiil.com', '2024-06-12 16:20:11'),
(47, 2, 'Risyad', 'risyad123', 'r123', 'risyad@gmail.com', '2024-06-12 16:20:11'),
(48, 2, 'Bunga Mekar', 'bunga123', 'b123', 'bunga@gmail.com', '2024-06-12 16:20:11'),
(49, 2, 'Aulia Dewi', 'aulia123', 'a123', 'aulia@gmail.com', '2024-06-12 16:20:11'),
(50, 2, 'Sofi Putri', 'sofi123', 's123', 'sofi@gmail.com', '2024-06-12 16:20:11'),
(51, 1, 'Alvin Maskuri', 'alvin123', 'a123', 'alvin@gmail.com', '2024-06-12 16:57:22'),
(52, 1, 'Bagas Dwiyanto', 'bagas123', 'b123', 'bagas@gmail.com', '2024-06-12 16:57:22'),
(53, 1, 'Chusnul Chotimah', 'chusnul123', 'c123', 'chusnul@gmail.com', '2024-06-12 16:57:22'),
(54, 1, 'Denny Kurnia', 'denny123', 'd123', 'denny@gmail.com', '2024-06-12 16:57:22'),
(55, 1, 'Diah Kurmala', 'diah123', 'd123', 'diah@gmail.com', '2024-06-12 16:57:22'),
(56, 2, 'Eka Prestiawati', 'eka123', 'e123', 'eka@gmaiil.com', '2024-06-12 16:57:22'),
(57, 2, 'Endang Susiyanti', 'endang123', 'e123', 'endang@gmail.com', '2024-06-12 16:57:22'),
(58, 2, 'Ismail Marzuki', 'ismail123', 'i123', 'ismail@gmail.com', '2024-06-12 16:57:22'),
(59, 2, 'Nur Leiyana', 'nur123', 'n123', 'nur@gmail.com', '2024-06-12 16:57:22'),
(60, 2, 'Wahyu Triyono', 'wahyu123', 'w123', 'wahyu@gmail.com', '2024-06-12 16:57:22'),
(61, 1, 'Dina Ramadhani', 'dina123', 'd123', 'dina@gmail.com', '2024-06-12 16:57:22'),
(62, 1, 'Dita Widya', 'dita123', 'd123', 'dita@gmail.com', '2024-06-12 16:57:22'),
(63, 1, 'Ibrahim Arsyad', 'ibrahim123', 'i123', 'ibrahim@gmail.com', '2024-06-12 16:57:22'),
(64, 1, 'Rizqy Arip', 'rizqy123', 'r123', 'rizqy@gmail.com', '2024-06-12 16:57:22'),
(65, 1, 'Fiqi Kurniawan', 'fiqi123', 'f123', 'fiqi@gmail.com', '2024-06-12 16:57:22'),
(66, 2, 'Rafi Afrizal', 'rafi123', 'r123', 'rafi@gmaiil.com', '2024-06-12 16:57:22'),
(67, 2, 'Safitri Puji', 'safitri123', 's123', 'safitri@gmail.com', '2024-06-12 16:57:22'),
(68, 2, 'Supriyatiningsih', 'supriyatiningsih123', 's123', 'supriyatiningsih@gmail.com', '2024-06-12 16:57:22'),
(69, 2, 'Yanti Leiyana', 'yanti123', 'y123', 'yanti@gmail.com', '2024-06-12 16:57:22'),
(70, 2, 'Zuliana', 'zuliana123', 'z123', 'zuliana@gmail.com', '2024-06-12 16:57:22'),
(71, 1, 'Zahra Amira', 'zahra123', 'z123', 'zahra@gmail.com', '2024-06-12 17:05:48'),
(72, 1, 'Tania Putri', 'tania123', 't123', 'tania@gmail.com', '2024-06-12 17:05:48'),
(73, 1, 'Okta Sari', 'okta123', 'o123', 'okta@gmail.com', '2024-06-12 17:05:48'),
(74, 1, 'Maya Sari', 'maya123', 'm123', 'maya@gmail.com', '2024-06-12 17:05:48'),
(75, 1, 'Kartika Putri', 'kartika123', 'k123', 'kartika@gmail.com', '2024-06-12 17:05:48'),
(76, 1, 'Jihan Amalia', 'jihan123', 'j123', 'jihan@gmail.com', '2024-06-12 17:05:48'),
(77, 1, 'Hesti Widya', 'hesti123', 'h123', 'hesti@gmail.com', '2024-06-12 17:05:48'),
(78, 1, 'Gina Rahayu', 'gina123', 'g123', 'gina@gmail.com', '2024-06-12 17:05:48'),
(79, 1, 'Rio Fahmi', 'rio123', 'r123', 'rio@gmail.com', '2024-06-12 17:05:48'),
(80, 1, 'Citra Dewi', 'citra123', 'c123', 'citra@gmail.com', '2024-06-12 17:05:48'),
(81, 1, 'Ayu Lestari', 'ayu123', 'a123', 'ayu@gmail.com', '2024-06-12 17:05:48'),
(82, 1, 'Viko Praseyi', 'viko123', 'v123', 'viko@gmail.com', '2024-06-12 17:05:48'),
(83, 1, 'Tama Wijaya', 'tama123', 't123', 'tama@gmail.com', '2024-06-12 17:05:48'),
(84, 1, 'Ucok Harahap', 'ucok123', 'u123', 'ucok@gmail.com', '2024-06-12 17:05:48'),
(85, 1, 'Pandu Wicaksono', 'pandu123', 'p123', 'pandu@gmail.com', '2024-06-12 17:05:48'),
(86, 1, 'Oka Putra', 'oka123', 'o123', 'oka@gmail.com', '2024-06-12 17:05:48'),
(87, 1, 'Dewa Prasetya', 'dewa123', 'd123', 'dewa@gmail.com', '2024-06-12 17:05:48'),
(88, 2, 'Irfan Faruq', 'irfan123', 'i123', 'irfan@gmail.com', '2024-06-12 17:12:16'),
(89, 2, 'Imam Ardianto', 'imam123', 'i123', 'imam@gmail.com', '2024-06-12 17:12:16'),
(90, 2, 'Bintang Wahyu', 'bintang123', 'b123', 'bintang@gmail.com', '2024-06-12 17:12:16'),
(91, 2, 'Nisa Dewi', 'nisa123', 'n123', 'nisa@gmail.com', '2024-06-12 17:12:16'),
(92, 2, 'Alif Ahmad', 'alif123', 'a123', 'alif@gmail.com', '2024-06-12 17:12:16'),
(93, 2, 'Sakura Yamamoto', 'sakura123', 's123', 'sakura@gmail.com', '2024-06-12 17:12:16'),
(94, 2, 'Imran Ali', 'imran123', 'i123', 'imran@gmail.com', '2024-06-12 17:12:16'),
(95, 2, 'Fida Taufiq', 'fida123', 'f123', 'fida@gmail.com', '2024-06-12 17:12:16'),
(96, 2, 'Daffa Ilham', 'daffa123', 'd123', 'daffa@gmail.com', '2024-06-12 17:12:16'),
(97, 2, 'Yuri Wati', 'yuri123', 'y123', 'yuri@gmail.com', '2024-06-12 17:12:16'),
(98, 2, 'Hendro Siswanto', 'hendro123', 'h123', 'hendro@gmail.com', '2024-06-12 17:12:16'),
(99, 2, 'Jasmin Thalib', 'jasmin123', 'j123', 'jasmin@gmail.com', '2024-06-12 17:12:16'),
(100, 2, 'Hakim Kusandrini', 'hakim123', 'h123', 'hakim@gmail.com', '2024-06-12 17:12:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fitur`
--
ALTER TABLE `fitur`
  ADD PRIMARY KEY (`fitur_id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indeks untuk tabel `role_fitur`
--
ALTER TABLE `role_fitur`
  ADD PRIMARY KEY (`role_fitur_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `fitur_id` (`fitur_id`);

--
-- Indeks untuk tabel `role_menu`
--
ALTER TABLE `role_menu`
  ADD PRIMARY KEY (`role_menu_id`),
  ADD KEY `roles` (`role_id`),
  ADD KEY `menu` (`menu_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fitur`
--
ALTER TABLE `fitur`
  MODIFY `fitur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_fitur`
--
ALTER TABLE `role_fitur`
  MODIFY `role_fitur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `role_menu`
--
ALTER TABLE `role_menu`
  MODIFY `role_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `role_fitur`
--
ALTER TABLE `role_fitur`
  ADD CONSTRAINT `fitur_id` FOREIGN KEY (`fitur_id`) REFERENCES `fitur` (`fitur_id`),
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Ketidakleluasaan untuk tabel `role_menu`
--
ALTER TABLE `role_menu`
  ADD CONSTRAINT `menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  ADD CONSTRAINT `roles` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
