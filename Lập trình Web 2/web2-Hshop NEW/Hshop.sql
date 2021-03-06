-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2019 at 04:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopbandienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `idCTHD` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Dongia` float NOT NULL,
  `Thanhtien` float NOT NULL,
  `khuyenmai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`idCTHD`, `idHD`, `idSP`, `Soluong`, `Dongia`, `Thanhtien`, `khuyenmai`) VALUES
(1, 16, 43, 1, 990000, 990000, 0),
(2, 17, 39, 1, 17990000, 17990000, 0),
(3, 17, 52, 1, 5490000, 5490000, 0),
(4, 18, 47, 1, 22990000, 22990000, 0),
(5, 19, 53, 1, 2390000, 2390000, 0),
(6, 19, 35, 1, 10590000, 10590000, 0),
(7, 20, 44, 1, 440000, 440000, 0),
(8, 20, 41, 1, 6990000, 6990000, 0),
(9, 21, 33, 1, 11390000, 11390000, 0),
(10, 21, 32, 1, 3990000, 3990000, 0),
(11, 22, 55, 1, 5990000, 5990000, 0),
(12, 22, 11, 1, 6400000, 6400000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `idHD` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `hoten_user` varchar(255) NOT NULL,
  `Gmail_user` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `Diachi` varchar(255) NOT NULL,
  `Tongtien` float NOT NULL,
  `payment` varchar(255) NOT NULL,
  `Ngaytao` varchar(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idHD`, `idUser`, `hoten_user`, `Gmail_user`, `phone`, `Diachi`, `Tongtien`, `payment`, `Ngaytao`, `trangthai`) VALUES
(16, 5, 'Nguyen V??n A', 'nguyenvansy@gmail.com', '0968798351', 'Qu???n 5 - TP.H??? ch?? minh', 990000, 'Ti???n m???t', '15-05-2019', 1),
(17, 5, 'Nguy???n Huy B', 'nguyenvansy@gmail.com', '0968798351', 'Qu???n 6 - TP.H??? ch?? minh', 23480000, 'Qua th???', '15-05-2019', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `idLH` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_gmail` varchar(100) NOT NULL,
  `Noidung` text NOT NULL,
  `Create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idLSP` int(3) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `maloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`idLSP`, `tenloai`, `maloai`) VALUES
(1, 'V??y ??en', 'vd'),
(2, 'V??y xanh', 'vx'),
(3, 'V??y v??ng', 'vv'),
(4, 'V??y ?????', 'vr'),
(5, 'V??y tr???ng ', 'vt1'),
(6, 'V??y h???ng', 'vh');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `STT` int(11) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `Ten` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Luong` int(11) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Trangthai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhanQuyen` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`STT`, `MaNV`, `Ten`, `SDT`, `DiaChi`, `NgaySinh`, `GioiTinh`, `Luong`, `Pass`, `Trangthai`, `PhanQuyen`) VALUES
(1, 'Admin', 'Nguy???n V??n s???', '0911887319', '12, P7, Qu???n 1,TPHCM', '1999-09-09', 'Nam', 500, '0911887319', 'M??? kh??a', 'Admin'),
(2, 'Manager01', 'Nguy???n V??n D', '0911887311', '20, NH,P.10,G?? V???p,HCM', '1999-04-26', 'Nam', 350, '098877319', 'M??? kh??a', 'Manager'),
(3, 'Manager02', 'Nguy???n V??n E', '0111887312', '18,P3,T??n B??nh,HCM', '1999-01-12', 'Nam', 350, '0123456789', 'M??? kh??a', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `idLSP` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` float NOT NULL,
  `mota` varchar(200) NOT NULL,
  `hinhanh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idLSP`, `tensp`, `gia`, `mota`, `hinhanh`) VALUES
(1, 1, 'V??y ??en vd1', 3400000, 'v??y ??en vd1', 'vd1.jpg'),
(2, 1, 'V??y ??en vd2', 19500000, 'V??y ??en vd2 mang trong m??nh h??ng ho???t c??c thay ?????i ?????t ph?? v???i ??i???m nh???n ?????c bi???t ?????n t??? chi???c b??t S-Pen th???n th??nh c??ng m???t vi??n pin dung l?????ng kh???ng l??? t???i 4.000 mAh.', 'vd21.jpg'),
(3, 1, 'V??y ??en vd3', 8000000, '', 'vd3.jpg'),
(4, 1, 'V??y ??en vd4', 4400000, 'V??y ??en vd4 l?? m???t chi???c v??y gi?? r??? hi???m hoi tr??n th??? tr?????ng s??? h???u nh???ng t??nh n??ng kh?? h???p d???n trong n??m 2018 ???? l?? camera k??p ??? m???t l??ng v?? m??n h??nh tai th??? ??? m???t tr?????c.', 'vd5.jpg'),
(5, 1, 'V??y ??en vd 6', 4400000, 'V??y ??en vd6 lu??n mang c?? s??? thay ?????i trong thi???t k??? m???i v?? chi???c .......', 'vd6.jpg'),
(6, 1, 'V??y ??en vd9', 5400000, 'V??y ??en vd9 l?? s???n ph???m', 'vd9.jpg'),
(7, 1, 'V??y ??en vd 10', 4400000, ' v???i c??c g??c c???nh th??? hi???n r?? r??ng, h??n n???a th??n m??y ???????c l??m b???ng h???p kim Magie gi??p m??y c?? tr???ng l?????ng nh??? v?? ?????t t??nh th???m m??? cao. C???nh d?????i c??ng c???a m??y ta c?? ', 'vd10.jpg'),
(8, 2, 'V??y ??en vd 11', 10500000, 'T??? ?????ng l???y n??t, Quay video Full HD, Ch??? ????? l??m ?????p, Selfie ng?????c s??ng HDR, Nh???n di???n khu??n m???t, Ch???p b???ng gi???ng n??i, Selfie b???ng c??? ch???.', 'vd11.jpg'),
(9, 1, 'V??y ??en vd12', 4400000, 'vd12', 'vd12.jpg'),
(10, 1, 'V??y ??en vd13', 8400000, 'vd13', 'vd13.jpg'),
(11, 1, 'V??y ??en vd16', 6400000, 'v??y ????? ph??? ki???n h?????ng d???n s??? d???ng, h???p t??ng , b???o h??nh 12 th??ng.', 'vd16.jpg'),
(12, 6, 'V??y h???ng', 12500000, 'Coppy ??o???n v??n something', 'vh1.jpg'),
(13, 6, 'V??y h???ng vh2', 9300000, 'Something', 'vh2.jpg'),
(14, 6, 'V??y h???ng vh3', 2300000, 'VH3', 'vh3.jpg'),
(15, 6, 'V??y h???ng vh7', 1200000, 'vh7', 'vh7.jpg'),
(16, 6, 'V??y h???ng vh8', 3400000, 'VH8', 'vh8.jpg'),
(17, 6, 'Vay Hong vh9', 5400000, 'vh9', 'vh9.jpg'),
(18, 6, 'V??y h???ng vh10', 11500000, 'vh10', 'vh10.jpg'),
(19, 4, 'V??y ????? vr1', 8600000, 'VR1', 'vr1.jpg'),
(20, 4, 'V??y ????? vr2', 10900000, 'V??y ????? vr2', 'vr2.jpg'),
(21, 4, 'V??y ????? vr3', 7400000, 'V??y ????? vr3', 'vr3.jpg'),
(22, 4, 'V??y ????? vr4', 3500000, 'V??y ????? vr4', 'vr4.jpg'),
(23, 4, 'V??y ????? vr5', 8400000, 'V??y ????? vr5', 'vr5.jpg'),
(24, 4, 'V??y ????? vr6', 4900000, 'V??y ????? vr6', 'vr6.jpg'),
(25, 4, 'V??y ????? vr7', 3550000, 'V??y ????? vr7', 'vr7.jpg'),
(26, 4, 'V??y ????? vr8', 3550000, 'V??y ????? vr8', 'vr8.jpg'),
(27, 4, 'V??y ????? vr9', 3550000, 'V??y ????? vr9', 'vr9.jpg'),
(28, 5, 'V??y tr???ng vt1', 3550000, 'V??y tr???ng vt1', 'vt1.jpg'),
(29, 5, 'V??y tr???ng vt2', 3550000, 'V??y tr???ng vt2', 'vt2.jpg'),
(30, 5, 'V??y tr???ng vt3', 3550000, 'V??y tr???ng vt3', 'vt3.jpg'),
(31, 5, 'V??y tr???ng vt4', 3550000, 'V??y tr???ng vt4', 'vt4.jpg'),
(32, 5, 'V??y tr???ng vt5', 3550000, 'V??y tr???ng vt5', 'vt5.jpg'),

(33, 5, 'V??y tr???ng vt6', 3550000, 'V??y tr???ng vt6', 'vt6.jpg'),

(34, 5, 'V??y tr???ng vt7', 3550000, 'V??y tr???ng vt7', 'vt7.jpg'),
(35, 5, 'V??y tr???ng vt8', 3550000, 'V??y tr???ng vt8', 'vt8.jpg'),
(36, 5, 'V??y tr???ng vt9', 3550000, 'V??y tr???ng vt9', 'vt9.jpg'),
(37, 5, 'V??y tr???ng vt10', 3550000, 'V??y tr???ng vt10', 'vt10.jpg'),
(38, 5, 'V??y tr???ng vt11', 3550000, 'V??y tr???ng vt11', 'vt11.jpg'),
(39, 5, 'V??y tr???ng vt12', 3550000, 'V??y tr???ng vt12', 'vt12.jpg'),
(40, 5, 'V??y tr???ng vt13', 3550000, 'V??y tr???ng vt13', 'vt13.jpg'),
(41, 5, 'V??y tr???ng vt14', 3550000, 'V??y tr???ng vt14', 'vt14.jpg'),
(42, 2, 'V??y xanh vx5', 3550000, 'V??y xanh vx5', 'vx6.jpg'),
(43, 2, 'V??y xanh vx6', 3550000, 'V??y xanh vx6', 'vx7.jpg'),
(44, 2, 'V??y xanh vx7', 3550000, 'V??y xanh vx7', 'vx8.jpg'),
(45, 2, 'V??y xanh vx8', 3550000, 'V??y xanh vx8', 'vx9.jpg'),
(46, 3, 'V??y v??ng vv1', 3550000, 'V??y v??ng vv', 'vv1.jpg'),
(47, 3, 'V??y v??ng vv2', 3550000, 'V??y v??ng vv', 'vv2.jpg'),
(48, 3, 'V??y v??ng vv3', 3550000, 'V??y v??ng vv', 'vv3.jpg'),
(49, 3, 'V??y v??ng vv4', 3550000, 'V??y v??ng vv', 'vv4.jpg'),
(50, 3, 'V??y v??ng vv5', 3550000, 'V??y v??ng vv', 'vv5.jpg'),
(51, 3, 'V??y v??ng vv6', 3550000, 'V??y v??ng vv', 'vv6.jpg'),
(52, 3, 'V??y v??ng vv7', 3550000, 'V??y v??ng vv', 'vv7.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `Gmail` varchar(100) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `Diachi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `tendangnhap`, `matkhau`, `hoten`, `Gmail`, `SDT`, `Diachi`) VALUES
(1, 'Vansy', 'a67b61c217d3c6f92ceca1827583436a', 'slkadgaklsj', 'vansy@gmail.com', '02147483647', 'H??? ch?? minh'),
(2, 'thang', 'e10adc3949ba59abbe56e057f20f883e', 'huythng', 'huythag', '0', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`idCTHD`),
  ADD KEY `idHD` (`idHD`),
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idHD`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`idLH`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idLSP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLSP` (`idLSP`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `idCTHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `idLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idLSP` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idLSP`) REFERENCES `loaisanpham` (`idLSP`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
