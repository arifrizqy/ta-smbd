-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2024 pada 16.10
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
-- Struktur dari tabel `accounts`
--

CREATE TABLE `accounts` (
  `employee_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `accounts`
--

INSERT INTO `accounts` (`employee_id`, `username`, `password`, `role_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'John123', 'j123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(2, 'jane123', 'j123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(3, 'michael123', 'm123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(4, 'lisa123', 'l123', 2, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(5, 'ahmad123', 'a123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(6, 'nadia123', 'n123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(7, 'siti123', 's123', 2, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(8, 'james123', 'j123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(9, 'nguyen123', 'n123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(10, 'yuli123', 'y123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(11, 'budi123', 'b123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(12, 'maria123', 'm123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(13, 'david123', 'd123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(14, 'lina123', 'l123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(15, 'paul123', 'p123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(16, 'anita123', 'a123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(17, 'markus123', 'm123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(18, 'rani123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(19, 'ryan123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(20, 'julia123', 'j123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(21, 'andreas123', 'a123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(22, 'mira123', 'm123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(23, 'hendro123', 'h123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(24, 'cindy123', 'c123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(25, 'edward123', 'e123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(26, 'rinah123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(27, 'hendra123', 'h123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(28, 'dewi123', 'd123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(29, 'tommy123', 't123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(30, 'diana123', 'd123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(31, 'anton123', 'a123', 3, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(32, 'ratna123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(33, 'hadi123', 'h123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(34, 'wayan123', 'w123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(35, 'ketut123', 'k123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(36, 'nyoman123', 'n123', 3, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(37, 'made123', 'm123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(38, 'luh123', 'l123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(39, 'joko123', 'j123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(40, 'risma123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(41, 'andi123', 'a123', 2, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(42, 'dian123', 'd123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(43, 'yusuf123', 'y123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(44, 'rina123', 'r123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(45, 'haris123', 'h123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(46, 'lily123', 'l123', 2, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(47, 'agus123', 'a123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(48, 'tuti123', 't123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(49, 'asep123', 'a123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22'),
(50, 'sri123', 's123', 1, 1, '2024-06-13 13:52:22', '2024-06-13 13:52:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `nik` char(16) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `address` varchar(100) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `citizenship` enum('WNA','WNI') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`id`, `nik`, `full_name`, `birth_date`, `gender`, `address`, `no_telp`, `email`, `citizenship`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1234567890123456', 'John Doe', '1990-05-15', 'L', '123 Main St, City A', '1234567890', 'john.doe@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(2, '2345678901234567', 'Jane Smith', '1985-08-22', 'P', '456 Elm St, City B', '9876543210', 'jane.smith@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(3, '3456789012345678', 'Michael Johnson', '1988-03-10', 'L', '789 Oak St, City C', '5551234567', 'michael.johnson@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(4, '4567890123456789', 'Lisa Kim', '1987-09-03', 'P', '321 Pine St, City D', '9998887777', 'lisa.kim@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(5, '5678901234567890', 'Ahmad Rizki', '1991-06-25', 'L', '567 Maple St, City E', '4445556666', 'ahmad.rizki@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(6, '6789012345678901', 'Nadia Putri', '1989-12-18', 'P', '876 Cedar St, City F', '3332221111', 'nadia.putri@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(7, '7890123456789012', 'Siti Nurul', '1993-02-28', 'P', '987 Birch St, City G', '2223334444', 'siti.nurul@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(8, '8901234567890123', 'James Wong', '1986-04-14', 'L', '543 Oakwood St, City H', '7778889999', 'james.wong@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(9, '9012345678901234', 'Nguyen Van An', '1992-07-17', 'L', '456 Redwood St, City I', '6667778888', 'nguyen.van.an@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(10, '0123456789012345', 'Yuli Astuti', '1984-10-05', 'P', '654 Cedarwood St, City J', '5554443333', 'yuli.astuti@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(11, '1122334455667788', 'Budi Santoso', '1988-11-20', 'L', '789 Walnut St, City K', '1112223333', 'budi.santoso@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(12, '2233445566778899', 'Maria Dewi', '1990-01-30', 'P', '234 Elmwood St, City L', '9990001111', 'maria.dewi@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(13, '3344556677889900', 'David Smith', '1987-03-12', 'L', '987 Spruce St, City M', '8889990000', 'david.smith@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(14, '4455667788990011', 'Lina Sari', '1991-05-22', 'P', '567 Pineapple St, City N', '7778889999', 'lina.sari@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(15, '5566778899001122', 'Paul Tan', '1989-08-15', 'L', '876 Mango St, City O', '6667778888', 'paul.tan@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(16, '6677889900112233', 'Anita Wati', '1992-12-07', 'P', '234 Banana St, City P', '5556667777', 'anita.wati@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(17, '7788990011223344', 'Markus Hartono', '1986-02-09', 'L', '543 Lemon St, City Q', '4445556666', 'markus.hartono@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(18, '8899001122334455', 'Rani Kumala', '1993-04-18', 'P', '876 Grape St, City R', '3334445555', 'rani.kumala@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(19, '9900112233445566', 'Ryan Gunawan', '1985-07-21', 'L', '987 Apple St, City S', '2223334444', 'ryan.gunawan@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(20, '0011223344556677', 'Julia Sutanto', '1990-09-03', 'P', '654 Peach St, City T', '1112223333', 'julia.sutanto@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(21, '0022334455667788', 'Andreas Liu', '1987-11-25', 'L', '789 Plum St, City U', '9990001111', 'andreas.liu@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(22, '0033445566778899', 'Mira Handayani', '1991-01-15', 'P', '234 Pear St, City V', '8889990000', 'mira.handayani@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(23, '0044556677889900', 'Hendro Susanto', '1988-03-27', 'L', '987 Cherry St, City W', '7778889999', 'hendro.susanto@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(24, '0055667788990011', 'Cindy Halim', '1992-06-09', 'P', '876 Watermelon St, City X', '6667778888', 'cindy.halim@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(25, '0066778899001122', 'Edward Lim', '1989-08-31', 'L', '543 Papaya St, City Y', '5556667777', 'edward.lim@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(26, '0077889900112233', 'Rina Cahyani', '1993-11-13', 'P', '234 Avocado St, City Z', '4445556666', 'rina.cahyani@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(27, '0088990011223344', 'Hendra Setiawan', '1986-01-04', 'L', '987 Guava St, City AA', '3334445555', 'hendra.setiawan@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(28, '0099001122334455', 'Dewi Hartati', '1990-03-16', 'P', '876 Kiwi St, City AB', '2223334444', 'dewi.hartati@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(29, '1100112233445566', 'Tommy Wijaya', '1985-05-28', 'L', '654 Dragonfruit St, City AC', '1112223333', 'tommy.wijaya@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(30, '2211223344556677', 'Diana Tan', '1991-08-10', 'P', '789 Lychee St, City AD', '9990001111', 'diana.tan@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(31, '3322334455667788', 'Anton Budiman', '1987-10-22', 'L', '567 Durian St, City AE', '8889990000', 'anton.budiman@example.com', 'WNA', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(32, '4433445566778899', 'Ratna Sari', '1992-12-04', 'P', '876 Mangosteen St, City AF', '7778889999', 'ratna.sari@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(33, '5544556677889900', 'Hadi Purnomo', '1988-02-16', 'L', '234 Pomegranate St, City AG', '6667778888', 'hadi.purnomo@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(34, '5678901234567000', 'Wayan Suwitra', '1988-04-11', 'L', 'Jl. Nangka No. 17, Bali, Indonesia', '082234567800', 'wayan.suwitra@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(35, '6789012345678001', 'Ketut Arini', '1991-07-19', 'P', 'Jl. Subak No. 18, Bali, Indonesia', '082234567801', 'ketut.arini@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(36, '7890123456789002', 'I Nyoman Sugiarto', '1992-05-16', 'L', 'Jl. Lempuyang No. 19, Bali, Indonesia', '082234567802', 'nyoman.sugiarto@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(37, '8901234567890003', 'Made Putra', '1985-11-03', 'L', 'Jl. Kenyeri No. 20, Bali, Indonesia', '082234567803', 'made.putra@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(38, '9012345678901004', 'Ni Luh Ratna', '1989-08-14', 'P', 'Jl. Melasti No. 21, Bali, Indonesia', '082234567804', 'ni.luh.ratna@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(39, '0123456789012005', 'Joko Widodo', '1987-12-20', 'L', 'Jl. Merdeka Barat No. 22, Yogyakarta, Indonesia', '082234567805', 'joko.widodo@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(40, '1122334455663006', 'Rismawati', '1990-03-09', 'P', 'Jl. Wijaya Kusuma No. 23, Surabaya, Indonesia', '082234567806', 'rismawati@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(41, '2233445566774007', 'Andi Nugroho', '1992-10-05', 'L', 'Jl. Tentara Pelajar No. 24, Jakarta, Indonesia', '082234567807', 'andi.nugroho@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(42, '3344556677885008', 'Dian Permana', '1986-07-22', 'P', 'Jl. Jenderal Sudirman No. 25, Bandung, Indonesia', '082234567808', 'dian.permana@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(43, '4455667788996009', 'Yusuf Bachtiar', '1989-11-15', 'L', 'Jl. Imam Bonjol No. 26, Semarang, Indonesia', '082234567809', 'yusuf.bachtiar@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(44, '5566778899007010', 'Rina Puspita', '1991-02-28', 'P', 'Jl. Gajah Mada No. 27, Surabaya, Indonesia', '082234567810', 'rina.puspita@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(45, '6677889900118011', 'Haris Maulana', '1988-06-13', 'L', 'Jl. Suryo No. 28, Malang, Indonesia', '082234567811', 'haris.maulana@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(46, '7788990011229012', 'Lily Ramadhani', '1992-04-07', 'P', 'Jl. Hayam Wuruk No. 29, Medan, Indonesia', '082234567812', 'lily.ramadhani@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(47, '8899001122330023', 'Agus Widodo', '1985-09-19', 'L', 'Jl. Jenderal Gatot Subroto No. 30, Solo, Indonesia', '082234567813', 'agus.widodo@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(48, '9900112233441034', 'Tuti Suryani', '1989-03-24', 'P', 'Jl. Diponegoro No. 31, Pekanbaru, Indonesia', '082234567814', 'tuti.suryani@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(49, '0011223344552045', 'Asep Setiawan', '1986-05-31', 'L', 'Jl. Sisingamangaraja No. 32, Makassar, Indonesia', '082234567815', 'asep.setiawan@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22'),
(50, '0022334455663056', 'Sri Lestari', '1991-10-11', 'P', 'Jl. Sultan Agung No. 33, Palembang, Indonesia', '082234567816', 'sri.lestari@example.com', 'WNI', 1, '2024-06-13 13:48:22', '2024-06-13 13:48:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `feature_name` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `features`
--

INSERT INTO `features` (`id`, `feature_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'view', 1, '2024-06-13 13:53:43', '2024-06-13 13:53:46'),
(2, 'insert', 1, '2024-06-13 13:53:59', '2024-06-13 13:54:02'),
(3, 'update', 1, '2024-06-13 13:54:09', '2024-06-13 13:54:12'),
(4, 'delete', 1, '2024-06-13 13:54:19', '2024-06-13 13:54:22'),
(5, 'print', 1, '2024-06-13 13:54:28', '2024-06-13 13:54:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_name` varchar(15) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'page hrd', 1, '2024-06-13 13:55:24', '2024-06-13 13:55:27'),
(2, 'page_manager', 1, '2024-06-13 13:55:37', '2024-06-13 13:55:40'),
(3, 'page_it', 1, '2024-06-13 13:55:47', '2024-06-13 13:55:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL,
  `permission_name` varchar(255) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`menu_id`, `feature_id`, `permission_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'melihat_hrd', 'hrd lihat', 1, '2024-06-13 13:57:40', '2024-06-13 13:57:43'),
(1, 2, 'menambah_hrd', 'hrd tambah', 1, '2024-06-13 13:58:28', '2024-06-13 13:58:32'),
(1, 3, 'mengedit_hrd', 'hrd edit', 1, '2024-06-13 14:00:09', '2024-06-13 14:00:12'),
(1, 4, 'mengahpus_hrd', 'hrd hapus', 1, '2024-06-13 14:05:28', '2024-06-13 14:05:29'),
(1, 5, 'mencetak_hrd', 'hrd edit', 1, '2024-06-13 14:05:50', '2024-06-13 14:05:54'),
(2, 1, 'melihat_manager', 'manager lihat', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(2, 2, 'menambah_manager', 'manager tambah', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(2, 3, 'mengedit_manajer', 'manager edit', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(2, 4, 'menghapus_manager', 'manager hapus', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(2, 5, 'meencetak_manager', 'manager cetak', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(3, 1, 'melihat_it', 'it lihat', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(3, 2, 'menambah_it', 'it tambah', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(3, 3, 'mengedit_it', 'it edit', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(3, 4, 'menghapus_it', 'it hapus', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27'),
(3, 5, 'meencetak_it', 'it cetak', 1, '2024-06-13 14:08:27', '2024-06-13 14:08:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'HRD', 'hrd aaaaa', 1, '2024-06-13 13:50:07', '2024-06-13 13:50:10'),
(2, 'manajer', 'manajer aaaa', 1, '2024-06-13 13:50:25', '2024-06-13 13:50:28'),
(3, 'IT', 'it aaaaa', 1, '2024-06-13 13:50:57', '2024-06-13 13:50:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `menu_id`, `feature_id`, `assigned_at`) VALUES
(1, 1, 1, '2024-06-13 14:09:40'),
(2, 2, 2, '2024-06-13 14:09:46'),
(3, 3, 3, '2024-06-13 14:09:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `uk_employee_id` (`employee_id`),
  ADD UNIQUE KEY `uk_username` (`username`),
  ADD KEY `fk_role_id` (`role_id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_nik` (`nik`),
  ADD KEY `idx_full_name` (`full_name`);

--
-- Indeks untuk tabel `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_feature_name` (`feature_name`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_menu_name` (`menu_name`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`menu_id`,`feature_id`),
  ADD UNIQUE KEY `uk_permission_name` (`permission_name`),
  ADD KEY `fk_feature_id` (`feature_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`menu_id`,`feature_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_feature_id` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`),
  ADD CONSTRAINT `fk_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `permission_id` FOREIGN KEY (`menu_id`,`feature_id`) REFERENCES `permissions` (`menu_id`, `feature_id`),
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
