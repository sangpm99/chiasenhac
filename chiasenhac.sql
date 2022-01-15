-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 06:18 AM
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
  `pass_word` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user_name`, `pass_word`) VALUES
(1, 'admin', 'admin'),
(2, 'sang', 'admin'),
(3, 'truong', 'admin'),
(4, 'thuat', 'admin');

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
  `full_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `singer`
--

INSERT INTO `singer` (`id`, `full_name`, `image`) VALUES
(1, 'B-wine', './assets/images/bwine.jpg'),
(2, 'Châu Khải Phong', './assets/images/chaukhaiphong.jpg'),
(3, 'The Weeknd', './assets/images/csn.jpg'),
(4, 'Kep1er', './assets/images/kept1er.jpg'),
(5, 'ycccc', './assets/images/csn.jpg'),
(7, 'Vsoul', './assets/images/csn.jpg'),
(8, 'Dlow', './assets/images/csn.jpg'),
(9, 'Minh Vương M4U', './assets/images/minhvuongm4u.jpg'),
(10, 'Tóc Tiên', './assets/images/toctien.jpg'),
(11, 'INTO1', './assets/images/csn.jpg'),
(12, 'Hồng Tường Vy', './assets/images/csn.jpg'),
(13, 'Phòng Đông Đích Miêu', './assets/images/csn.jpg'),
(14, 'Kura', './assets/images/csn.jpg'),
(15, 'Đại Kha', './assets/images/csn.jpg'),
(16, 'Trần Thụy', './assets/images/tranthuy.jpg'),
(17, 'Đình Dũng', './assets/images/dinhdung.jpg'),
(18, 'Leandro Da Silva', './assets/images/csn.jpg'),
(19, 'Miyeon (G)I-DLE', './assets/images/csn.jpg'),
(20, 'An Chỉ Nghi', './assets/images/csn.jpg'),
(21, 'Dyryth', './assets/images/csn.jpg'),
(22, 'Dương Tử', './assets/images/csn.jpg'),
(23, 'Changmin', './assets/images/csn.jpg'),
(24, 'Châu Bút Sướng', './assets/images/csn.jpg'),
(25, 'Ai Higuchi', './assets/images/csn.jpg'),
(26, 'Bùi Công Nam', './assets/images/buicongnam.jpg'),
(27, 'Quỳnh Trang', './assets/images/quynhtrang.jpg'),
(28, 'Thanh Lan', './assets/images/thanhlan.jpg'),
(29, 'Đàm Tinh', './assets/images/csn.jpg'),
(30, 'Shine Thành Anh', './assets/images/csn.jpg'),
(31, 'Trương Khải Minh', './assets/images/truongkhaiminh.jpg'),
(32, 'Bằng Cường', './assets/images/bangcuong.jpg'),
(41, 'Miu Lê', './assets/images/miule.jpg'),
(42, 'Nguyễn Đức', './assets/images/nguyenduc.jpg'),
(43, 'Nirvana', './assets/images/nirvana.jpg'),
(44, 'Macklemore', './assets/images/macklemore.jpg'),
(45, 'Như Việt', './assets/images/nhuviet.jpg'),
(46, 'Madilyn Bailey', './assets/images/madilynbailey.jpg'),
(47, 'Sha Băng', './assets/images/shabang.jpg'),
(48, 'Thạch Thảo', './assets/images/csn.jpg'),
(49, 'Đại Thúc Lão Trương', './assets/images/csn.jpg'),
(50, 'Lưu Ánh Loan', './assets/images/luuanhloan.jpg'),
(51, 'Lưu Nghiên Phi', './assets/images/csn.jpg'),
(52, '7UPPERCUTS', './assets/images/csn.jpg'),
(53, 'Hanabie', './assets/images/csn.jpg'),
(54, 'Song Nhi', './assets/images/songnhi.jpg'),
(55, 'Đại Mễ', './assets/images/csn.jpg'),
(56, 'Valorant', './assets/images/csn.jpg'),
(57, 'Meat Source Media', './assets/images/csn.jpg'),
(58, 'Đen', './assets/images/den.jpg'),
(59, 'Hoàng Thùy Linh', './assets/images/hoangthuylinh.jpg'),
(60, 'Khói', './assets/images/khoi.jpg'),
(61, 'Lê Bảo Bình', './assets/images/lebaobinh.jpg'),
(62, 'Dung Hoàng Phạm', './assets/images/dunghoangpham.jpg'),
(63, 'Chu Thúy Quỳnh', './assets/images/csn.jpg'),
(64, 'Na', './assets/images/csn.jpg'),
(65, 'Quân A.P', './assets/images/quanap.jpg'),
(66, 'Rin', './assets/images/csn.jpg'),
(67, 'Thái Học', './assets/images/thaihoc.jpg'),
(68, 'Vũ Phụng Tiên', './assets/images/vuphungtien.jpg'),
(69, 'Alesso', './assets/images/alesso.jpg'),
(70, 'V-BTS', './assets/images/vbts.jpg'),
(71, 'Shawn Mendes', './assets/images/shawnmendes.jpg'),
(72, 'Alan Walker', './assets/images/csn.jpg'),
(73, 'Adele', './assets/images/adele.jpg'),
(74, 'Avril Lavigne', './assets/images/avrillavigne.jpg'),
(75, 'GOT The Beat', './assets/images/gotthebeat.jpg'),
(76, 'ENHYPEN', './assets/images/enhypen.jpg'),
(77, 'IVE', './assets/images/ive.jpg'),
(78, 'Hyolyn', './assets/images/hyolyn.jpg'),
(79, 'aespa', './assets/images/aespa.jpg'),
(80, '10cm', './assets/images/10cm.jpg'),
(81, 'Changmin', './assets/images/changmin.jpg'),
(82, 'JO1', './assets/images/jo1.jpg'),
(83, 'Ai Higuchi', './assets/images/aihiguchi.jpg'),
(84, 'Aimer', './assets/images/aimer.jpg'),
(85, 'Twice', './assets/images/twice.jpg'),
(86, 'Vaundy', './assets/images/vaundy.jpg'),
(87, 'Da-iCE', './assets/images/daice.jpg'),
(88, 'Shiratori Kotori', './assets/images/shiratorikotori.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `id` int(10) NOT NULL,
  `song_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_singer` int(10) NOT NULL,
  `song_date` date NOT NULL,
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
(1, 'Rap việt mùa 2 tập 11', 1, '2022-01-03', 500000, './assets/images/rapviet.jpg', './assets/music/rapviet11.mp3', 1, 'Lossless'),
(2, 'Không trọn vẹn nữa', 2, '2022-01-10', 450123, './assets/images/khongtronvennua.jpg', './assets/music/khongtronvennua.mp3', 1, 'Lossless'),
(3, 'Dawn FM', 3, '2021-12-15', 508231, './assets/images/dawnfm.jpg', './assets/music.dawnfm.mp3', 1, 'Lossless'),
(4, 'First Impact', 4, '2022-01-11', 354234, './assets/images/firstimpact.jpg', './assets/music/firstimapact.mp3', 1, 'Lossless'),
(5, 'Bầu trời đầy sao không bằng anh', 5, '2022-01-03', 354234, './assets/images/bautroidaysaokhongbanganh.jpg', './assets/music/bautroidaysaokhongbanganh/mp3', 1, 'Lossless'),
(6, 'Đế Vương', 17, '2022-01-06', 432343, './assets/images/devuong.jpg', './assets/music/devuong.mp3', 2, 'Lossless'),
(7, 'Rap việt mùa 2 tập 11', 7, '2022-01-10', 520923, './assets/images/rapviet.jpg', './assets/images/rapviet11.mp3', 1, 'Lossless'),
(8, 'Rap việt mùa 2 tập 13', 8, '2022-01-01', 354234, './assets/images/rapviet.jpg', './assets/music/rapviet13', 1, 'Lossless'),
(9, 'Hẹn Yêu', 9, '2021-12-24', 450123, './assets/images/henyeu.jpg', './assets/music/henyeu.mp3', 1, 'Lossless'),
(10, 'Yêu rồi yêu', 10, '2021-12-22', 128372, './assets/images/yeuroiyeu.jpg', './assets/music/yeuroiyeu.mp3', 1, 'Lossless'),
(11, 'Vạn Dặm', 11, '2021-10-05', 508231, './assets/images/vandam.jpg', './assets/music/vandam.mp3', 1, 'Lossless'),
(12, 'Chúc Mừng Năm Mới An Khang Thịnh Vượng', 12, '2022-01-03', 342543, './assets/images/chucmungnammoiankhangthingvuong.jpg', './assets/music/chucmungnammoiankhangthingvuong.mp3', 2, 'Lossless'),
(13, 'Là Khát Vọng Tình Yêu', 13, '2022-01-09', 123221, './assets/images/lakhatvongtinhyeu.jpg', './assets/music/lakhatvongtinhyeu.mp3', 2, 'Lossless'),
(14, 'In my house', 14, '2021-12-21', 223243, './assets/images/inmyhouse.jpg', './assets/music/inmyhouse.mp3', 2, 'Lossless'),
(15, 'Tình Nguyện', 15, '2021-12-17', 122321, './assets/images/tinhnguyen.jpg', './assets/music/tinhnguyen.mp3', 2, 'Lossless'),
(16, 'Tâm Hữu Dư Ôn', 16, '2022-01-12', 109232, './assets/images/tamhuuduon.jpg', './assets/images/tamhuuduon.mp3', 2, 'Lossless'),
(17, 'La Banda Boulevard', 18, '2022-01-04', 8979, './assets/images/labandaboulevard.jpg', './assets/music/labandaboulevard.mp3', 2, 'Lossless'),
(18, 'Imagine Love', 19, '2022-01-01', 234334, './assets/images/imaginelove.jpg', './assets/music/imaginelove.mp3', 2, 'Lossless'),
(19, 'Khắc Tên Bạn Vào Các Vì Sao', 20, '2022-01-11', 182122, './assets/images/khactenbanvaocacvisao.jpg', './assets/music/khactenbanvaocacvisao.mp3', 2, 'Lossless'),
(20, 'The Outcast', 21, '2022-01-03', 122322, './assets/images/theoutcast.jpg', './assets/music/theoutcast.mp3', 2, 'Lossless'),
(21, 'Bậc Thầy Tâm Lý', 22, '2022-01-08', 342546, './assets/images/bacthaytamly.jpg', './assets/music/bacthaytamly.mp3', 2, 'Lossless'),
(22, 'Air Planemode', 23, '2022-01-11', 232123, './assets/images/airplanemode.jpg', './assets/music/airplanemode.mp3', 3, 'Lossless'),
(23, 'Đừng coi tui chỉ là một chú cừu', 24, '2021-12-14', 129899, './assets/images/dungcoituichilamotchucuu.jpg', './assets/music/dungcoituichilamotchucuu.mp3', 3, 'Lossless'),
(24, 'Massarana Daichi', 25, '2022-01-03', 122342, './assets/images/massaranadaichi.jpg', './assets/music/massaranadaichi.mp3', 3, 'Lossless'),
(25, 'Tết Này Con Sẽ Về ', 26, '2021-11-19', 129876, './assets/images/tetnayconseve.jpg', './assets/music/tetnayconseve.mp3', 3, 'Lossless'),
(26, 'Mẹ Về Thiên Thu', 27, '2022-01-03', 122321, './assets/images/mevethienthu.jpg', './assets/music/mevethienthu.mp3', 3, 'Lossless'),
(28, 'Thung Lũng Hồng', 28, '2021-11-16', 122781, './assets/images/thunglunghong.jpg', './assets/music/thunglunghong.mp3', 3, 'Lossless'),
(29, 'Xuân Thu Đông Hạ', 29, '2022-01-12', 1192, './assets/images/xuanthudongha.jpg', './assets/music/xuanthudongha.mp3', 3, 'Lossless'),
(30, 'Tình Cờ Gặp Cố Tình Yêu', 30, '2022-01-03', 11232, './assets/images/tinhcogapcotinhyeu.jpg', './assets/music/tinhcogapcotinhyeu.mp3', 3, 'Lossless'),
(31, 'Biết Em Thương Người Khác', 31, '2021-12-21', 12121, './assets/images/bietemthuongnguoikhac.jpg', './assets/music/bietemthuongnguoikhac.mp3', 3, 'Lossless'),
(32, 'Tâm Tư', 32, '2021-12-31', 1223, './assets/images/tamtu.jpg', './assets/music/tamtu.mp3', 3, 'Lossless'),
(33, 'Thương Cho Ngọt Cho Bùi', 41, '2022-01-11', 233123, './assets/images/thuongchongotchobui.jpg', './assets/music/thuongchongotchobui.mp3', 4, 'Lossless'),
(34, 'Triều Châu', 42, '2021-11-18', 354234, './assets/images/trieuchau.jpg', './assets/images/trieuchau.mp3', 4, 'Lossless'),
(35, 'On A Plain', 43, '2021-10-12', 450123, './assets/images/onaplain.jpg', './assets/music/onaplain.mp3', 4, 'Lossless'),
(36, 'Thrift Shop', 44, '2021-10-04', 500000, './assets/images/thriftshop.jpg', './assets/images/thriftshop.mp3', 4, 'Lossless'),
(37, 'Stay Away', 43, '2021-08-17', 520923, './assets/images/stayaway.jpg', './assets/music/stayaway.mp3', 4, 'Lossless'),
(38, 'Thầm Thương Trộm Nhớ', 41, '2021-09-02', 128372, './assets/images/thamthuongtromnho.jpg', './assets/music/thamthuongtromnho.mp3', 4, 'Lossless'),
(39, 'Lounge Act', 43, '2021-10-04', 354234, './assets/images/loungeact.jpg', './assets/music/loungeact.mp3', 4, 'Lossless'),
(40, 'Em Hứa Thế Nào', 45, '2021-08-08', 450123, './assets/images/emhuathenao.jpg', './assets/music/emhuathenao.mp3', 4, 'Lossless'),
(41, 'Wildest Dreams', 46, '2021-12-06', 520923, './assets/images/wildestdreams.jpg', './assets/music/wildestdreams.mp3', 4, 'Lossless'),
(42, 'Em Tin Là Anh Sai', 47, '2021-10-13', 508231, './assets/images/emtinlaanhsai.jpg', './assets/music/emtinlaanhsai.mp3', 4, 'Lossless'),
(43, 'Thầm Lặng', 48, '2021-09-06', 354234, './assets/images/thamlang.jpg', './assets/music/thamlang.mp3', 5, 'Lossless'),
(44, 'Bài Hát Tội Lỗi', 49, '2021-09-01', 319424, './assets/images/baihattoiloi.jpg', './assets/music/baihattoiloi.mp3', 5, 'Lossless'),
(45, 'Không Bao Giờ Quên Anh', 50, '2021-11-03', 974637, './assets/images/khongbaogioquenanh.jpg', './assets/music/khongbaogioquenanh.mp3', 5, 'Lossless'),
(46, 'Chửi Thề', 51, '2021-12-30', 365630, './assets/images/chuithe.jpg', './assets/music/chuithe.mp3', 5, 'Lossless'),
(47, 'Yêu', 52, '2022-01-08', 309787, './assets/images/yeu.jpg', './assets/music/yeu.mp3', 5, 'Lossless'),
(48, 'Cherry Blossoms Are Blooming', 53, '2022-01-02', 979412, './assets/images/cherryblossomsareblooming.jpg', './assets/music/cherryblossomsareblooming.mp3', 5, 'Lossless'),
(49, 'Khác Biệt', 54, '2021-07-04', 335149, './assets/images/khacbiet.jpg', './assets/music/khacbiet.mp3', 5, 'Lossless'),
(50, 'Tâm Khẩu Bất Nhất', 55, '2021-08-12', 169065, './assets/images/tamkhaubatnhat.jpg', './assets/music/tamkhaubatnhat.mp3', 5, 'Lossless'),
(51, 'Drip', 56, '2021-09-08', 121241, './assets/images/drip.jpg', './assets/music/drip.mp3', 5, 'Lossless'),
(52, 'Superkick Party', 57, '2021-06-07', 984360, './assets/images/superkickparty.jpg', './assets/music/superkickparty.mp3', 5, 'Lossless'),
(53, 'Xem Như Em Chẳng May', 63, '2021-08-10', 708399, './assets/images/xemnhuemchangmay.jpg', './assets/images/xemnhuemchangmay.mp3', 7, 'Lossless'),
(54, 'Mang Tiền Về Cho Mẹ', 58, '2022-01-03', 154411, './assets/images/mangtienvechome.jpg', './assets/music/mangtienvechome.mp3', 7, 'Lossless'),
(55, 'Đế Vương', 62, '2021-10-06', 211279, './assets/images/devuong.jpg', './assets/music/devuong.mp3', 7, 'Lossless'),
(56, 'Gieo Quẻ', 59, '2021-11-18', 137440, './assets/images/gieoque.jpg', './assets/music/gieoque.mp3', 7, 'Lossless'),
(57, 'Là Do Em Xui Thôi', 60, '2021-07-12', 639530, './assets/images/ladoemxuithoi.jpg', './assets/music/ladoemxuithoi.mp3', 7, 'Lossless'),
(58, 'Thương Em Đến Già', 61, '2021-10-06', 128372, './assets/images/thuongemdengia.jpg', './assets/music/thuongemdengia.mp3', 7, 'Lossless'),
(59, 'Không Bằng', 66, '2021-09-08', 508231, './assets/images/khongbang.jpg', './assets/music/khongbang.mp3', 7, 'Lossless'),
(60, 'Phản Bội Chính Mình', 65, '2022-01-06', 480402, './assets/images/phanboichinhminh.jpg', './assets/music/phanboichinhminh.mp3', 7, 'Lossless'),
(61, 'Lỡ Hẹn Với Dòng Lam', 67, '2021-11-16', 139137, './assets/images/csn.jpg', './assets/music/lohenvoidonglam.mp3', 7, 'Lossless'),
(62, 'Lưu Số Em Đi', 68, '2021-09-05', 467534, './assets/images/luusoemdi.jpg', './assets/music/luusoemdi.mp3', 7, 'Lossless'),
(63, 'When I\'m Gone', 69, '2021-08-08', 209671, './assets/images/whenimgone.jpg', './assets/music/whenimgone.mp3', 8, 'Lossless'),
(64, 'Christmas Tree', 70, '2021-09-06', 322878, './assets/images/christmastree.jpg', './assets/music/christmastree.mp3', 8, 'Lossless'),
(65, 'Is There Someone Else', 3, '2021-07-04', 170768, './assets/images/istheresomeoneelse.jpg', './assets/music/istheresomeoneelse.mp3', 8, 'Lossless'),
(66, 'It\'ll Be Okay', 71, '2021-09-05', 355914, './assets/images/itllbeokay.jpg', './assets/music/itllbeokay.mp3', 8, 'Lossless'),
(67, 'On My Way', 72, '2021-12-27', 316050, './assets/images/onmyway.jpg', './assets/music/onmyway.mp3', 8, 'Lossless'),
(68, 'Man Of The Moon', 72, '2022-01-05', 253659, './assets/images/manofthemoon.jpg', './assets/music/manofthemoon.mp3', 8, 'Lossless'),
(69, 'Less Than Zero', 3, '2021-07-11', 521098, './assets/images/lessthanzero.jpg', './assets/music/lessthanzero.mp3', 8, 'Lossless'),
(70, 'Don\'t Break My Heart', 3, '2021-11-04', 570468, './assets/images/dontbreakmyheart.jpg', './assets/music/dontbreakmyheart.mp3', 8, 'Lossless'),
(71, 'Oh My God', 73, '2022-01-08', 256175, './assets/images/ohmygod.jpg', './assets/music/ohmygod.mp3', 8, 'Lossless'),
(72, 'Love It When You Hate Me', 74, '2021-11-11', 594712, './assets/images/loveitwhenyouhateme.jpg', './assets/music/loveitwhenyouhateme.mp3', 8, 'Lossless'),
(73, 'Step Back', 75, '2022-01-01', 312238, './assets/images/stepback.jpg', './assets/music/stepback.mp3', 9, 'Lossless'),
(74, 'WA DA DA', 4, '2022-01-03', 445142, './assets/images/wadada.jpg', './assets/music/wadada.mp3', 9, 'Lossless'),
(75, 'Polaroid Love', 76, '2022-01-09', 242230, './assets/images/polaroidlove.jpg', './assets/music/polaroidlove.mp3', 9, 'Lossless'),
(76, 'Eleven', 77, '2021-12-30', 148508, './assets/images/eleven.jpg', './assets/music/eleven.mp3', 9, 'Lossless'),
(77, 'Blessed-Cursed', 76, '2021-10-04', 461889, './assets/images/blessedcursed.jpg', './assets/music/blessedcursed.mp3', 9, 'Lossless'),
(78, 'Layin\' Low', 78, '2021-10-03', 589586, './assets/images/layinlow.jpg', './assets/music/layinlow.mp3', 9, 'Lossless'),
(79, 'Dreams Come True', 79, '2021-07-04', 566276, './assets/images/dreamscometrue.jpg', './assets/music/dreamscometrue.mp3', 9, 'Lossless'),
(80, 'Drawer', 80, '2021-09-06', 509822, './assets/images/drawer.jpg', './assets/music/drawer.mp3', 9, 'Lossless'),
(81, 'Devil', 81, '2021-08-09', 440892, './assets/images/devil.jpg', './assets/music/devil.mp3', 9, 'Lossless'),
(82, 'Fever', 81, '2021-09-06', 477408, './assets/images/fever.jpg', './assets/music/fever.mp3', 9, 'Lossless'),
(83, 'Bokura no kisetsu', 82, '2022-01-10', 206261, './assets/images/bokuranokisetsu.jpg', './assets/music/bokuranokisetsu.mp3', 10, 'Lossless'),
(84, 'Akuma no Ko', 83, '2021-12-29', 592622, './assets/images/akumanoko.jpg', './assets/music/akumanoko.mp3', 10, 'Lossless'),
(85, 'Prologue', 82, '2021-10-04', 128372, './assets/images/prologue.jpg', './assets/music/prologue.mp3', 10, 'Lossless'),
(86, 'Zankyosanka', 84, '2021-10-06', 516324, './assets/images/zankyosanka.jpg', './assets/music/zankyosanka./mp3', 10, 'Lossless'),
(87, 'Massarana Daichi', 83, '2021-10-01', 286996, './assets/images/massaranadaichi.jpg', './assets/music/massaranadaichi.mp3', 10, 'Lossless'),
(88, 'Doughnut', 85, '2021-10-06', 501010, './assets/images/doughnut.jpg', './assets/music/doughnut.mp3', 10, 'Lossless'),
(89, 'Hadaka No Yusha', 86, '2021-09-05', 377937, './assets/images/hadakanoyusha.jpg', './assets/music/hadakanoyusha.mp3', 10, 'Lossless'),
(90, 'Asa Ga Kuru', 84, '2021-09-05', 549897, './assets/images/asagakuru.jpg', './assets/music/asagakuru.mp3', 10, 'Lossless'),
(91, 'LiveDevil', 87, '2021-12-07', 539999, './assets/images/livedevil.jpg', './assets/music/livedevil.mp3', 10, 'Lossless'),
(92, 'Koi No Uta', 88, '2021-09-05', 582382, './assets/images/koinouta.jpg', './assets/music/koinouta.mp3', 10, 'Lossless');

-- --------------------------------------------------------

--
-- Table structure for table `uploader`
--

CREATE TABLE `uploader` (
  `id` int(10) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(200) DEFAULT NULL,
  `data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `download` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploader`
--

INSERT INTO `uploader` (`id`, `name`, `image`, `quantity`, `data`, `download`) VALUES
(1, 'Hoàng Tuân', './assets/images/hoangtuan.jpg', 290, '13.2', 3519),
(2, 'danjustince', './assets/images/danjustince.jpg', 116, '8.2', 54842),
(3, 'Coconut', './assets/images/coconut.jpg', 133, '7.4', 612),
(4, 'Harry Harridson', './assets/images/harryharridson.jpg', 136, '6.2', 5731),
(5, 'csn', './assets/images/csn.jpg', 75, '3.9', 20292),
(6, 'Nguoivanchuyennhac', './assets/images/nguoivanchuyennhac.jpg', 49, '3.3', 1354),
(7, 'trikiendkbg', './assets/images/csn.jpg', 15, '2.9', 20292),
(8, 'Tui ten danh', './assets/images/tuitendanh.jpg', 33, '1.5', 1522),
(9, 'hoangkieu', './assets/images/hoangkieu.jpg', 13, '1.2', 220),
(10, 'Trung Đức', './assets/images/trungduc.jpg', 13, '1.3', 123);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(10) NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `name`, `author`) VALUES
(1, './assets/videos/justfriend.mp4', 'Just Friend', 'Nanon Korapat'),
(2, './assets/videos/coemday.mp4', 'Có Em Đây', 'Như Việt; Dung Hoàng Phạm; ACV'),
(3, './assets/videos/cohenvoithanhxuan.mp4', 'Có Hẹn Với Thanh Xuân', 'Monstar'),
(4, './assets/videos/dieudangdongotngao.mp4', 'Điều Dang Dở Ngọt Ngào', 'Bình Lee'),
(5, './assets/videos/laviemday.mp4', 'là Vì Em Đấy', 'Green'),
(6, './assets/videos/thuongemdengia.mp4', 'Thương Em Đến Già', 'Lê Bảo Bình'),
(7, './assets/videos/ladoemxuithoi.mp4', 'Là Do Em Xui Thôi', 'Khói'),
(8, './assets/videos/aichungtinhduocmai.mp4', 'Ai Chung Tình Được Mãi', 'Hoài Lâm');

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
  ADD KEY `FK_CATEGORY` (`id_category`);

--
-- Indexes for table `uploader`
--
ALTER TABLE `uploader`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `uploader`
--
ALTER TABLE `uploader`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `FK_CATEGORY` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_SINGER` FOREIGN KEY (`id_singer`) REFERENCES `singer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
