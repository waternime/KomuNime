-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 19 Okt 2022 pada 19.59
-- Versi server: 10.3.36-MariaDB-cll-lve
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komuni14_komunitas`
--
CREATE DATABASE IF NOT EXISTS `komuni14_komunitas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `komuni14_komunitas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `date_created`) VALUES
(8, 2, 9, 'test', '2022-10-09 21:57:08'),
(9, 3, 9, 'wow keren banget', '2022-10-10 15:06:28'),
(10, 2, 9, 'wkwk', '2022-10-10 15:08:53'),
(11, 5, 12, 'template buatan gw nih!!!', '2022-10-11 23:49:36'),
(12, 4, 13, 'woi', '2022-10-11 23:50:06'),
(13, 5, 13, 'template buatan gw nih woi!', '2022-10-11 23:50:19'),
(14, 4, 13, 'yang bener', '2022-10-11 23:50:26'),
(15, 5, 13, 'tolong siapapun yang punya website ini, segera takedown!', '2022-10-11 23:50:46'),
(16, 6, 13, 'ril cuy', '2022-10-11 23:53:07'),
(17, 7, 14, 'ya, anda siapa ?', '2022-10-12 00:03:33'),
(18, 4, 13, '<div style=\"color:red;\">test</div>', '2022-10-12 04:49:35'),
(19, 4, 13, '', '2022-10-12 04:49:35'),
(20, 4, 13, '<div style=\"position:fixed; height: 200px; background-color:black; bottom:0; left:0; right:0; text-align:center; color:white\">mwehehehe</div>', '2022-10-12 04:51:29'),
(21, 4, 15, '<div style=\"red; font-size:30px; text-align:center; background-color:black\">anjas kelas</div>', '2022-10-12 04:55:21'),
(22, 4, 16, '<div style=\"red; font-size:30px; text-align:center; background-color:black; color: red !important; font-weight:bold !important;\n    \">anjas kelas</div>', '2022-10-12 04:57:33'),
(23, 4, 16, '<div style=\"red; font-size:30px; text-align:center; background-color:black; color: red !important; font-weight:bold !important; border-radius: 20px;\">yoyooyo</div>', '2022-10-12 04:59:53'),
(24, 4, 17, '<div style=\"red; font-size:30px; text-align:center; background-color:black; color: red !important; font-weight:bold !important; border-radius: 20px;\">anjas kelas</div>', '2022-10-12 05:00:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `date_created`) VALUES
(10, 2, 9, '2022-10-09 21:56:57'),
(12, 3, 9, '2022-10-10 15:07:09'),
(13, 2, 10, '2022-10-10 15:08:48'),
(22, 4, 10, '2022-10-11 23:35:12'),
(23, 4, 11, '2022-10-11 23:43:41'),
(24, 4, 12, '2022-10-11 23:45:42'),
(25, 5, 12, '2022-10-11 23:47:25'),
(26, 4, 13, '2022-10-11 23:49:06'),
(28, 4, 15, '2022-10-12 04:54:45'),
(29, 4, 16, '2022-10-12 04:57:32'),
(30, 4, 17, '2022-10-12 05:00:07'),
(32, 4, 9, '2022-10-12 05:00:37'),
(34, 4, 14, '2022-10-12 07:04:15'),
(36, 8, 10, '2022-10-13 17:52:47'),
(38, 2, 17, '2022-10-14 02:45:10'),
(39, 2, 14, '2022-10-14 02:45:30'),
(40, 13, 14, '2022-10-16 21:24:45'),
(41, 2, 19, '2022-10-19 19:31:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `content` text NOT NULL,
  `type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `type`, `date_created`) VALUES
(9, 2, 'Hai', 0, '2022-10-09 21:56:49'),
(10, 3, 'Camp Nou', 0, '2022-10-10 15:07:00'),
(14, 5, 'test, halo halo', 0, '2022-10-11 23:52:04'),
(17, 4, '', 0, '2022-10-12 05:00:02'),
(19, 2, 'Test Video 30 detik 7kb:\r\nLink Video : https://www.youtube.com/watch?v=KXCDU-35qzE', 0, '2022-10-19 19:30:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `status` int(1) NOT NULL,
  `bio` text NOT NULL,
  `profile_pic` text NOT NULL,
  `cover_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `dob`, `status`, `bio`, `profile_pic`, `cover_pic`, `date_created`) VALUES
(2, 'hadi', 'kurniawan', 'Male', '0484484844844', 'Tangerang', 'hadikurniawan@gmail.com', '4f2ab1ba30c16ebc136a26e38dae4ca3', '2022-01-01', 1, 'Saya seorang wibu', '1665327240_e414e9df60569180edbde9f54a229adf.jpeg', '1665327240_ss.png', '2022-10-09 21:52:52'),
(3, 'muamar', 'danu', 'Male', '081289889283', 'duta bintaro d2 no  61', 'muamar.prian@student.umn.ac.id', '25d55ad283aa400af464c76d713c07ad', '2022-01-01', 1, 'athlete', '1665389220_download.jfif', '1665389220_Fc Barcelona Wallpaper 4K Pc Trick.jfif', '2022-10-10 15:05:44'),
(4, 'Atras', 'Shalhan', 'Male', '081208120812', 'VMP C5/20', 'atrasshalhan@gmail.com', '1ef6434eed5bf349ad5cf0cb20dee8d1', '2022-01-01', 1, 'Yo...', '1665486480_signature.jpg', '1665506220_kecoa.png', '2022-10-11 18:06:22'),
(5, 'ghehe', 'hehe', 'Male', 'gada', 'gada', 'test@gmail.com', '7bb2cfe87c770897bb9efb2b9b074f5a', '2002-01-01', 2, 'gada\r\n', '', '', '2022-10-11 23:46:38'),
(6, 'Loli', 'hehe', 'Male', 'test', 'hehe', 'test@email.com', '827ccb0eea8a706c4c34a16891f84e7b', '2004-01-01', 1, 'ya', '1665507120_ðŸŽ€ chocolala on Twitter.jfif', '1665507120_ilLUMI on Twitter.jpg', '2022-10-11 23:52:01'),
(7, '', '', 'Female', 'asd', 'asd', '', '', '2022-01-01', 1, 'asd', '1665507780_jojoooo.jpg', '1665507780_jojoooo.jpg', '2022-10-12 00:03:00'),
(8, 'arrafi', 'adji', 'Male', '089854324', 'jl. salira 1', 'gggeming@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-01-01', 1, 'gg gimank', '', '', '2022-10-13 17:51:10'),
(9, 'arrafi', 'adji', 'Female', '0893497682', '', 'gggimang@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-01-01', 1, '', '', '', '2022-10-13 17:53:44'),
(10, 'ghehe', 'hehe', 'Male', 'he', '', 'testt@gmail.com', 'ffe553694f5096471590343432359e02', '2002-01-01', 1, '', '', '', '2022-10-13 18:11:17'),
(11, 'saya', '', 'Female', 'dsfadsf', 'fasfaf', 'sayakucing@gmail.com', '20c1a26a55039b30866c9d0aa51953ca', '2022-01-01', 1, 'gsdgsdg', '', '', '2022-10-14 00:17:25'),
(12, 'saya', '', 'Male', 'dsfadsf', '12321', 'farrelrajwa29@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2022-01-01', 1, '412412412', '', '', '2022-10-14 23:43:23'),
(13, 'alfin', 'sap', 'Male', '0878545677763 ', 'tangerang', 'alfinsap@gmail.com', 'fa8f30f3bd2c725f6265d143676f0aa5', '2001-01-01', 1, 'sans', '1665930180_Raka Barajasena_00000063511.jpg', '1665930180_Muamar Prian Danu_00000064559.jpg', '2022-10-16 21:22:10'),
(14, 'yayoi', 'hanoi', 'Female', 't33535', 'advabadbadb', 'yayoi123@gmail.com', '76671d4b83f6e6f953ea2dfb75ded921', '2022-01-01', 1, 'dadbadbadb', '1666182000_84144347_p0_master1200.jpg', '1666182000_sss.png', '2022-10-19 19:19:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
