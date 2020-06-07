-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2020 at 09:27 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phukiendientu`
CREATE DATABASE IF NOT EXISTS phukiendientu DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE phukiendientu;
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Hiếu Tấn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Bài 1 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'a4.jpg'),
(2, 'Bài 2: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'm3.jpg'),
(3, 'Bài 3: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'k2.jpg'),
(4, 'Bài 4 :Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'b4.jpg'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Bài 5 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'm8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(15, 'Loa'),
(16, 'Camera'),
(17, 'Thẻ nhớ'),
(18, 'USB'),
(19, 'Ổ cứng'),
(20, 'Cáp & Dock sạc'),
(21, 'Chuột & Bàn phím'),
(22, 'Sạc dự phòng'),
(23, 'Ốp lưng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức máy lạnh'),
(2, 'Kiến thức máy giặc'),
(3, 'Kiến thức laptop'),
(4, 'Kiến thức Tivi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2019-10-01 04:11:55', 1, 0),
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2019-10-04 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2019-10-04 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2019-10-04 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2019-10-04 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(24, 20, 1, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(25, 21, 3, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(26, 21, 2, '5737', 23, '2019-10-04 02:57:00', 0, 0),
(28, 25, 3, '7785', 25, '2019-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(31, 21, 1, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(33, 20, 3, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(34, 26, 1, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(1, 'Máy giặc Samsung', 26, '105000000', 'm8.jpg', 1),
(2, 'Galaxy A15', 21, '15000000', 'mk3.jpg', 1),
(3, 'Ốp lưng trái cây nổi Dành cho Oppo F11,F11 Pro,A9 2020,A5 2020,A1k,Realme 5,Realme 3,Realme 3 Pro,Re', 29, '70000', '1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(12, 'Hiếu', '0932023992', '123/123', 'dasdasdas', 'hieu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(13, 'Long Hoàng', '01694494813', '123/123', 'dasdasdas', 'long@gmail.com', '0192023a7bbd73250516f069df18b500', 0),
(14, 'Hoàng Long', '0932023992', '123/123', 'dsadas', 'hoanglong@gmail.com', '', 1),
(22, 'Nam', '0932023992', '123/123', 'dasdas', 'name123@gmail.com', '', 1),
(23, 'Nam', '0932023992', '123/123', 'dasdasd', 'name456@gmail.com', '', 1),
(24, 'Hoa', '0932023992', '123/123', 'dasdas', 'hoa@gmail.com', '', 0),
(25, 'Hoàng Kha', '0932023992', '123/123', 'dasdasdas', 'hoangkha@gmail.com', '', 1),
(26, 'Trương Lưu', '0932023992', '123/123', 'dasdasdas', 'truongluu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(27, 'Trương Huệ Mẫn', '0932023992', '123', 'dasdasdasd', 'hueman@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(28, 'Hoa', '0932023992', '123/123', 'dasdasdads', 'hoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(28, 0, 'Ốp lưng trái cây nổi Dành cho Oppo F11,F11 Pro,A9 2020,A5 2020,A1k,Realme 5,Realme 3,Realme 3 Pro,Realme 2,Realme 5 Pro,Realme C2,A5s,A7,A3s,F3,F3 Plus,F9,F5,A83,F1s,A71,(Neo 9) A37,(Neo 9s) A39,(F3 Lite) A57', '', '', '70000', '45000', 0, 0, 10, '1.jpg'),
(29, 23, 'Ốp lưng trái cây nổi Dành cho Oppo F11,F11 Pro,A9 2020,A5 2020,A1k,Realme 5,Realme 3,Realme 3 Pro,Realme 2,Realme 5 Pro,Realme C2,A5s,A7,A3s,F3,F3 Plus,F9,F5,A83,F1s,A71,(Neo 9) A37,(Neo 9s) A39,(F3 Lite) A57', 'Thương hiệu	OEM\r\nXuất xứ thương hiệu	Hong Kong\r\nXuất xứ	Hong Kong\r\nThương hiệu thiết bị phù hợp	Oppo\r\nThiết bị phù hợp	Oppo F3 Plus, Oppo F3, Oppo F1s, Oppo F5, Oppo A71, Oppo A39-Neo 9s, Oppo A57-F3 Lite, Oppo A37-Neo 9, Oppo A83, OPPO F9, Oppo A3s, Oppo A7, Realme 2, Realme 3 Pro, Realme 3, OPPO F11 Pro, OPPO F11, Oppo A5s, Oppo A1K, Realme C2, Realme 5, Realme 5 Pro, Oppo A9 2020, OPPO A5 (2020)\r\nSKU	9045609883143', '\r\n  *  Ốp được làm bằng nhựa dẻo\r\n  * Mặt lưng nhám chống trơn trợt\r\n  *  Sản phẩm là sự kết hợp tinh tế giữa chất liệu nhựa dẻo silicon và hình trái cây nổi\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ..', '70000', '45000', 0, 0, 10, '1.jpg'),
(30, 23, 'Ốp lưng dẻo cho Iphone XS Max - Dragon 03', 'Thương hiệu	OEM\r\nXuất xứ	Việt Nam\r\nThương hiệu thiết bị phù hợp	Apple\r\nThiết bị phù hợp	iPhone XS MAX\r\nSKU	4038834529110', 'Nếu bạn đang sở hữu một chiếc điện thoại Apple Iphone XS Max thời thượng thì chắc hẳn bạn sẽ lo lắng nó sẽ dễ bị trầy xước khi va chạm hay rơi xuống đất. Vìvậy, việc sử dụng ốp lưng để bảo vệ và giữ điện thoại là rất cần thiết..\r\n\r\nKhông những thế, ngoài việc giúp người dùng bảo vệ Chiếc Điện Thoại Con Cưng – Iphone XS Max, ốp lưng còn được xem như một món đồ trang sức cho điện thoại, giúp chủ nhân của nó thể hiện phong cách và cá tính riêng của mình.\r\n\r\nỐp lưng được làm từ chất liệu silicone cao cấp, các cạnh viền ôm khít thân máy.\r\n\r\nViền ốp dẻo, bo kín phần lưng và phần viền máy, bảo vệ chiếc điện thoại của bạn khỏi trầy xước khi vô tình làm rơi máy hay va chạm với vật cứng.\r\n\r\nViền ốp dẻo còn giúp bạn tháo lắp máy dễ dàng mà không lo trầy xước máy.\r\n\r\nCác cạnh viền ốp lưng trong suốt nên dù sử dụng ốp lưng nhưng vẫn giữ được màu sắc và thiết kế của điện thoại.\r\n\r\nCác chi tiết của ốp lưng (camera, nút nguồn, nút âm lượng,lỗ sạc, lỗ cắm tai nghe..) được thiết kế tỉ mỉ, chính xác tới từng chi tiết, giúp bạn sử dụng điện thoại dễ dàng mà không gặp bất kì trở ngại gì.\r\n\r\nĐặc biệt, hình in sắc nét, màu sắc trung thực, đảm bảo không bong tróc, phai màu.\r\n\r\nVà nếu bạn là một người cẩn thận và mong muốn chiếc điện thoại Iphone XSMax của mình luôn như mới, thì sử dụng ốp lưng không chỉ giúp bảo vệ, mà nó còn mang đến cảm giác yên tâm và thoải mái khi sử dụng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '77000', '74400', 0, 0, 20, '2.jpg'),
(31, 23, 'Ốp lưng dẻo cho Apple iPhone 7 Plus _Raccoon 01', 'Thương hiệu	OEM\r\nXuất xứ	Việt Nam\r\nThương hiệu thiết bị phù hợp	Apple\r\nThiết bị phù hợp	iPhone 7 Plus\r\nSKU	8156271119452', 'Nếu bạn đang sở hữu một chiếc Smartphone thì chắc hẳn bạn sẽ lo lắng nó sẽ bị trầy xước khi va chạm hay vô tình rơi xuống đất. Vì vậy, việc sử dụng ốp lưng để bảo vệ và giữ cho điện thoại là rất cần thiết.\r\n\r\nKhông những thế, ngoài việc giúp người dùng bảo vệ điện thoại, ốp lưng còn là một món đồ trang sức cho điện thoại, giúp chủ nhân của nó thể hiện phong cách và cá tính riêng của mình.\r\n\r\nỐp lưng được làm từ chất liệu silicone cao cấp, các cạnh viền ôm khít thân máy.\r\n\r\nViền ốp dẻo, bo kín phần lưng và phần viền máy, bảo vệ chiếc điện thoại của bạn khỏi trầy xước khi vô tình làm rơi máy hay va chạm với vật cứng.\r\n\r\nViền ốp dẻo còn giúp bạn tháo lắp máy dễ dàng mà không lo trầy xước máy.\r\n\r\nCác cạnh viền ốp lưng trong suốt nên dù sử dụng ốp lưng nhưng vẫn giữ được màu sắc và thiết kế của điện thoại.\r\n\r\nCác chi tiết của ốp lưng (camera, nút nguồn, nút âm lượng,lỗ sạc, lỗ cắm tai nghe..) được thiết kế tỉ mỉ, chính xác tới từng chi tiết, giúp bạn sử dụng điện thoại dễ dàng mà không gặp bất kì trở ngại gì.\r\n\r\nĐặc biệt, hình in sắc nét, màu sắc trung thực, đảm bảo không bong tróc, phai màu.\r\n\r\nVà nếu bạn là một người cẩn thận và mong muốn chiếc điện thoại của mình luôn như mới, thì sử dụng ốp lưng không chỉ giúp bảo vệ, mà nó còn mang đến cảm giác yên tâm và thoải mái khi sử dụng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '81000', '79200', 0, 0, 30, '3.jpg'),
(32, 23, 'Ốp lưng dẻo cho Apple iPhone 7 Plus _XBLLVĐ Boy', 'Thương hiệu	OEM\r\nXuất xứ	Việt Nam\r\nThương hiệu thiết bị phù hợp	Apple\r\nThiết bị phù hợp	iPhone 7 Plus\r\nModel	20 - Apple iPhone 7 Plus- XBLLVĐ Boy\r\nChất liệu	Silicone dẻo\r\nSKU	4546174878077', 'Nếu bạn đang sở hữu một chiếc Smartphone thì chắc hẳn bạn sẽ lo lắng nó sẽ bị trầy xước khi va chạm hay vô tình rơi xuống đất. Vì vậy, việc sử dụng ốp lưng để bảo vệ và giữ cho điện thoại là rất cần thiết.\r\n\r\nKhông những thế, ngoài việc giúp người dùng bảo vệ điện thoại, ốp lưng còn là một món đồ trang sức cho điện thoại, giúp chủ nhân của nó thể hiện phong cách và cá tính riêng của mình.\r\n\r\nỐp lưng được làm từ chất liệu silicone cao cấp, các cạnh viền ôm khít thân máy.\r\n\r\nViền ốp dẻo, bo kín phần lưng và phần viền máy, bảo vệ chiếc điện thoại của bạn khỏi trầy xước khi vô tình làm rơi máy hay va chạm với vật cứng.\r\n\r\nViền ốp dẻo còn giúp bạn tháo lắp máy dễ dàng mà không lo trầy xước máy.\r\n\r\nCác cạnh viền ốp lưng trong suốt nên dù sử dụng ốp lưng nhưng vẫn giữ được màu sắc và thiết kế của điện thoại.\r\n\r\nCác chi tiết của ốp lưng (camera, nút nguồn, nút âm lượng,lỗ sạc, lỗ cắm tai nghe..) được thiết kế tỉ mỉ, chính xác tới từng chi tiết, giúp bạn sử dụng điện thoại dễ dàng mà không gặp bất kì trở ngại gì.\r\n\r\nĐặc biệt, hình in sắc nét, màu sắc trung thực, đảm bảo không bong tróc, phai màu.\r\n\r\nVà nếu bạn là một người cẩn thận và mong muốn chiếc điện thoại của mình luôn như mới, thì sử dụng ốp lưng không chỉ giúp bảo vệ, mà nó còn mang đến cảm giác yên tâm và thoải mái khi sử dụng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '79000', '77420', 0, 0, 15, '4.jpg'),
(33, 23, 'Ốp lưng dẻo cho Apple iPhone 7 Plus _Rain 01', 'Thương hiệu	OEM\r\nXuất xứ	Việt Nam\r\nThương hiệu thiết bị phù hợp	Apple\r\nThiết bị phù hợp	iPhone 7 Plus\r\nSKU	1825549582225', 'Nếu bạn đang sở hữu một chiếc Smartphone thì chắc hẳn bạn sẽ lo lắng nó sẽ bị trầy xước khi va chạm hay vô tình rơi xuống đất. Vì vậy, việc sử dụng ốp lưng để bảo vệ và giữ cho điện thoại là rất cần thiết.\r\n\r\nKhông những thế, ngoài việc giúp người dùng bảo vệ điện thoại, ốp lưng còn là một món đồ trang sức cho điện thoại, giúp chủ nhân của nó thể hiện phong cách và cá tính riêng của mình.\r\n\r\nỐp lưng được làm từ chất liệu silicone cao cấp, các cạnh viền ôm khít thân máy.\r\n\r\nViền ốp dẻo, bo kín phần lưng và phần viền máy, bảo vệ chiếc điện thoại của bạn khỏi trầy xước khi vô tình làm rơi máy hay va chạm với vật cứng.\r\n\r\nViền ốp dẻo còn giúp bạn tháo lắp máy dễ dàng mà không lo trầy xước máy.\r\n\r\nCác cạnh viền ốp lưng trong suốt nên dù sử dụng ốp lưng nhưng vẫn giữ được màu sắc và thiết kế của điện thoại.\r\n\r\nCác chi tiết của ốp lưng (camera, nút nguồn, nút âm lượng,lỗ sạc, lỗ cắm tai nghe..) được thiết kế tỉ mỉ, chính xác tới từng chi tiết, giúp bạn sử dụng điện thoại dễ dàng mà không gặp bất kì trở ngại gì.\r\n\r\nĐặc biệt, hình in sắc nét, màu sắc trung thực, đảm bảo không bong tróc, phai màu.\r\n\r\nVà nếu bạn là một người cẩn thận và mong muốn chiếc điện thoại của mình luôn như mới, thì sử dụng ốp lưng không chỉ giúp bảo vệ, mà nó còn mang đến cảm giác yên tâm và thoải mái khi sử dụng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '78000', '74400', 0, 0, 25, '5.jpg'),
(34, 23, 'Ốp lưng dẻo cho Apple iPhone 7 Plus _Dolphins 01', 'Thương hiệu	OEM\r\nXuất xứ	Việt Nam\r\nThương hiệu thiết bị phù hợp	Apple\r\nThiết bị phù hợp	iPhone 7 Plus\r\nChất liệu	Silicone dẻo\r\nSKU	8703720678321', 'Nếu bạn đang sở hữu một chiếc Smartphone thì chắc hẳn bạn sẽ lo lắng nó sẽ bị trầy xước khi va chạm hay vô tình rơi xuống đất. Vì vậy, việc sử dụng ốp lưng để bảo vệ và giữ cho điện thoại là rất cần thiết.\r\n\r\nKhông những thế, ngoài việc giúp người dùng bảo vệ điện thoại, ốp lưng còn là một món đồ trang sức cho điện thoại, giúp chủ nhân của nó thể hiện phong cách và cá tính riêng của mình.\r\n\r\nỐp lưng được làm từ chất liệu silicone cao cấp, các cạnh viền ôm khít thân máy.\r\n\r\nViền ốp dẻo, bo kín phần lưng và phần viền máy, bảo vệ chiếc điện thoại của bạn khỏi trầy xước khi vô tình làm rơi máy hay va chạm với vật cứng.\r\n\r\nViền ốp dẻo còn giúp bạn tháo lắp máy dễ dàng mà không lo trầy xước máy.\r\n\r\nCác cạnh viền ốp lưng trong suốt nên dù sử dụng ốp lưng nhưng vẫn giữ được màu sắc và thiết kế của điện thoại.\r\n\r\nCác chi tiết của ốp lưng (camera, nút nguồn, nút âm lượng,lỗ sạc, lỗ cắm tai nghe..) được thiết kế tỉ mỉ, chính xác tới từng chi tiết, giúp bạn sử dụng điện thoại dễ dàng mà không gặp bất kì trở ngại gì.\r\n\r\nĐặc biệt, hình in sắc nét, màu sắc trung thực, đảm bảo không bong tróc, phai màu.\r\n\r\nVà nếu bạn là một người cẩn thận và mong muốn chiếc điện thoại của mình luôn như mới, thì sử dụng ốp lưng không chỉ giúp bảo vệ, mà nó còn mang đến cảm giác yên tâm và thoải mái khi sử dụng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '88000', '83000', 0, 0, 40, '6.jpg'),
(35, 22, 'Pin Sạc Dự Phòng Samsung EB-P1100 10000mAh Hỗ Trợ Sạc Nhanh QC 2.0 - Hàng Chính Hãng', 'Thương hiệu	Samsung\r\nXuất xứ	Trung Quốc\r\nKích thước	\r\n\r\n71x141.8x14 mm\r\nSKU	9010514543758\r\nDung lượng pin	10000\r\nThời gian sạc	Sạc nhanh 220 phút Sạc thường 315 phút\r\nĐầu vào	5V-2A (sạc thường) 9V-1.67A (sạc nhanh)\r\nĐầu ra	5V-2A (sạc thường) 9V-1.67A (sạc nhanh)\r\nModel	EB-P1100', 'Thiết kế phong cách và thời thượng\r\n\r\nPin Sạc Dự Phòng Samsung EB-P1100 10000mAh Hỗ Trợ Sạc Nhanh QC 2.0 mang đến tổng thể thiết kế mỏng, gọn nhẹ và dễ cầm nắm, sử dụng. Lựa chọn màu sắc tinh tế và sang trọng cho bạn dễ dàng thay đổi, thể hiện dấu ấn riêng.\r\n\r\nKhông còn lo ngại vấn đề pin\r\n\r\nTận hưởng niềm vui suốt ngày dài trên chiếc điện thoại luôn đầy pin với sạc dự phòng Battery Pack mới từ Samsung hỗ trợ công nghệ sạc nhanh cao cấp AFC (Auto Fast Charging) và Quick Charge 2.0. Thoải mái cắm sạc mà không lo hư hỏng thiết bị với tính năng Bảo Vệ Quá Tải (OCP) vượt trội từ Battery Pack, cho bạn tập trung thực hiện mọi công việc quan trọng.\r\n\r\n*Sản phẩm có 2 phiên bản với cáp sạc đi kèm là khác nhau, hình ảnh bên dưới là phiên bản Type-C\r\n\r\nSạc nhanh 2 chiều tiết kiệm thời gian\r\n\r\nĐược trang bị tính năng Bảo Vệ Tránh Quá Áp (OVP), pin dự phòng Battery Pack giúp giúp thiết bị được sạc nhanh chóng, an toàn và nhanh hơn ở chế độ sạc nhanh. Thiết bị luôn đầy pin cho mọi trải nghiệm hoàn hảo và liền mạch.\r\n\r\nGấp đôi hiệu năng với 2 cống sạc\r\n\r\nCổng sạc kép vượt trội từ Pin Sạc Dự Phòng Samsung EB-P1100 cho phép sạc hai thiết bị cùng lúc. Đơn giản và tiện lợi hơn gấp hai lần.\r\n\r\nDung Lượng Vượt Trội\r\n\r\nSạc bất tận với dung lượng lên đến 10,000mAh từ pin dự phòng Battery Pack. Thoả thích tận hưởng chuyến du lịch hay tự do di chuyển đến bất kì nơi nào mà không cần phải lo đến dung lượng pin.\r\n\r\nTương thích nhiều thiết bị\r\n\r\nPin Sạc Dự Phòng Samsung EB-P1100 10000mAh Hỗ Trợ Sạc Nhanh QC 2.0 từ Samsung hỗ trợ dòng điện sạc cường độ thấp, giúp giữ thiết bị luôn được sạc an toàn. Tiện lợi sử dụng pin sạc cho nhiều thiết bị đến từ các thương hiệu khác nhau, sẵn sàng ngay khi bạn cần.\r\n*Nhấn vào nút kiểm tra pin trên đầu thiết bị để chuyển sang chế độ sạc nhanh từ chế độ sạc kép hai thiết bị.\r\n\r\n*Các thông tin về thời gian được dựa trên kiểm thử nội bộ của Samsung. Kết quả có thể khác nhau tuỳ theo môi trường sử dụng\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '390000', '289000', 0, 0, 20, '7.jpg'),
(36, 22, 'Pin sạc dự phòng 10.000 MAh, Led hiển thị dung lượng, mặt cường lực', 'Thương hiệu	OEM\r\nSKU	6675387772631\r\nDung lượng pin	10000', 'Pin sạc dự phòng 10.000 MAh\r\n\r\nLed hiển thị dung lượng\r\n\r\nMặt cường lực\r\n\r\n2 ngõ ra USB\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '269000', '179000', 0, 0, 10, '8.jpg'),
(37, 22, 'Sạc dự phòng Pisen Mini Power Star 10000mAh màu ngẫu nhiên - Hàng chính hãng', 'Thương hiệu	Pisen\r\nXuất xứ	Trung Quốc\r\nSKU	5142321477750\r\nDung lượng pin	10000\r\nModel	PowerStar10000mAh\r\nTrọng lượng	500', 'Siêu sạc Pisen Mini Power Star 10000mAh.\r\n\r\n+Nhỏ tẹo mà dung lượng khủng.\r\n\r\n+Nhỏ tẹo mà nhẹ tênh.\r\n\r\n+Dòng sạc dự phòng dành cho các bạn luôn mang theo bên người dễ dàng, gọn nhẹ.\r\n\r\n+Dung lượng pin lên tới 10000mah.\r\n\r\n+Hiệu năng sạc 98% sạc được ~ 4 lần cho iPhone 6 Bạn dùng để sạc điện thoại\r\n\r\n+ Để soi gương , Rất nhiều chức năng đặc biệt được tích hợp trên sạc\r\n\r\n+Thiết kế với màu sắc phong cách trẻ trung, sôi động, tươi sáng. Vỏ sạc sáng bóng, chống dính vân tay\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '650000', '490000', 0, 0, 50, '9.jpg'),
(38, 22, 'Pin dự phòng polymer Romoss LT20PS 20000mAh nhỏ gọn (Trắng) HÀNG CHÍNH HÃNG', 'Thương hiệu	ROMOSS\r\nXuất xứ thương hiệu	Trung Quốc\r\nXuất xứ	Trung Quốc\r\nSKU	8687305494738\r\nDung lượng pin	20000\r\nĐầu vào	TypeC/ microUSB/ lightning\r\nĐầu ra	USB\r\nModel	LT20PS\r\nTrọng lượng	400 gam\r\nChất liệu	nhựa', 'Romoss LT20PS là phiên bản rút gọn của model LT20 (với kích thước nhỏ gọn hơn)\r\nRất thích hợp cho các bạn nữ với kích thước và khối lượng nhỏ nhất trong các dòng pin dự phòng có dung lượng 20000mAh trên thị trường hiện tại.\r\nSử dụng lõi pin polymer siêu bền.\r\nĐiện áp vào 3 cổng (microUSB- typeC - lightning): 5V/2.1A\r\nQuý khách nên sử dụng cốc sạc 2A trở lên để pin nhanh đầy và trách tình trạng không đầy pin khi sử dụng cốc 1A\r\nĐiện áp ra cổng 1: 5V/1A\r\nĐiện áp ra cổng 2: 5V/2.1A max\r\nKích thước: 145x 69 x 29 mm\r\nTrọng lượng : 445 gam\r\nHỗ trợ: điện thoại di động, điện thoại thông minh, MP3, sản phẩm kỹ thuật số khác với 5V đầu vào.\r\nLuu ý: sản phẩm không bao gồm cáp sạc từ nhà sản xuất\r\niá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '600000', '445000', 0, 0, 35, '10.jpeg'),
(39, 0, 'SẠC DỰ PHÒNG KHÔNG DÂY XIAOMI 10000MAH PLM11ZM 2019 - Hàng Chính Hãng', 'Thương hiệu	Xiaomi\r\nSKU	7305187279526\r\nDung lượng pin	10000', 'Sạc dự phòng Xiaomi hỗ trợ sạc không dây dung lượng 10.000mAh 2019 đây chính là công nghệ pin dự phòng cho tương lai, nếu điện thoại bạn cố hỗ trợ sạc không dây thì đây là 1 cục pin dự phòng quá tuyệt vời, chỉ cần đặt lên trên là có thể sạc cho điện thoại, sạc vừa nhanh dung lượng pin lớn 10000mAh...\r\n\r\nPin dự phòng không dây của Xiaomi có dung lượng 10.000mAh và cho công suất sạc không dây tối đa là 10W. Do sử dụng chuẩn Qi, cho nên viên pin dự phòng này hỗ trợ không phải riêng cho Mi 9 mà còn rất nhiều chiếc smartphone khác, trong đó có cả Apple và Samsung Galaxy. \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '', '', 0, 0, 0, '11.jpg'),
(40, 22, 'SẠC DỰ PHÒNG KHÔNG DÂY XIAOMI 10000MAH PLM11ZM 2019 - Hàng Chính Hãng', 'Thương hiệu	Xiaomi\r\nSKU	7305187279526\r\nDung lượng pin	10000', 'Sạc dự phòng Xiaomi hỗ trợ sạc không dây dung lượng 10.000mAh 2019 đây chính là công nghệ pin dự phòng cho tương lai, nếu điện thoại bạn cố hỗ trợ sạc không dây thì đây là 1 cục pin dự phòng quá tuyệt vời, chỉ cần đặt lên trên là có thể sạc cho điện thoại, sạc vừa nhanh dung lượng pin lớn 10000mAh...\r\n\r\nPin dự phòng không dây của Xiaomi có dung lượng 10.000mAh và cho công suất sạc không dây tối đa là 10W. Do sử dụng chuẩn Qi, cho nên viên pin dự phòng này hỗ trợ không phải riêng cho Mi 9 mà còn rất nhiều chiếc smartphone khác, trong đó có cả Apple và Samsung Galaxy. \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '1000000', '990000', 0, 0, 25, '11.jpg'),
(41, 22, 'Sạc dự phòng Energizer 10,000mAh /3.7V Li-Polymer - UE10032PR - Hàng Chính Hãng', 'Thương hiệu	Energizer\r\nKích thước	\r\n\r\nKích thước: 93 x 64 x 18mm\r\nSKU	8125478236422\r\nDung lượng pin	10000\r\nModel	UE10032', '\r\n\r\n    Tính năng:\r\n        Thiết kế Cardsize siêu nhỏ gọn, nằm trọn trong lòng bàn tay - chiều dài chỉ đúng bằng chiếc namecard\r\n        Bề mặt phủ chất liệu platinum cao cấp, giúp hạn chế tối đa trầy xước trong quá trình sử dụng.\r\n        Tích hợp 2 cổng sạc, tích hợp công nghệ Fast Charge giúp sạc thiết bị nhanh hơn 40%.\r\n        Đèn LED thông báo tình trạng pin, mỗi vạch tương ứng với 25% mức pin\r\n        Tích hợp công nghệ Auto voltage sensing - tự động cảm biến điện áp giúp tương thích với mọi thiết bị di động.\r\n        Chứng nhận về an toàn & chống cháy nổ: CE, FCC, ETL, CB, EAC, RoHS, Reach, ERP6, DOE6.\r\n    Thông số kỹ thuật:\r\n        Mã sản phẩm: UE10032\r\n        Dung lượng Pin: 10,000mAh\r\n        Loại Pin: Lithium Polymer\r\n        Input: 5V, 2.0A\r\n        Output: 5V, 2.1A\r\n        Kích thước: 93 x 64 x 18mm\r\n        Trọng lượng: 197g ± 10g\r\n\r\nBộ sản phẩm gồm:\r\n\r\n    Pin sạc dự phòng Energizer 10,000mAh - UE10032\r\n    Cáp USB Micro\r\n    Sách hướng dẫn sử dụng\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '800000', '390000', 0, 0, 40, '12.png'),
(42, 21, 'Bàn phím giả cơ kèm chuột KMX50 Gaming mouse PF170', 'Thương hiệu	OEM\r\nModel	PF170\r\nSKU	4889788229461', 'Bàn phím giả cơ kèm chuột KMX50 Gaming mouse PF170 \r\n> Trỏ lăn chuột 3D siêu mượt, không trơn trượt\r\n> Bàn phím giả cơ kèm chuột KMX50 Gaming mouse PF170 cực nhạy, thiết kế thân thiện,dễ dàng sử dụng, có thể dùng cho mọi loại máy và hệ điều hành mà không cần phải cài đặt.\r\n\r\n> Bàn phím giả cơ kèm chuột KMX50 Gaming mouse PF170 thẻ-bit thiết kế nhiều lớp đệm êm tay khi sử dụng không gây cảm giác mỏi khi sử dụng lâu.\r\n\r\n> Màu đèn chuột thay đổi liên tục nhiều màu\r\n\r\n> Chuột quang dùng chip hiệu suất cao, độ phân giải lên đến 1600DPI, có thể được áp dụng cho tất cả các loại trò chơi, định vị chính xác.\r\nBàn phím giả cơ kèm chuột KMX50 Gaming mouse PF170 2', '700000', '200000', 0, 0, 5, '13.jpg'),
(43, 21, 'COMBO Bàn Phím Chuột Tai nghe Gaming MOTOSPEED GAMING GS700 RGB - Hàng Chính Hãng', 'Thương hiệu	Motospeed\r\nSKU	4511971867319', 'Combo GS700 RGB\r\n* Phím GS700 Camo:\r\n- Optical LK Switch ( Switch quang học) với độ bền 50 triệu lần bấm / độ trễ thấp\r\n- RGB Led\r\n- Chống nước tối đa\r\n* Chuột GS700 Camo:\r\n- Huano Switch với độ bền 20 triệu lần bấm\r\n- Sensor Pixart 3320 cao cấp (3500cpi - 80ips - 20g)\r\n- RGB light\r\n- Software điều chỉnh led và macro chuột\r\n* Tai nghe GS700 7.1 Camo:\r\n- Speaker 40mm lớn hơn giúp âm thanh to và rõ hơn\r\n- Microphone mới giúp lọc tạp âm và tiếng ồn tốt hơn\r\n- RGB light\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '3100000', '2900000', 0, 0, 15, '14.jpg'),
(44, 21, 'Bộ Bàn Phím Và Chuột Chơi game G20 - K2 Led Nhiều Màu Tặng kèm lót chuột', 'Thương hiệu	OEM\r\nKích thước	đang cập nhật\r\nModel	COMBO G20\r\nSKU	8423576762509', 'PHÍM:\r\n\r\n    Vật liệu       : Nhựa ABS\r\n    Kích thước : 450x140x31 mm\r\n    Cổng kết nối : USB 2.0 & 3.0\r\n    Tương thích :  HĐH Windows,Mac OS \r\n    Bàn phím giả cơ thiết kế đẹp cứng cáp \r\n    Bật tắt LED 7 màu chia các vùng rất tiện lợi thao tác nhanh\r\n    Chữ khắc Laser chống mờ sử dụng lâu \r\n    Độ nẩy đàn hồi khi ấn rất tốt tạo cảm giác thoải mái khi sử dụng \r\n    Rất nhiều phím tắt ,điều khiển media được tích hợp trên bàn phím\r\n     \r\n    CHUỘT:\r\n\r\n    Model: K2\r\n    Chuẩn kết nối USB\r\n    Chuột chơi game chuyên nghiệp\r\n    Game tương thích: LMTH; Đột kích; Dota ....\r\n    Tương thích mọi hệ điều hành\r\n    Thiết kế chuyên nghiệp và ấn tượng\r\n    Thiết kế cho người thuận tay phải\r\n    Độ bền 10 triệu lần bấm.\r\n    DPI tùy chỉnh các mức: 800-1200-1600\r\n    Dây cáp bọc chắc chắn, IC chống nhiễu\r\n    Đèn led 7 màu tự thay đổi.\r\n\r\nChuột chuyên game K2 thuộc dòng chuột game 6D, với thiết kế đẹp mắt nhưng có đầy đủ chức năng dành cho game thủ và thiết kế, với độ phân giải 1600DPI, chuột nhạy , có độ bền lên đến 10 triệu lần Click chuột….Đây là dòng chuột chơi game có mức giá bình dân , kiểu dáng mạnh mẽ nên rất được các bạn nam ưa chuộng.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '300000', '170000', 0, 0, 60, '15.jpg'),
(45, 21, 'Bộ bàn phím và chuột chơi Game FRIWOL W10 Led 7 màu Phím giả cơ nghe âm thanh rất thanh với đường nét thiết kế góc cạnh tạo nên sự khác biệt với nhiều sản phẩm khác.', 'Thương hiệu	OEM\r\nXuất xứ thương hiệu	China\r\nXuất xứ	China\r\nHệ điều hành	WINDOW\r\nModel	W10\r\nSKU	7527192489220', '    Đèn led nền và led phím với 3 màu có thể thay đổi và tắt mở.\r\n    Số Phím : 104 phím - Antighost bấm 1 lần được 19 phím\r\n    Phím giả cơ nghe âm thanh rất thanh và êm\r\n    Chuột Chuyên Game được thiết kế riêng dành cho game thủ và phòng nét.\r\n    Với đường nét thiết kế góc cạnh tạo nên sự khác biệt với nhiều sản phẩm khác.\r\n    Con lăn thiết kế nhỏ nhưng dể dàng di chuyển và có độ bền cao.\r\n    2 viền bên cạnh được thiết kế nhô ra và ma sát giúp game thủ dể dàng cầm và di chuyển khi sử dụng đặc biệt là khi chơi game với tốc độ cao mà không hề bị mỏi.\r\n    Phù hợp với nhiều loại hệ điều hành khác nhau, nhiều cấu hình máy của PC hoặc laptop.\r\n    Đèn Led bắt mắt, phù hợp cho các game thủ chơi Game vào ban đêm.\r\nThông Số Kỹ Thuật chuột\r\n\r\n \r\n\r\n    Màu sắc: Đen\r\n    Chữ khắc Laser chống bay\r\n    Kết nối: USB 2.0, tương thích mọi hệ điều hành\r\n    Độ bền phím > 10.000.000 lượt bấm', '235000', '165000', 0, 0, 20, '16.jpg'),
(46, 21, 'Combo Phím R8 1822 + Tặng Chuột Game, Tai Nghe YL902 Và Lót Chuột Hình Game S1 (giao mẫu ngẫu nhiên) - HÀNG CHÍNH HÃNG', 'Thương hiệu	R8\r\nKích thước	\r\n\r\nphím 440x330x30cm\r\n\r\n \r\nModel	combo phím 1822\r\nSKU	3957442489467', 'Bàn phím giả cơ chuyên Game Led 7 màu R8 1822với thiết kế tựa như 1 bàn phím cơ với đường nét và kiểu dáng rất phá cách, hệ thống đèn led dưới nền cực kỳ ấn tượng với 7 gam màu hiển thị cùng lúc giúp người dùng, đặc biệt là các game thủ có thể thoải mái sử dụng vào ban đêm.\r\n\r\nPhím giả cơ nghe âm thanh rất thanh và êm\r\nLoại phím: có led - giả cơ - phím cao (chống nước) - có dây (cổng USB) - game/độ họa/văn phòng\r\n\r\nKeycaps sơn tĩnh điện chống bay\r\n\r\nKết nối: USB 2.0\r\n\r\nTương thích với hầu hết mọi hệ điều hành\r\n\r\nĐộ bền phím > 10.000.000 lượt bấm\r\n\r\nĐèn led tắt mở đèn led bằng phím Scroll lock (hình bóng đèn)\r\n\r\nKích thước: 44 x 14 x 3.5cm\r\n\r\nPhân Loại màu Sắc:  Đen\r\n\r\nKiểu giao diện: USB\r\n\r\nđộ phân giải quang học. 4000 dpi\r\n\r\nColor LED ánh sáng\r\n\r\nĐộ bền : 20 triệu\r\n\r\nĐộ phân giải quang học: 500/1500/2500/4000dpi\r\n\r\nModel : V5\r\n\r\nLoại giao diện:USB\r\n\r\nChế độ hoạt động:Quang-điện tử\r\nDây cực kỳ chắc chắn, chống đứt chống rối với công nghệ bọc 2 lớp\r\nMicrophone là ống dẫn âm hoàn toàn bằng cao su không bị gãy\r\nNút chỉnh âm lượng trên thân tai\r\nDùng cho phòng net cực tốt và bền bỉ\r\nKiểu dáng game thủ bắt mắt\r\nNghe cực êm tai và thoải mái\r\nSản phẩm đảm bảo về chất lượng và độ bền\r\n- Tai nghe YL-902 chuyên sử dụng cho quán game, quán net, kế thừa những tính năng ưu việt trên đàn anh ,rất đẹp mang đậm phong cách game thủ.\r\n\r\n- So với đàn anh, thì YL-902 thiết kế nhỏ gọn và ôm tai hơn. Âm thanh tách bạch, bass to, treble chắc nị\r\n- Dây cực kỳ chắc chắn, chống đứt chống rối với công nghệ bọc 2 lớp (lớp nhựa bọc bên ngoài lớp dù rồi mới đến dây tín hiệu)hoàn toàn bằng cao su không bị gãy, bền bỉ theo thời gian với người dùng thông thường, game thủ và trâu bò với các phòng net.\r\n', '500000', '400000', 0, 0, 16, '17.jpg'),
(47, 21, 'Bộ Bàn Phím Chuột Không Dây 2.4GHz Ultra-Thin D6U4', 'Thương hiệu	OEM\r\nSKU	8227620937598', 'Cắm và chơi, Tìm Thấy các USB nano receiver, cắm nó vào cổng USB của thiết bị của bạn. Sau đó nó sẽ tự động ghép nối và kết nối.\r\nBàn phím là nhỏ gọn, tiện dụng, thiết kế thời trang và tốt-xây dựng. Thì thầm yên tĩnh đánh máy và nhấp chuột vào cho cả hai bàn phím và chuột. Nó cung cấp một khá và môi trường thoải mái cho bạn khi bạn sử dụng nó vào ban đêm.\r\nBàn phím và chuột được thiết kế để được cầm tay, phù hợp dễ dàng vào một túi tay, hoặc máy tính xách tay túi cho dễ dàng vận chuyển.\r\n2.4 gam Không Dây cung cấp lên đến 10 mét kết nối, cung cấp thuận tiện không có vấn đề nơi bạn loại.\r\nLƯU Ý: Các Nano-receiver có thể được tìm thấy trong ngăn chứa pin của bàn phím/chuột. Yêu cầu 4 pin AAA (2 cho mỗi đơn vị), pin KHÔNG bao gồm\r\n\r\n\r\nLoại: Không Dây Thiết Lập Bộ\r\nVới các kết nối máy tính: bàn phím không dây, chuột không dây\r\nGiao Diện bàn phím: Không Dây\r\nChuột giao diện: Không Dây\r\nLàm việc: Ống Điện Quang\r\nQuang điện độ phân giải: 1200 dpi\r\nTiêu Chuẩn không dây: 2.4 ghz\r\nKích Thước bàn phím: 370*142*9 mét\r\nBàn phím Trọng Lượng: 400 gam\r\nTuổi Thọ Key: 5 triệu cliks\r\nKết nối Phạm Vi: 10 m\r\nSố Kênh: 16\r\nGiao Diện USB: 1.1-2.0\r\nTần số vô tuyến Điện: 3db\r\nNhiệt độ:-40-+ 85 Độ C.\r\nPin: Hai kích thước pin AA (Không bao gồm)\r\nHiện tại: 5mA\r\nĐiện áp: 3 v\r\nCho dù để hỗ trợ plug and play: hỗ trợ\r\nLà có một đa phương tiện phím chức năng: Yes\r\nCho dù để hỗ trợ ergonomics: hỗ trợ\r\nCác tính năng: ultra-mỏng câm\r\nÁp dụng đối với: nhà, trò chơi, máy tính xách tay, văn phòng sử dụng\r\n\r\nSản Phẩm Bao Gồm:\r\n01 Chuột\r\n01 Bàn phím\r\n01 Đầu Thu USB\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '700000', '600000', 0, 0, 60, '18.jpg'),
(48, 20, 'Dock Sạc Pin Đôi Kèm Cáp Cho Camera Hành Trình Sjcam SJ4000 & SJ5000 & M10 - Hàng Chính Hãng', 'Thương hiệu	SJCAM\r\nKích thước	\r\n\r\nKhối lượng gói hàng (kg): 0.34\r\n\r\nKích thước đóng gói (cm): 5 x 10 x 5\r\nModel	Dock sac Sjcam doi\r\nSKU	6042538341006', 'Đồ sạc - cốc sạc cho pin của camera hành trình thể thao SJCAM SJ4000 SJ5000 wifi.\r\n\r\nSạc được 2 pin 1 lần, kết nối sạc qua cổng mini USB nhỏ thông dụng (giống dây sạc điện thoại hiện nay)\r\n\r\nMỗi bộ sạc chưa có dây đi kèm, các bạn có thể dùng dây sạc điện thoại cổng mini usb để sạc loại cốc này.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '120000', '99000', 0, 0, 70, '19.jpg'),
(49, 20, 'Dock Sạc Pin Đôi Kèm Cáp Cho Camera Hành Trình Sjcam M20 - Hàng Chính Hãng', 'Thương hiệu	SJCAM\r\nKích thước	\r\n\r\nKhối lượng gói hàng (kg): 0.2\r\n\r\nKích thước đóng gói (cm): 6 x 2 x 4\r\nModel	Dock sac Sjcam M20\r\nSKU	6303329803838', 'Dock sạc là phụ kiện cần thiết cho tất cả thiết bị mà đặc biệt là dành cho chiếc camera hành trình. Với tần suất sử dụng xuyên suốt trong mỗi chuyến đi, việc nạp pin cho chiếc camera là rất quan trọng, do đó SJCAM đã cho ra thị trường bộ sản phẩm Dock sạc pin đôi kèm cáp cho camera hành trình Sjcam M20\r\n\r\nSạc hai pin cùng lúc\r\n\r\nViệc sạc hai pin cùng lúc với poket thân thiện, phụ kiện sẽ giúp người dụng tiết kiệm được khá nhiều thời gian sạc camera. Nhờ đó, việc ghi hình, chụp ảnh trong suốt chuyến đi cũng trở nên dễ dàng hơn\r\n\r\nPhù hợp với camera hành trình SJCAM M20\r\n\r\nVới hai cổng đầu vào Micro USB và Mini USB, phụ kiện thích hợp với các sản phẩm camera SJCAM M20 cùng chế độ hiển thị đèn đỏ khi sạc, đèn xanh sạc đầy, bạn dễ dàng nhận biết được tình trạng sạc pin của thiết bị\r\n\r\nSản phẩm nhỏ gọn\r\n\r\nThiết kế sản phẩm với kích thước 5,1 * 3,6 * 1,7cm làm cho phụ kiện cực kỳ nhỏ gọn, tiện lợi giúp cho người dùng dễ dàng bỏ vào túi nhỏ mang đi trong suốt chuyến đi\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '230000', '200000', 0, 0, 100, '20.png'),
(50, 0, 'Dây Cáp Sạc Sợi Nylon Loại C (2M USB 3.1)', 'Thương hiệu	OEM\r\nXuất xứ thương hiệu	China\r\nXuất xứ	China\r\nSKU	8601524468899', 'Specification:\r\nColor: Silver / Blue / Rose / Orange / Green (optional)\r\nMaterial: nylon woven + aluminum interface\r\nVoltage: DC 5V\r\nCurrent: 2A\r\nApplies to: type-c interface device\r\nWire: copper wire core\r\nProduct size: Length is 200cm; Wire diameter is 3.8mm\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '', '', 0, 0, 100, ''),
(51, 20, 'Dây Cáp Sạc Sợi Nylon Loại C (2M USB 3.1)', 'Specification:\r\nColor: Silver / Blue / Rose / Orange / Green (optional)\r\nMaterial: nylon woven + aluminum interface\r\nVoltage: DC 5V\r\nCurrent: 2A\r\nApplies to: type-c interface device\r\nWire: copper wire core\r\nProduct size: Length is 200cm; Wire diameter is 3.8mm\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 'Thương hiệu	OEM\r\nXuất xứ thương hiệu	China\r\nXuất xứ	China\r\nSKU	8601524468899', '240000', '100000', 0, 0, 100, '21.jpg'),
(52, 20, 'Dây Cáp USB Hỗ Trợ Sạc Nhanh Type C (2.4A)', 'Thương hiệu	OEM\r\nXuất xứ	China\r\nSKU	3024072277037', 'Description:\r\nColor: red, black, blue\r\nLength: 1m\r\nMaterial: Weaving\r\nCurrent: 2.4A\r\nInterface: type-c\r\nFunction: fast charging, data transmission, double-sided blind insertion\r\n\r\nNotes:\r\n1.The real color of the item may be slightly different from the pictures shown on website caused by many factors such as brightness of your monitor and light brightness.\r\n2.Please allow slight deviation for the measurement data.\r\n3.Thanks for your understanding.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '295000', '120000', 0, 0, 60, '20.jpg'),
(53, 20, 'Cáp Sạc Collen Apple', 'Thương hiệu	Collen\r\nSKU	7177536223111', '\r\nInterface support: Apple\r\nMaterial: weaving\r\nType: Single loading\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '160000', '130000', 0, 0, 53, '22.jpg'),
(54, 20, 'Dây Cáp Sạc Micro USB Đồng Bộ (1M)', 'Thương hiệu	OEM\r\nXuất xứ	China\r\nSKU	7168118688954', 'Description:\r\nColor: Black, Red, Rose red, Orange, White, Blue, Green (optional)\r\nLength: 1 meter\r\nInterface: USB2.0\r\nApplicable models: For Andriod phone\r\nProduct Material: ABS\r\nNumber of sub-thread: single head\r\nProduct Size: 5.5 x 4 x 2cm\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '260000', '200000', 0, 0, 40, '23.jpg'),
(55, 19, 'Ổ Cứng SSD WD Green 240GB 3D NAND - WDS240G2G0A - Hàng Chính Hãng  (Xem 291 đánh giá)', 'Thương hiệu	WD\r\nXuất xứ	Trung Quốc\r\nDung lượng ổ cứng	240GB\r\nTốc độ đọc	540MB/s\r\nTốc độ ghi	430MB/s\r\nKiểu giao tiếp	SATA 6Gb/s\r\nSKU	9229899332325\r\nModel	WDS240G2G0A', 'Giao tiếp SATA III tương thích nhiều thiết bị\r\n\r\nỔ Cứng SSD WD Green 240GB 3D NAND - WDS240G2G0A được trang bị chuẩn giao tiếp SATA III cho tốc độ  truyền dữ liệu 6Gb/s. Với tốc độ này máy tính của bạn sẽ được vận hành một cách nhanh chóng nhất.\r\n\r\nTốc độ truyền dữ liệu cao\r\n\r\nSản phẩm mang đến cho bạn tốc độ đọc lên tới 540MB/s và tốc độ ghi lên tới 430MB/s, nhờ đó bạn sẽ xử lý công việc nhanh chóng hơn\r\n\r\nTiết kiệm điện năng\r\n\r\nỔ Cứng SSD WD Green 240GB sẽ giúp máy tiết kiệm năng lượng và khởi động máy nhanh hơn. Các tác vụ hoạt động trên máy sẽ nhanh chóng hơn.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '1000000', '800000', 0, 0, 35, '24.jpg'),
(56, 19, 'Ổ Cứng SSD Kingston A400 (120GB) - Hàng Chính Hãng', 'Thương hiệu	Kingston\r\nXuất xứ	Trung Quốc\r\nKích thước	100 x 69.9 x 7.0 mm\r\nDung lượng ổ cứng	120GB\r\nTốc độ đọc	500 MB/s\r\nTốc độ ghi	300 MB/s\r\nKiểu giao tiếp	SATA 3.0 tương thích ngược với SATA 2.0\r\nSKU	1404319460576\r\nModel	A400', '\r\n    Ổ Cứng SSD Kingston A400 (120GB) - Hàng Chính Hãng giúp tăng hiệu năng và cho phép bạn truy cập hệ thống máy tính cực nhanh.\r\n    Được hỗ trợ bởi thế hệ bộ điều khiển mới nhất cho tốc độ đọc và ghi lên đến 500MB / giây và 450MB / giây, ổ SSD này nhanh hơn 10 lần so với một ổ cứng truyền thống mang lại hiệu năng cao hơn, khả năng đa nhiệm siêu mượt và tốc độ lớn hơn cho toàn bộ hệ thống.\r\n    Có khả năng chống sốc và rung động nhằm đem lại độ tin cậy bền bỉ khi sử dụng cho máy tính xách tay và các thiết bị điện toán di động khác.\r\n    Sản phẩm có kích cỡ 7mm nên có thể lắp vừa vào nhiều hệ thống. Lý tưởng cho các máy tính xách tay mỏng và trong các hệ thống có không gian hạn chế.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '1400000', '120000', 0, 0, 55, '25.jpg'),
(57, 19, 'Ổ cứng SSD 128GB Lexar NS100 2.5-Inch SATA III_Hàng chính hãng', 'Thương hiệu	Lexar\r\nKích thước	\r\n\r\n100.2mm x 69.85mm x 7mm\r\nDung lượng ổ cứng	128GB\r\nSKU	5713101027702\r\nModel	NS100', 'Tăng tốc hiệu suất máy tính của bạn với tốc độ và độ tin cậy tối ưu\r\n\r\nNâng cấp ổ cứng SSD Lexar NS100  sẽ giúp tiết kiệm thời gian cho bạn. Với hiệu suất được cải thiện và tốc độ đọc lên đến 550MB / s *, nó sẽ giúp cho máy tính khởi động, chuyển dữ liệu và tải ứng dụng một cách dễ dàng. Thời gian phản hồi ứng dụng và hiệu suất tổng thể tốt hơn để chơi trò chơi, chỉnh sửa ảnh và video hoặc các ứng dụng đa phương tiện khác.\r\n\r\nKhông còn độ trễ\r\n\r\nVới việc nâng cấp ổ cứng SSD Lexar NS100, máy tính của bạn sẽ phản ứng nhanh hơn. Hiệu suất được cải thiện sẽ cho phép bạn tăng tốc toàn bộ hệ thống của bạn.\r\n\r\nTốc độ ấn tượng\r\n\r\nỔ cứng SSD Lexar NS100 với tốc độ đọc liên tục lên tới 550MB / giây và tốc độ ghi liên tục lên đến 510MB / giây *, bạn sẽ tận hưởng hiệu suất tốt hơn cho trải nghiệm giải trí hoặc công việc hàng ngày của mình, máy tính khởi động nhanh hơn, truyền dữ liệu và thời gian tải ứng dụng sẽ không còn trễ.\r\n\r\nĐáng tin cậy\r\n\r\nKhông giống như các ổ đĩa cứng truyền thống, ổ cứng SSD Lexar NS100 không có bộ phận chuyển động nên ít có khả năng bị hỏng, giảm tiêu thụ điện năng và hoạt động làm mát giúp kéo dài thời lượng pin cho máy tính. Trên hết, nó cũng chống sốc, chống rung và chống va đạp, khiến nó trở thành một SSD mạnh mẽ và đáng tin cậy.\r\n\r\nTheo dõi ổ đĩa của bạn\r\n\r\nVới phần mềm quản lý SSD Dash đặc trưng, bạn sẽ có những công cụ cần thiết để cập nhật cách thức hoạt động của SSD. Dễ dàng theo dõi hiệu suất của ổ cứng SSD Lexar NS100, bao gồm tình trạng ổ đĩa và cập nhật firmware để đảm bảo ổ cứng luôn hoạt động tốt.\r\n\r\nKiểm tra nghiêm ngặt\r\n\r\nỔ cứng SSD Lexar NS100 của Lexar đã được trải qua hàng ngàn thử nghiệm với hơn 1.100 thiết bị kỹ thuật số, để đảm bảo hiệu suất, chất lượng, tính tương thích và độ tin cậy.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '800000', '744000', 0, 0, 200, '26.jpg'),
(58, 19, 'Ổ Cứng SSD Samsung 970 PRO 512GB PCIe Gen 3.0 x4, NVMe 1.3 MZ-V7P512BW - Hàng Chính Hãng', 'Thương hiệu	Samsung\r\nXuất xứ	Trung Quốc\r\nDung lượng ổ cứng	512GB\r\nLoại chip NAND 	V-NAND\r\nTốc độ đọc	3500MBps\r\nTốc độ ghi	2300MBps\r\nKiểu giao tiếp	PCIe Gen 3.0 x4\r\nSKU	6781892301478\r\nModel	MZ-V7P512BW', 'SSD vượt xa\r\nTrải nghiệm tốt nhất. Đối với khối lượng công việc lớn trên PC và máy trạm, 970 PRO mang lại hiệu suất cao nhất được hỗ trợ bởi lãnh đạo SSD NVMe của Samsung. Công nghệ V-NAND mới nhất và bộ điều khiển Phoenix mới trong mẫu máy M.2 (2280) nhỏ gọn đáp ứng nhu cầu của những người đam mê công nghệ và chuyên gia khó tính nhất.\r\n\r\nHiệu suất không sợ hãi\r\nHiệu suất đưa bạn vào lệnh. 970 PRO kết hợp giao diện PCIe Gen 3x4 NVMe thế hệ tiếp theo với công nghệ V-NAND mới nhất và bộ điều khiển Phoenix mới được cải tiến để đạt tốc độ đọc / ghi không sợ hãi lên tới 3.500 / 2.700 MB / s *, nhanh hơn khoảng 30% so với trước đây thế hệ.\r\n\r\nĐộ bền vượt trội\r\nCó được hiệu suất bền vững cuối cùng. 970 PRO cung cấp tới 1.200 TBW * , đạt độ bền cao hơn 50% so với thế hệ trước, tất cả đều được cung cấp bởi công nghệ V-NAND mới nhất.\r\n\r\nĐộ tin cậy vô song\r\n\r\nĐạt được một mức độ tự tin mới về ổ đĩa. Bộ điều khiển và bộ tản nhiệt được mạ niken tiên tiến của Samsung trên 970 PRO cho phép tản nhiệt vượt trội. Dynamic Heat Guard tự động theo dõi và duy trì nhiệt độ hoạt động tối ưu để giảm thiểu hiệu suất giảm.\r\n\r\n\r\nẢo thuật gia Samsung\r\n\r\nQuản lý ổ đĩa tiên tiến được thực hiện đơn giản. Phần mềm Samsung Magician sẽ giúp bạn theo dõi ổ đĩa của bạn. Một bộ công cụ thân thiện với người dùng giúp cập nhật ổ đĩa của bạn, theo dõi sức khỏe và tốc độ của ổ đĩa, và thậm chí tăng hiệu suất.\r\n\r\n \r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '6000000', '5600000', 0, 0, 300, '27.jpg'),
(59, 19, 'Ổ Cứng SSD Samsung 860 Pro MZ-76P256BW 256GB Sata III 2.5 inch - Hàng Chính Hãng', 'Thương hiệu	Samsung\r\nXuất xứ	Trung Quốc\r\nDung lượng ổ cứng	256GB\r\nLoại chip NAND 	V-NAND 2bit MLC\r\nTốc độ đọc	560MBps\r\nTốc độ ghi	530MBps\r\nKiểu giao tiếp	SATA III\r\nSKU	9231696385909\r\nModel	MZ-76P256BW', 'Thiết kế tiên tiến\r\n\r\nỔ Cứng SSD Samsung 860 Pro MZ-76P256BW được thiết kế đặc biệt cho máy tính cá nhân và máy tính xách tay, với V-NAND mới nhất ổ cứng SSD nhanh và đáng tin cậy này có nhiều yếu tố hình thức và khả năng tương thích tốt hầu hết các loại thiết bị máy tính, laptop hiện nay. Đáp ứng tốt những nhu cầu cơ bản như: tốc độ khởi động máy tính nhanh, truy xuất dữ liệu, hình ảnh dung lượng lớn một cách nhanh chóng, đi kèm với nhiều công nghệ tích hợp của Samsung giúp cho ổ cứng của bạn có thể hoạt động một cách ổn định và bền bỉ nhất.\r\n\r\nDung lượng lưu trữ 256GB\r\n\r\nVới ổ cứng dung lượng 256GB sẽ đáp ứng được nhu cầu lưu trữ của bạn, mọi tập tin video và hình ảnh của bạn sẽ được lưu trữ với tốc độ nhanh chóng không ngờ, giúp bạn thoải mái lưu trữ dữ liệu phục vụ cho công việc và giải trí của mình.\r\n\r\nTốc độ đọc và ghi cực nhanh\r\n\r\nĐạt hiệu suất đọc / ghi đáng kinh ngạc, giúp bạn hoàn thành công việc hàng ngày của bạn nhanh chóng với công nghệ Intelligent TurboWrite của Samsung. Với công nghệ mới này, hiệu suất Samsung 860PRO được tăng lên 1.9 lần, mang đẳng cấp hàng đầu về tốc độ đọc (560MB/s) và ghi (530Mb/s).\r\n\r\nCông nghệ Samsung 64 Layer 3D V-NAND\r\n\r\nBộ nhớ flash của Samsung được chế tạo bằng cách sử dụng một công nghệ cấu trúc độc quyền 3D V-NAND sắp xếp 64 lớp Cell chồng lên nhau. Kết quả là mật độ Cell sẽ cao hơn và hiệu suất sẽ tăng cao hơn bằng cách sử dụng một FootPrint nhỏ hơn, đây là một bước đột phá trong việc khắc phục những hạn chế mật độ Cell của công nghệ NAND phẳng thông thường. Kết hợp thêm công nghệ Intelligent TurboWrite mới được cải tiến so với thế hệ trước giúp ít tiêu hao TBW, cho độ bền được gia tăng tối đa.\r\nĐộ bền cực cao\r\n\r\nVới độ bền gấp 10 lần so với dòng SSD Samsung 850 Pro, ổ cứng SSD Samsung 860 PRO Series có độ bền rất cao, đáp ứng mọi nhu cầu về tốc độ. Công nghệ Samsung 64 Layer 3D V-NAND của Samsung được thiết kế để xử lý tối thiểu 300 Terabyte Writen (TBW) trong suốt tuổi thọ của ổ cứng tương đương với 160GB đọc / ghi hằng ngày trong khoảng thời gian 5 năm.\r\n\r\nCực kì tiết kiệm điện\r\n\r\nỔ cứng cho phép bạn làm việc lâu hơn và hiệu quả hơn nhờ vào thiết kế độc quyền của Samsung. Tự hào với mức tiêu thụ điện năng thấp nhất của bất kỳ SSD khi ở chế độ chờ hoặc sử dụng, ổ cứng SSD Samsung 860 PRO Series sử dụng ít năng lượng trong khi vẫn duy trì hiệu suất cao nhất, hỗ trợ đầy đủ chế độ Sleep Device cho Ultrabook, chỉ tiêu thụ 2 milliwats (2mW). Thêm vào đó, bộ nhớ cache DDR4 điện áp thấp mang đến hiệu suất cao trong khi tiêu thụ ít hơn tới 30% điện năng khi hoạt động và tiết kiệm tới 93% điện năng khi ở chế độ nghỉ.\r\nBảo mật dữ liệu\r\n\r\nHãy bảo vệ phần cứng máy tính và dữ liệu cá nhân của bạn, ngay cả khi bạn bị mất máy tính xách tay với công nghệ Self-Encrypting Drive (SED) của Samsung. Công nghệ này dựa trên bảo mật bằng phần cứng với mã hóa AES-256-bit, đảm bảo dữ liệu của bạn không bị mất với hiệu suất không hề giảm, tốt hơn rất nhiều khi mã hóa bằng phần mềm. Công nghệ bảo mật tiên tiến của ổ cứng SSD Samsung 860 Pro Series tuân thủ các tiêu chuẩn v2.0 TCG Opal và tương thích với giao thức Microsoft eDrive IEEE 1667. Ngoài ra, bạn có thể xóa nhanh dữ liệu hoặc làm gọn ổ đĩa của bạn với các tính năng xóa bảo mật, không cho phép phục hồi dữ liệu.\r\nBảo vệ chống nhiệt độ cao\r\n\r\nỔ cứng SSD Samsung 860 PRO Series được trang bị công nghệ Dynamic Thermal Guard Protection, duy trì hiệu suất cao trong khi giảm thiểu nguy cơ quá nóng. Điều này duy trì nhiệt độ hoạt động tối ưu của ổ đĩa với một tính năng tự động giảm nhiệt của SSD để bảo vệ dữ liệu của bạn trong khi đảm bảo đáp ứng hiệu suất cao nhất.\r\nChế độ RAPID Mode tăng hiệu suất cực kì cao\r\n\r\nBạn có thể tăng hiệu suất đọc/ghi với chế độ Samsung RAPID Mode. Cũng giống như cơ cấu chuyển động trong một chiếc xe, phần mềm Magician có các tùy chọn để nâng cao hiệu suất xử lý dữ liệu bằng cách sử dụng bộ nhớ máy tính không sử dụng (DRAM) như một bộ nhớ cache, cung cấp hiệu suất nhanh hơn 1.8 lần ở chế độ RAPID.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '3000000', '2950000', 0, 0, 400, '28.jpg'),
(60, 19, 'Ổ cứng gắn trong SSD Intel 660P 1TB M2 2280 NVMe SSDPEKNW010T8 - Hàng Nhập Khẩu', 'Thương hiệu	Intel\r\nSKU	4682530741934', 'Thương hiệu 	Intel\r\nModel 	660P\r\nChuẩn kết nối 	PCIe NVMe 3.0 x4\r\nDung lượng 	1TB\r\nTốc độ đọc 	1800MB/s\r\nTốc độ ghi 	1800MB/s\r\nIOPS 	150K-220K\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', '3100000', '3000000', 0, 0, 500, '29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Indexes for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
