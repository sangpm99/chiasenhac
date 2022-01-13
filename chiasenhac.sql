-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 10:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chiasenhac`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(10) NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_word` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user_name`, `pass_word`, `active`) VALUES
(1, 'admin', 'admin', '1'),
(2, 'sang', 'sang', '1'),
(3, 'truong', 'truong', '1'),
(4, 'thuat', 'thuat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `album_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_song` int(10) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'featured_song'),
(2, 'newest_album_2022'),
(3, 'newest_share'),
(4, 'newest_download'),
(5, 'newest_album'),
(6, 'newest_video'),
(7, 'rank_vn'),
(8, 'rank_usuk'),
(9, 'rank_kpop'),
(10, 'rank_jpop'),
(11, 'rank_upload'),
(12, 'favorite_singer');

-- --------------------------------------------------------

--
-- Table structure for table `singer`
--

CREATE TABLE `singer` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `singer`
--

INSERT INTO `singer` (`id`, `full_name`, `image`) VALUES
(1, 'Dunghoangpham', './assets/images/dunghoangpham.jpg'),
(2, 'Obito', './assets/images/obito.jpg'),
(3, 'IU', './assets/images/iu.jpg'),
(4, 'NCT', './assets/images/nct.jpg'),
(5, 'SMTOWN', './assets/images/sm.jpg'),
(6, 'Tóc Tiên', './assets/images/toctien.jpg'),
(7, 'Blacka', './assets/images/blacka.jpg'),
(8, 'Quang Lê', './assets/images/quangle.jpg'),
(9, 'Stray Kids', './assets/images/straykids.jpg'),
(10, 'Ngọc Anh', './assets/images/ngocanh.jpg'),
(11, 'Lâm Sung', './assets/images/lamsung.jpg'),
(12, 'Jay Park', './assets/images/jaypark.jpg'),
(13, 'Thương Võ', './assets/images/thuongvo.jpg'),
(14, 'Kinoshita Momoka', './assets/images/csn.jpg'),
(15, 'Văn Mai Hương', './assets/images/vanmaihuong.jpg'),
(16, 'Vũ Duy Khánh', './assets/images/vuduykhanh.jpg'),
(17, 'Danh Phạm', './assets/images/danhpham.jpg'),
(18, 'Barry Nam Bảo', './assets/images/barrynambao.jpg'),
(19, 'Huy Tùng', './assets/images/huytung.jpg'),
(20, 'Chấn Hào', './assets/images/chanhao.jpg'),
(21, 'Kep1er', './assets/images/csn.jpg'),
(22, 'B-Wine', './assets/bwine.jpg'),
(23, 'Hồng Phượng', './assets/images/hongphuong.jpg'),
(24, 'Minh Vương M4U', './assets/images/minhvuongm4u'),
(25, 'Ycccc', './assets/csn.jpg'),
(26, 'Juice WRLD', './assets/images/juicewrld.jpg'),
(27, 'Various Artists', './assets/images/csn');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `id` int(10) NOT NULL,
  `song_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_singer` int(10) NOT NULL,
  `song_date` date DEFAULT NULL,
  `song_view` int(100) NOT NULL,
  `song_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(10) NOT NULL,
  `quality` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `song_name`, `id_singer`, `song_date`, `song_view`, `song_image`, `music`, `id_category`, `quality`) VALUES
(1, 'Đế Vương (Single)', 1, '2022-01-01', 500000, './assets/images/devuong-single.jpg', './assets/music/devuong.mp3', 1, 'Lossless'),
(2, 'Rap Việt Session 2: Tập 10', 2, '2022-01-01', 492831, './assets/images/rapviet.jpg', './assets/music/rapvietmua2tap10.mp3', 1, 'lossless'),
(3, 'Pieces (EP)', 3, '2022-01-02', 487673, './assets/images/pieces(ep).jpg', './assets/music/pieces(ep).mp3', 1, 'lossless'),
(4, '2021 Winter SMTOWN : SMCU EXPRESS', 4, '2022-01-02', 474673, './assets/images/smtown.jpg', './assets/music/smtown.mp3', 1, 'lossless'),
(5, 'Universe - The 3rd Album', 5, '2022-01-02', 464673, './assets/images/universe.jpg', './assets/music/universe.mp3', 1, 'lossless'),
(6, 'Yêu Rồi Yêu Rồi Yêu - EP', 6, '2022-01-02', 452231, './assets/images/minhyeudendaythoi.jpg', './assets/music/yeuroiyeu.mp3', 1, 'lossless'),
(7, 'Rap Việt Session 2: Tập 9', 7, '2022-01-02', 442231, './assets/images/rapviet.jpg', './assets/music/rapvietmua2tap9.mp3', 1, 'lossless'),
(8, 'Đôi Mắt Người Xưa', 8, '2022-01-02', 432231, './assets/images/doimatnguoixua.jpg', './assets/music/doimatnguoixua.mp3', 1, 'lossless'),
(10, 'SKZ2021', 9, '2022-01-02', 412378, './assets/images/skz2021.jpg', './assets/music/skz2021.mp3', 1, 'lossless'),
(11, 'Bại Tướng (Single)', 10, '2022-01-02', 402238, './assets/images/baituong.jpg', './assets/music/baituong(single).mp3', 1, 'lossless'),
(12, 'Chẳng Hiểu Vì Sao', 11, '2022-01-02', 782238, './assets/images/changhieuvisao.jpg', './assets/music/changhieuvisao.mp3', 2, 'lossless'),
(13, 'To Life (Single)', 12, '2022-01-02', 767892, './assets/images/tolife.jpg', './assets/music/tolife.mp3', 2, 'lossless'),
(14, 'Em Say Rồi', 13, '2022-01-02', 765676, './assets/images/emsayroi.jpg', './assets/music/emsayroi.mp3', 2, 'lossless'),
(15, 'Ecchinakoto', 14, '2022-01-02', 750902, './assets/images/ecchinakoto.jpg', './assets/music/ecchinakoto.mp3', 2, 'lossless'),
(16, 'Let Talk About Love', 15, '2022-01-02', 740902, './assets/images/lettalkaboutlove.jpg', './assets/music/lettalkaboutlove.mp3', 2, 'lossless'),
(17, 'Lựa Chọn Của Em (Cover)', 16, '2022-01-02', 700222, './assets/images/luachoncuaem.jpg', './assets/music/luachoncuaem.mp3', 2, 'lossless'),
(18, 'Vẫn Chưa Quên (Single)', 17, '2022-01-02', 550923, './assets/images/vanchuaquen.jpg', './assets/music/vanchuaquen.mp3', 2, 'lossless'),
(19, 'Lối Đi Về Cô Đơn', 18, '2022-01-02', 520923, './assets/images/loidivecodon.jpg', './assets/music/loidivecodon.mp3', 2, 'lossless'),
(20, 'Ta Chẳng Thấy Nhau', 19, '2022-01-02', 508231, './assets/images/tachangthaynhau.jpg', './assets/music/tachangthaynhau.mp3', 2, 'lossless'),
(21, 'Ta Là Gì Của Nhau', 20, '2022-01-02', 356431, './assets/images/talagicuanhau.jpg', './assets/music/talagicuanhau.mp3', 2, 'lossless'),
(22, 'FIRST IMPACT (EP)', 21, '2022-01-05', 354234, './assets/images/firstimpact.jpg', './assets/music/firstimpact.mp3', 1, 'Lossless'),
(23, 'Rap Việt Session 2: Tập 11', 22, '2022-01-05', 450123, './assets/images/rapviet.jpg', './assets/rapvietmua2tap11', 1, 'Lossless'),
(24, 'Hương Tình Bến Tre', 23, '2022-01-05', 234323, './assets/images/huongtinhbentre.jpg', './assets/music/huongtinhbentre.mp3', 1, 'Lossless'),
(25, 'Hẹn Yêu (Single)', 24, '2022-01-05', 345455, './assets/images/henyeu.jpg', './assets/music/henyeu.mp3', 1, 'Lossless'),
(26, 'Em Nào Có Tội (Vinahouse) (Single)', 13, '2022-01-05', 346572, './assets/images/emnaocotoi.jpg', './assets/music/emnaocotoi.mp3', 1, 'Lossless'),
(27, 'Bầu Trời Đầy Sao Không Bằng Anh (满天星辰不及你) (EP)', 25, '2022-01-05', 234335, './assets/images/bautroidaysaokhongbanganh.jpg', '.assets/music/bautroidaysaokhongbanganh.mp3', 1, 'Lossless'),
(28, 'Fighting Demons', 26, '2022-01-05', 122121, './assets/images/fightingdemons.jpg', './assets/music/fightingdemons.jpg', 1, 'Lossless'),
(29, 'Melancholia (OST)', 27, '2022-01-05', 122212, './assets/images/melancholia.jpg', './assets/music/melancholia.mp3', 1, 'Lossless'),
(30, 'Gió Mát Trăng Thanh Hoa Đua Nở (清风朗月花正开 影视原声带) (OST)', 27, '2022-01-05', 112322, './assets/images/giomattrangthanhhoaduano.jpg', './assets/music/giomattrangthanhhoaduano.mp3', 1, 'Lossless'),
(31, 'Rap Việt Session 2: Tập 8', 22, '2022-01-05', 123123, './assets/images/rapviet.jpg', './assets/music/rapvietmua2tap8', 1, 'Lossless');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SONG` (`id_song`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `singer`
--
ALTER TABLE `singer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SINGER` (`id_singer`),
  ADD KEY `FK_CATAGORY` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `singer`
--
ALTER TABLE `singer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FK_SONG` FOREIGN KEY (`id_song`) REFERENCES `song` (`id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `FK_CATAGORY` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_SINGER` FOREIGN KEY (`id_singer`) REFERENCES `singer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
