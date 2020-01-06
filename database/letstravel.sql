-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2020 lúc 06:55 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `letstravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Email` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Email`, `Password`) VALUES
('admin@gmail.com', 'admin'),
('shivaneej02@gmail.com', 'shivanee');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `age_group`
--

CREATE TABLE `age_group` (
  `Location` varchar(20) NOT NULL,
  `AgeGroup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `Name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`Name`) VALUES
('Bắc Giang'),
('Bắc Kạn'),
('Bắc Ninh'),
('Cao Bằng'),
('Điện Biên'),
('Hà Giang'),
('Hà Nam'),
('Hà Nội'),
('Hải Dương'),
('Hải Phòng'),
('Hòa Bình'),
('Hưng Yên'),
('Lai Châu'),
('Lạng Sơn'),
('Nam Định'),
('Ninh Bình'),
('Phú Thọ'),
('Quảng Ninh'),
('Sơn La'),
('Thái Bình'),
('Thái Nguyên'),
('Tuyên Quang'),
('Vĩnh Phúc'),
('Yên Bái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `distance`
--

CREATE TABLE `distance` (
  `City` varchar(11) DEFAULT NULL,
  `Bắc Giang` int(5) DEFAULT NULL,
  `Bắc Kạn` int(5) DEFAULT NULL,
  `Bắc Ninh` int(5) DEFAULT NULL,
  `Cao Bằng` int(5) DEFAULT NULL,
  `Điện Biên` int(5) DEFAULT NULL,
  `Hà Giang` int(5) DEFAULT NULL,
  `Hà Nam` int(5) DEFAULT NULL,
  `Hà Nội` int(5) DEFAULT NULL,
  `Hải Dương` int(5) DEFAULT NULL,
  `Hải Phòng` int(5) DEFAULT NULL,
  `Hòa Bình` int(5) DEFAULT NULL,
  `Hưng Yên` int(5) DEFAULT NULL,
  `Lai Châu` int(5) DEFAULT NULL,
  `Lạng Sơn` int(5) DEFAULT NULL,
  `Nam Định` int(5) DEFAULT NULL,
  `Ninh Bình` int(5) DEFAULT NULL,
  `Phú Thọ` int(5) DEFAULT NULL,
  `Quảng Ninh` int(5) DEFAULT NULL,
  `Sơn La` int(5) DEFAULT NULL,
  `Thái Bình` int(5) DEFAULT NULL,
  `Thái Nguyên` int(5) DEFAULT NULL,
  `Tuyên Quang` int(5) DEFAULT NULL,
  `Vĩnh Phúc` int(5) DEFAULT NULL,
  `Yên Bái` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `distance`
--

INSERT INTO `distance` (`City`, `Bắc Giang`, `Bắc Kạn`, `Bắc Ninh`, `Cao Bằng`, `Điện Biên`, `Hà Giang`, `Hà Nam`, `Hà Nội`, `Hải Dương`, `Hải Phòng`, `Hòa Bình`, `Hưng Yên`, `Lai Châu`, `Lạng Sơn`, `Nam Định`, `Ninh Bình`, `Phú Thọ`, `Quảng Ninh`, `Sơn La`, `Thái Bình`, `Thái Nguyên`, `Tuyên Quang`, `Vĩnh Phúc`, `Yên Bái`) VALUES
('Bắc Giang', 87841, 89517, 94892, 97809, 71290, 71123, 87780, 73235, 74822, 93346, 89575, 99358, 90040, 83693, 90017, 98450, 80234, 89812, 98408, 72799, 94108, 91914, 88124, 82777),
('Bắc Kạn', 92621, 0, 70131, 88812, 97167, 85855, 74197, 80612, 87618, 83951, 93513, 79812, 87963, 83281, 70686, 88822, 97610, 92526, 70461, 80391, 81892, 85856, 84660, 86734),
('Bắc Ninh', 72525, 78297, 0, 84553, 81218, 75358, 92945, 98092, 89111, 75755, 95977, 78395, 94249, 78880, 78775, 89267, 99722, 72359, 93139, 87468, 95967, 79130, 92737, 74671),
('Cao Bằng', 83600, 90274, 83674, 0, 98033, 96000, 80855, 79132, 83685, 89345, 95575, 76586, 80814, 99458, 88907, 75781, 87518, 89398, 75211, 97841, 92880, 79286, 95033, 71254),
('Điện Biên', 85162, 72424, 99613, 74659, 0, 96248, 90063, 89788, 70999, 79087, 85033, 87370, 92042, 95031, 80529, 91893, 77688, 98723, 89947, 96527, 71913, 86948, 76011, 79896),
('Hà Giang', 90879, 77593, 96694, 86285, 74580, 0, 80425, 90341, 77945, 77050, 78954, 76955, 78905, 91900, 96080, 86132, 79610, 99494, 83411, 74358, 87259, 85307, 79623, 72359),
('Hà Nam', 97203, 94295, 92768, 97184, 90090, 94030, 0, 98462, 99413, 74023, 92836, 86679, 95294, 98979, 90322, 78720, 98170, 81188, 91412, 85511, 73890, 94898, 78293, 89530),
('Hà Nội', 99972, 83037, 90416, 92737, 71623, 71099, 74565, 0, 88996, 83526, 99550, 99811, 96978, 99750, 81859, 95143, 71386, 78340, 75223, 81605, 88498, 79830, 97588, 96910),
('Hải Dương', 71575, 98105, 99291, 95819, 95196, 81210, 76306, 81758, 0, 90648, 97998, 70669, 98696, 77624, 86337, 89152, 77072, 99082, 80046, 88456, 81656, 79115, 71607, 93429),
('Hải Phòng', 76840, 81895, 71694, 95004, 70899, 71426, 74793, 78364, 96895, 0, 87455, 84520, 99606, 88926, 87391, 95711, 72827, 92718, 88155, 74298, 84007, 85484, 96470, 97825),
('Hòa Bình', 72787, 84765, 93179, 90833, 71914, 91004, 75528, 97104, 91444, 82118, 0, 78368, 89961, 94999, 72638, 92493, 77743, 93561, 97267, 87875, 73536, 74302, 89142, 86025),
('Hưng Yên', 80890, 71360, 91609, 97388, 89034, 91401, 90079, 82556, 86192, 90807, 86616, 0, 89062, 98891, 99274, 79272, 87232, 71083, 76814, 86670, 90121, 82809, 86176, 97494),
('Lai Châu', 87729, 88225, 90434, 83798, 74850, 83248, 85334, 84477, 92107, 90679, 78623, 82018, 0, 99615, 81842, 80768, 87414, 86863, 76748, 84250, 97548, 98601, 99947, 75270),
('Lạng Sơn', 73502, 85560, 93754, 77002, 90899, 82037, 76415, 95351, 82166, 73320, 71690, 88602, 89879, 0, 73999, 84513, 75756, 89667, 79191, 72189, 81707, 78286, 78008, 93080),
('Nam Định', 70072, 80621, 74290, 82904, 96846, 90451, 90637, 99666, 79988, 79604, 99744, 81062, 74282, 90054, 0, 94982, 78789, 82364, 86249, 74944, 71268, 91158, 97561, 89572),
('Ninh Bình', 89938, 83641, 95057, 76195, 94673, 84969, 95539, 90018, 78358, 94002, 73800, 96454, 99119, 74493, 75411, 0, 85585, 74389, 86564, 83525, 94705, 95635, 93055, 75972),
('Phú Thọ', 75935, 71196, 91322, 70519, 94756, 81306, 71202, 94179, 71297, 89369, 97610, 77500, 71548, 79091, 83297, 76384, 0, 74187, 73023, 80919, 84319, 94925, 80200, 74625),
('Quảng Ninh', 79600, 98411, 83291, 73537, 91592, 81111, 74367, 84345, 93651, 89062, 96154, 85486, 72307, 80678, 90826, 71474, 85940, 0, 91197, 84175, 90292, 82780, 93295, 77035),
('Sơn La', 88782, 71579, 81845, 85370, 95526, 80721, 72862, 89758, 71577, 84326, 90442, 70333, 72048, 73882, 90824, 94973, 72513, 96527, 0, 86137, 80551, 75309, 96619, 90929),
('Thái Bình', 99421, 81112, 95379, 98153, 72834, 79068, 77302, 97213, 86863, 86526, 71820, 91503, 87905, 75747, 79929, 83155, 87594, 72026, 71526, 0, 88437, 79425, 79018, 83195),
('Thái Nguyên', 72871, 92536, 80127, 73740, 87751, 92257, 96235, 78468, 89175, 89883, 77048, 94093, 91724, 85326, 86210, 76387, 82529, 73756, 79033, 71675, 0, 74394, 91472, 76391),
('Tuyên Quang', 73765, 87340, 70506, 78872, 95264, 88946, 94041, 76259, 78899, 76484, 91789, 73483, 73942, 84293, 81421, 79751, 87963, 92381, 83169, 75386, 84387, 0, 84169, 91648),
('Vĩnh Phúc', 97820, 95140, 97000, 83497, 76258, 85977, 94272, 81276, 80562, 89752, 80938, 88275, 83612, 82383, 97666, 79025, 92862, 88654, 74264, 71893, 89173, 78751, 0, 76436),
('Yên Bái', 72136, 77717, 88217, 87518, 76734, 72685, 71618, 92736, 85808, 90660, 77629, 70726, 95586, 92077, 74847, 76247, 74523, 92316, 82620, 86962, 80460, 82701, 99471, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `get_recommendation`
--

CREATE TABLE `get_recommendation` (
  `UserEmail` varchar(40) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `NumberOfDays` tinyint(2) NOT NULL,
  `AgeGroup` varchar(10) NOT NULL,
  `TripGroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

CREATE TABLE `hotels` (
  `Hotel Name` varchar(22) DEFAULT NULL,
  `Rating` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`Hotel Name`, `Rating`) VALUES
('Amarvilas', 5),
('The Lalit', 5),
('Grand Hyatt ', 5),
('The Renaissance', 5),
('JW Marriott', 5),
('The Oberoi', 5),
('The Taj', 5),
('The Leela Palace', 5),
('Ritz Carlton', 5),
('The Roseate', 5),
('Trident', 5),
('The Tamara', 5),
('Vivanta', 5),
('Le Meridian', 5),
('Hotel de l\'Orient', 5),
('Four Seasons Hotel', 3),
('The Westin Garden City', 3),
('Fairmont', 3),
('Park Hyatt', 3),
('Moevenpick', 3),
('Taj Exotica', 3),
('Wildflower Hall', 3),
('AmanBagh Resort', 3),
('Orange Country Resort', 3),
('Kohinoor', 3),
('Hotel Le Grande', 3),
('Regal Enclave', 3),
('Mapple Hermitage', 3),
('The Oriental Residency', 3),
('Tunga International', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `join_trip`
--

CREATE TABLE `join_trip` (
  `UserEmail` varchar(40) NOT NULL,
  `TripId` varchar(20) NOT NULL,
  `FirstName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Age` tinyint(3) NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `join_trip`
--

INSERT INTO `join_trip` (`UserEmail`, `TripId`, `FirstName`, `LastName`, `Age`, `gender`, `Contact`) VALUES
('grusha.d@somaiya.edu', 'taj.jpg', 'Grusha', 'Dharod', 23, 'Male', 1234567890),
('grusha.d@somaiya.edu', 'taj.jpg', 'abc', 'pqr`', 20, 'Female', 1234567811),
('thanhbinh@yahoo.com', 'taj.jpg', 'Nguyễn Thanh', 'Bình', 55, 'Nam', 4343465656),
('thanhbinh@yahoo.com', 'taj.jpg', 'Nguyễn Thanh', 'Bình', 0, 'Chọn', 4343465656),
('thanhbinh@yahoo.com', 'Mumbai.jpg', 'Nguyễn Thanh', 'Bình', 0, 'Chọn', 4343465656),
('thanhbinh@yahoo.com', 'Mumbai.jpg', 'Nguyễn Thanh', 'Bình', 0, 'Chọn', 4343465656),
('thanhbinh@yahoo.com', 'Mumbai.jpg', 'Nguyễn Thanh', 'Bình', 0, 'Chọn', 4343465656),
('thanhbinh@yahoo.com', 'halong.jpg', 'Nguyễn Thanh', 'Bình', 65, 'Nam', 4343465656);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recommendation`
--

CREATE TABLE `recommendation` (
  `Location` varchar(20) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Link` varchar(40) NOT NULL,
  `NumberOfDays` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recom_locs`
--

CREATE TABLE `recom_locs` (
  `Location` varchar(25) DEFAULT NULL,
  `Link` varchar(57) DEFAULT NULL,
  `Category` varchar(2) DEFAULT NULL,
  `TripGroup` varchar(2) DEFAULT NULL,
  `Min Age` int(1) DEFAULT NULL,
  `Max Age` int(1) DEFAULT NULL,
  `Min Budget` int(2) DEFAULT NULL,
  `Max Budget` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `recom_locs`
--

INSERT INTO `recom_locs` (`Location`, `Link`, `Category`, `TripGroup`, `Min Age`, `Max Age`, `Min Budget`, `Max Budget`) VALUES
('Agra', 'https://en.wikipedia.org/wiki/Agra', 'HS', 'F', 0, 0, 5, 10),
('Agra', 'https://en.wikipedia.org/wiki/Agra', 'HS', 'C', 0, 0, 5, 10),
('Amritsar', 'https://en.wikipedia.org/wiki/Amritsar', 'HS', 'F', 0, 0, 3, 6),
('Andaman Nicobar', 'https://en.wikipedia.org/wiki/Andaman_and_Nicobar_Islands', 'BN', 'F', 0, 0, 10, 20),
('Darjeeling', 'https://en.wikipedia.org/wiki/Darjeeling', 'BN', 'C', 0, 0, 8, 13),
('Gir National Park', 'https://en.wikipedia.org/wiki/Gir_Forest_National_Park', 'AA', 'F', 0, 0, 2, 3),
('Goa', 'https://en.wikipedia.org/wiki/Goa', 'AA', 'FR', 0, 0, 5, 7),
('Goa', 'https://en.wikipedia.org/wiki/Goa', 'BN', 'FR', 0, 0, 5, 7),
('Jim Corbett National Park', 'https://en.wikipedia.org/wiki/Jim_Corbett_National_Park', 'AA', 'F', 0, 0, 1, 3),
('Ladakh', 'https://en.wikipedia.org/wiki/Ladakh', 'AA', 'FR', 0, 0, 30, 45),
('Ladakh', 'https://en.wikipedia.org/wiki/Ladakh', 'BN', 'FR', 0, 0, 30, 45),
('Leh', 'https://en.wikipedia.org/wiki/Leh', 'AA', 'FR', 0, 0, 15, 18),
('Leh', 'https://en.wikipedia.org/wiki/Leh', 'BN', 'C', 0, 0, 15, 18),
('Lonavla', 'https://en.wikipedia.org/wiki/Lonavla', 'BN', 'FR', 0, 0, 4, 7),
('Manali', 'https://en.wikipedia.org/wiki/Manali,_Himachal_Pradesh', 'AA', 'C', 0, 0, 5, 9),
('Manali', 'https://en.wikipedia.org/wiki/Manali,_Himachal_Pradesh', 'BN', 'F', 0, 0, 5, 9),
('Mount Abu', 'https://en.wikipedia.org/wiki/Mount_Abu', 'BN', 'C', 0, 0, 1, 3),
('Munnar', 'https://en.wikipedia.org/wiki/Munnar', 'BN', 'F', 0, 0, 3, 5),
('Nainital', 'https://en.wikipedia.org/wiki/Nainital', 'BN', 'F', 0, 0, 5, 7),
('New Delhi', 'https://en.wikipedia.org/wiki/New_Delhi', 'HS', 'F', 0, 0, 3, 5),
('Ooty', 'https://en.wikipedia.org/wiki/Ooty', 'BN', 'F', 0, 0, 3, 6),
('Rishikesh', 'https://en.wikipedia.org/wiki/Rishikesh', 'AA', 'F', 0, 0, 3, 7),
('Rishikesh', 'https://en.wikipedia.org/wiki/Rishikesh', 'BN', 'FR', 0, 0, 3, 7),
('Rishikesh', 'https://en.wikipedia.org/wiki/Rishikesh', 'HS', 'F', 0, 0, 3, 7),
('Shimla', 'https://en.wikipedia.org/wiki/Shimla', 'BN', 'C', 0, 0, 2, 5),
('Srinagar', 'https://en.wikipedia.org/wiki/Srinagar', 'BN', 'F', 0, 0, 2, 4),
('Sunderbans', 'https://en.wikipedia.org/wiki/Sunderbans', 'BN', 'F', 0, 0, 1, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trip`
--

CREATE TABLE `trip` (
  `TripId` varchar(20) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `BasePrice` int(20) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `CreatedBy` varchar(40) NOT NULL,
  `GuideName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GuideContact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trip`
--

INSERT INTO `trip` (`TripId`, `Image`, `BasePrice`, `Status`, `StartDate`, `EndDate`, `CreatedBy`, `GuideName`, `GuideContact`) VALUES
('admin.jpg', 'admin.jpg', 1000000, 1, '2020-01-02', '2020-01-05', 'admin@gmail.com', 'Binh', 54545454),
('halong.jpg', 'halong.jpg', 1000000, 1, '2020-01-01', '2020-01-03', 'admin@gmail.com', 'Binh', 99883256),
('hohoankiem.png', 'hohoankiem.png', 77888, 0, '2020-01-02', '2020-01-04', 'admin@gmail.com', 'Binh', 98763233),
('Mumbai.jpg', 'Mumbai.jpg', 150000, 1, '2018-10-02', '2018-10-11', 'shivaneej02@gmail.com', 'Binh', 12345),
('sapa.jpg', 'sapa.jpg', 1000000, 1, '2020-01-01', '2020-01-04', 'admin@gmail.com', 'Binh', 98763233),
('taj.jpg', 'taj.jpg', 760000, 1, '2018-10-16', '2018-10-20', 'shivaneej02@gmail.com', 'Hop', 9876543210);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trip_group`
--

CREATE TABLE `trip_group` (
  `Location` varchar(20) NOT NULL,
  `TripGroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trip_location`
--

CREATE TABLE `trip_location` (
  `tripId` varchar(10) NOT NULL,
  `locations` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `startLoc` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `trip_location`
--

INSERT INTO `trip_location` (`tripId`, `locations`, `startLoc`) VALUES
('Mumbai.jpg', 'Mumbai', 1),
('Mumbai.jpg', 'Goa', 0),
('Mumbai.jpg', 'Pune', 0),
('taj.jpg', 'Delhi', 0),
('taj.jpg', 'Agra', 1),
('halong.jpg', 'Quảng Ninh', 0),
('halong.jpg', 'Hà Nội', 1),
('admin.jpg', 'Phú Thọ', 1),
('admin.jpg', 'Bắc Kạn', 0),
('sapa.jpg', 'Hà Nội', 1),
('sapa.jpg', 'Sapa', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `FirstName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `City` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Rate` tinyint(1) UNSIGNED NOT NULL,
  `Review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`FirstName`, `LastName`, `Email`, `Password`, `Mobile`, `City`, `Rate`, `Review`) VALUES
('Grusha', 'Dharod', 'grusha.d@somaiya.edu', 'grusha', 1234567890, '', 0, ''),
('Shivanee', 'Jaiswal', 'jaiswalshivanee0211@yahoo.in', 'shiv', 892329, '', 0, ''),
('Nguyễn Thanh', 'Lê', 'shivanee.j@somaiya.edu', '12345', 8097806372, '', 0, ''),
('Nguyễn Thanh', 'Bình', 'thanhbinh@yahoo.com', 'thanhbinh', 4343465656, '', 0, ''),
('Vicky', 'Daiya', 'vicky.daiya@somaiya.edu', 'vicky', 9876543210, '', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_pref`
--

CREATE TABLE `user_pref` (
  `user_email` varchar(40) NOT NULL,
  `from_location` varchar(20) NOT NULL,
  `accomodation_pref` varchar(20) NOT NULL,
  `travel_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user_pref`
--

INSERT INTO `user_pref` (`user_email`, `from_location`, `accomodation_pref`, `travel_time`) VALUES
('shivanee.j@somaiya.edu', 'Barddhaman', '3 star', 'night'),
('shivanee.j@somaiya.edu', 'Bareilly', '5 star', 'any'),
('shivanee.j@somaiya.edu', '', '', ''),
('shivanee.j@somaiya.edu', 'Meerut', '3 star', 'night'),
('shivanee.j@somaiya.edu', 'Allahabad', '5 star', 'night'),
('shivanee.j@somaiya.edu', 'Barddhaman', '5 star', 'night'),
('shivanee.j@somaiya.edu', 'Bangalore', '5 star', 'night'),
('shivanee.j@somaiya.edu', 'Bangalore', '5 star', 'night'),
('shivanee.j@somaiya.edu', 'Aurangabad', '3 star', 'night'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'day'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'day'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'day'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'any'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'any'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'any'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'any'),
('shivanee.j@somaiya.edu', 'Bangalore', '3 star', 'any'),
('shivanee.j@somaiya.edu', 'Bareilly', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Pune', '3 star', 'day'),
('grusha.d@somaiya.edu', 'Barauni', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Barauni', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Barddhaman', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Belgaum', '5 star', 'day'),
('grusha.d@somaiya.edu', 'Bareilly', '3 star', 'any'),
('grusha.d@somaiya.edu', 'Bareilly', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Belgaum', '3 star', 'night'),
('grusha.d@somaiya.edu', 'Barauni', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Bellary', '5 star', 'night'),
('grusha.d@somaiya.edu', 'Bellary', '5 star', 'any'),
('grusha.d@somaiya.edu', 'Bellary', '5 star', 'any'),
('vicky.daiya@somaiya.edu', 'Ahmedabad', '3star', 'day'),
('thanhbinh@yahoo.com', '', '', ''),
('thanhbinh@yahoo.com', '', '', ''),
('thanhbinh@yahoo.com', '', '', ''),
('thanhbinh@yahoo.com', 'Mumbai', '5star', 'day'),
('thanhbinh@yahoo.com', 'Ahmedabad', '3star', 'night'),
('thanhbinh@yahoo.com', 'Mumbai', '3star', 'day'),
('thanhbinh@yahoo.com', 'Mumbai', '3star', 'night'),
('thanhbinh@yahoo.com', 'Agartala', '3star', 'any'),
('thanhbinh@yahoo.com', 'Ahmedabad', '3star', 'any'),
('thanhbinh@yahoo.com', 'Ahmedabad', '3star', 'any'),
('thanhbinh@yahoo.com', '', '', ''),
('thanhbinh@yahoo.com', 'Calcutta', '3star', 'night');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Chỉ mục cho bảng `age_group`
--
ALTER TABLE `age_group`
  ADD PRIMARY KEY (`Location`,`AgeGroup`);

--
-- Chỉ mục cho bảng `get_recommendation`
--
ALTER TABLE `get_recommendation`
  ADD PRIMARY KEY (`UserEmail`,`Location`),
  ADD KEY `get_recommendation_ibfk_2` (`Location`);

--
-- Chỉ mục cho bảng `join_trip`
--
ALTER TABLE `join_trip`
  ADD KEY `TripId` (`TripId`),
  ADD KEY `UserEmail` (`UserEmail`);

--
-- Chỉ mục cho bảng `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`Location`);

--
-- Chỉ mục cho bảng `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`TripId`),
  ADD KEY `CreatedBy` (`CreatedBy`);

--
-- Chỉ mục cho bảng `trip_group`
--
ALTER TABLE `trip_group`
  ADD PRIMARY KEY (`Location`,`TripGroup`);

--
-- Chỉ mục cho bảng `trip_location`
--
ALTER TABLE `trip_location`
  ADD KEY `triploc` (`tripId`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Email`);

--
-- Chỉ mục cho bảng `user_pref`
--
ALTER TABLE `user_pref`
  ADD KEY `user_email` (`user_email`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `age_group`
--
ALTER TABLE `age_group`
  ADD CONSTRAINT `age_group_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `recommendation` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `get_recommendation`
--
ALTER TABLE `get_recommendation`
  ADD CONSTRAINT `get_recommendation_ibfk_1` FOREIGN KEY (`UserEmail`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `get_recommendation_ibfk_2` FOREIGN KEY (`Location`) REFERENCES `recommendation` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `join_trip`
--
ALTER TABLE `join_trip`
  ADD CONSTRAINT `join_trip_ibfk_2` FOREIGN KEY (`UserEmail`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `join_trip_ibfk_3` FOREIGN KEY (`TripId`) REFERENCES `trip` (`TripId`);

--
-- Các ràng buộc cho bảng `trip`
--
ALTER TABLE `trip`
  ADD CONSTRAINT `trip_ibfk_1` FOREIGN KEY (`CreatedBy`) REFERENCES `admin` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `trip_group`
--
ALTER TABLE `trip_group`
  ADD CONSTRAINT `trip_group_ibfk_1` FOREIGN KEY (`Location`) REFERENCES `recommendation` (`Location`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `trip_location`
--
ALTER TABLE `trip_location`
  ADD CONSTRAINT `triploc` FOREIGN KEY (`tripId`) REFERENCES `trip` (`TripId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_pref`
--
ALTER TABLE `user_pref`
  ADD CONSTRAINT `user_pref_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `user` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
