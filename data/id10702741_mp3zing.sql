-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 12, 2020 lúc 02:07 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id10702741_mp3zing`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

CREATE TABLE `album` (
  `IdAlbum` int(11) NOT NULL,
  `TenAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenCaSiAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`IdAlbum`, `TenAlbum`, `TenCaSiAlbum`, `HinhAlbum`) VALUES
(1, 'Anh Đứng Từ Chiều (Single)', 'Huy Vạc, 5Mon\r\n', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/anhdungdaytuchieu.jpg'),
(2, 'Ai Đợi Mình Được Mãi (Single)', 'Thanh Hưng', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/aidoiminhduocmai.jpg'),
(3, 'Em Không Sai Chúng Ta Sai (Single)', 'ERIK', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/emkhongsaichungtasai.jpg'),
(4, 'Hơn Cả Yêu (Single)\r\n', 'Đức Phúc', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/honcayeu.jpg'),
(5, 'Thích Thì Đến (Single)\r\n', 'Lê Bảo Bình', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/thichthiden.jpg'),
(6, 'Hồng Nhan Bạc Phận (Single)\r\n', 'Jack, Liam', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/hongnhan.jpg'),
(7, 'Faded\r\n', 'Alan Walker', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/faded.jpg'),
(8, 'Tát Nhật Lãng Rực Rỡ / 火紅的薩日朗 (Cover) (Single)\r\n', 'Yếu Bất Yếu Mãi Thái', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/tatnhatlang.jpg'),
(9, 'Chạy Ngay Đi', 'Sơn Tùng M-TP', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/chayngaydi.jpg'),
(10, 'Yes I Do', 'Bùi Anh Tuấn, Hiền Hồ', 'https://thanhdat09.000webhostapp.com/Hinhanh/Album/yesido.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baihat`
--

CREATE TABLE `baihat` (
  `IdBaiHat` int(11) NOT NULL,
  `IdAlbum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdPlayList` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CaSi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LinkBaiHat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LuotThich` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baihat`
--

INSERT INTO `baihat` (`IdBaiHat`, `IdAlbum`, `IdTheLoai`, `IdPlayList`, `TenBaiHat`, `HinhBaiHat`, `CaSi`, `LinkBaiHat`, `LuotThich`) VALUES
(1, '1', '2, 13', '9', 'Anh Đứng Đây Từ Chiều', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/anhdungdaytuchieu.jpg', 'Huy Vạc, 5Mon', 'https://thanhdat2000.000webhostapp.com/Anh-Dung-Tu-Chieu-Huy-Vac-5Mon.mp3', 3),
(2, '7', '1, 3', '5', 'Are You With Me (Remix)', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/martingarrix.jpg', 'Lost Frequencies', 'https://thanhdat2000.000webhostapp.com/Are-You-With-Me-Harold-van-Lennep-Piano-Edit-Lost-Frequencies.mp3', 0),
(3, '1', '2, 5', '3', 'Em Có Biết', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/emcobiet.jpg', 'H2K', 'https://thanhdat2000.000webhostapp.com/Em-Co-Biet-H2K.mp3', 1),
(4, '2', '5', '9', 'Hai Chúng Ta', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/giua-hai-chung-ta.jpg', 'Thái Trinh', 'https://thanhdat2000.000webhostapp.com/Hai-Chung-Ta-Thai-Trinh.mp3', 0),
(5, '7', '4', '5', 'Faded', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/fadedsong.jpg', 'Alan Walker', 'https://thanhdat2000.000webhostapp.com/Faded.mp3', 0),
(6, '7', '4', '5, 7', 'Astromomia', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/astromomia.jpg', 'Vicetone & Tony Igy', 'https://thanhdat2000.000webhostapp.com/Astronomia.mp3', 22),
(7, '3', '5, 15', '2, 3', 'Em Không Sai Chúng Ta Sai', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/areyouwithme.jpg', 'ERIK', 'https://thanhdat2000.000webhostapp.com/Em-Khong-Sai-Chung-Ta-Sai-ERIK.mp3', 0),
(8, '9', '14, 13', '4', 'Âm Thầm Bên Em', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/amthambenem.jpg', 'Sơn Tùng M-TP', 'https://thanhdat2000.000webhostapp.com/Am-Tham-Ben-Em-Son-Tung-M-TP.mp3', 33),
(9, '3', '10, 15', '3', 'Không Thể Cùng Nhau Suôt Kiếp', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/khongthecungnhausuotkiepsong.jpg', 'Hòa Minzy', 'https://thanhdat2000.000webhostapp.com/Khong-The-Cung-Nhau-Suot-Kiep-Hoa-Minzy-Mr-Siro.mp3', 0),
(10, '9', '14, 11', '4, 7', 'Không Phải Dạng Vừa Đâu', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/khongphaidangvuadau.jpg', 'Sơn Tùng M-TP', 'https://thanhdat2000.000webhostapp.com/Khong-Phai-Dang-Vua-Dau-Son-Tung-M-TP.mp3', 20),
(11, '7', '4, 12', '5, 7', 'In The End', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/intheend.jpg', 'Linkin Park', 'https://thanhdat2000.000webhostapp.com/In-The-End.mp3', 0),
(12, '7', '4', '7', 'I Love You 3000', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/iloveyou3000.jpg', 'Stephanie Poetri', 'https://thanhdat2000.000webhostapp.com/I-Love-You-3000.mp3', 33),
(13, '4', '8, 9', '2, 8', 'Hơn Cả Yêu', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/honcayeu.jpg', 'Đức Phúc', 'https://thanhdat2000.000webhostapp.com/Hon-Ca-Yeu-Duc-Phuc.mp3', 0),
(14, '8', '5', '6, 7', 'Học Tiếng Mèo Kêu', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/hoctiengmeokeu.jpg', 'Tiểu Phong Phong', 'https://thanhdat2000.000webhostapp.com/Hoc-Meo.mp3', 12),
(15, '10', '7, 9', '2,8', 'Ngày Cưới', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/ngaycuoi.jpg', 'Khắc Việt, Hương Tràm', 'https://thanhdat2000.000webhostapp.com/Ngay-Cuoi-Khac-Viet-Huong-Tram.mp3', 0),
(16, '6', '2,11', '1', 'Hai Phút Hơn', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/haiphuthon.jpg', 'Pháo, CM1X', 'https://thanhdat2000.000webhostapp.com/Hai-Phut-Hon-Phao-CM1X.mp3', 0),
(17, '10', '8, 10', '4, 8', 'Nắm Lấy Tay Anh', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/namlaytayanh.jpg', 'Tuấn Hưng', 'https://thanhdat2000.000webhostapp.com/Nam-Lay-Tay-Anh-Tuan-Hung.mp3', 0),
(18, '10', '7, 8', '3, 8', 'Mặt Trời Của Em', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/mattroicuaem.jpg', 'Phương Ly, Justatee', 'https://thanhdat2000.000webhostapp.com/Mat-Troi-Cua-Em-Phuong-Ly-JustaTee.mp3', 0),
(19, '8', '5', '6', 'Mang Chủng Âm Khuyết', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/mangchung.jpg', 'Âm Khuyết Thi Thính', 'https://thanhdat2000.000webhostapp.com/Mang-Chung-Am-Khuyet.mp3', 0),
(20, '4', '2, 13', '1', 'Lời Yêu Ngây Dại', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/loiyeungaydai.jpg', 'Kha', 'https://thanhdat2000.000webhostapp.com/Loi-Yeu-Ngay-Dai-Kha.mp3', 0),
(21, '5', '13', '9', 'Lẻ Loi', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/leloi.jpg', 'Châu Đăng Khoa', 'https://thanhdat2000.000webhostapp.com/Le-Loi-Chau-Dang-Khoa.mp3', 3),
(22, '9', '14', '2, 4', 'Khuôn Mặt Đáng Thương', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/khuonmatdangthuong.jpg', 'Sơn Tùng M-TP', 'https://thanhdat2000.000webhostapp.com/Khuon-Mat-Dang-Thuong-Son-Tung-M-TP.mp3', 12),
(23, '5', '11, 13', '3', 'Trời Giấu Trời Mang Đi', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/troigiautroimangdi.jpg', 'AMEE, VirusS', 'https://thanhdat2000.000webhostapp.com/Troi-Giau-Troi-Mang-Di-AMEE-ViruSs.mp3', 0),
(24, '10', '7, 13', '8', 'Thương', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/thuong.jpg', 'Karik, Uyên Pim', 'https://thanhdat2000.000webhostapp.com/Thuong-Karik-Uyen-Pim-Bet-Band.mp3', 0),
(25, '5', '11', '3', 'Thích Thì Đến', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/thichthiden.jpg', 'Lê Bảo Bình', 'https://thanhdat2000.000webhostapp.com/Thich-Thi-Den-Le-Bao-Binh.mp3', 0),
(26, '10', '13', '7, 8', 'Thấy Là Yêu Thương', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/thaylayeuthuong.jpg', 'OnlyC', 'https://thanhdat2000.000webhostapp.com/Thay-La-Yeu-Thuong-OnlyC-Lou-Hoang.mp3', 0),
(27, '9', '14', '1, 4', 'Thái Bình Mồ Hôi Rơi', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/thaibinhmohoiroi.jpg', 'Sơn Tùng M-TP', 'https://thanhdat2000.000webhostapp.com/Thai-Binh-Mo-Hoi-Roi-Son-Tung-M-TP.mp3', 16),
(28, '2', '7, 10', '1, 7', 'Ta Đi Cùng Nhau', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/tadicungnhau.jpg', 'Đen, Linh Cáo', 'https://thanhdat2000.000webhostapp.com/Ta-Cu-Di-Cung-Nhau-Den-Linh-Cao.mp3', 0),
(29, '7', '4', '5', 'Symphony', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/symphony.jpg', 'Clean Bandit', 'https://thanhdat2000.000webhostapp.com/Symphony.mp3', 9),
(30, '10', '13, 8', '7, 8', 'Say You Do', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/sayyoudo.jpg', 'Tiên Tiên', 'https://thanhdat2000.000webhostapp.com/Say-You-Do-Tien-Tien.mp3', 0),
(31, '7', '4, 3', '5', 'Roses', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/roses.jpg', 'SAINt JHN', 'https://thanhdat2000.000webhostapp.com/Roses.mp3', 0),
(32, '7', '4', '5, 7', 'Old Town Road', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/oldtownroad.jpg', 'Lil Nas X', 'https://thanhdat2000.000webhostapp.com/Old-Town-Road-Remix.mp3', 0),
(33, '7', '4,12', '7', 'Numb', 'https://thanhdat09.000webhostapp.com/Hinhanh/BaiHat/numb.jpg', 'Linkin Park', 'https://thanhdat2000.000webhostapp.com/Numb.mp3', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `IdChuDe` int(11) NOT NULL,
  `TenChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhChude` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`IdChuDe`, `TenChuDe`, `HinhChude`) VALUES
(1, 'Acoustic', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/acoustic.jpg'),
(2, 'Nhạc Việt', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhacviet.jpg'),
(3, 'Nhạc Âu Mỹ', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhacaumy.jpg'),
(4, 'Nhạc Hoa', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhachoa.jpg'),
(5, 'Nhạc Chil', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhacchil.jpg'),
(6, 'Nhạc Tình Yêu', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhactinhyeu.jpg'),
(7, 'Nhạc Rock', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhacrock.jpg'),
(8, 'Nhạc Thiếu Nhi', 'https://thanhdat09.000webhostapp.com/Hinhanh/ChuDe/nhacthieunhi.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

CREATE TABLE `playlist` (
  `IdPlayList` int(11) NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhNen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinhicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `playlist`
--

INSERT INTO `playlist` (`IdPlayList`, `Ten`, `HinhNen`, `Hinhicon`) VALUES
(1, 'Top 100 Nhạc Rap Việt Nam Hay Nhất', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundtop100cakhucrap.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/top100.jpg'),
(2, 'V-Pop: Những Bản Hits Quốc Dân', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundvpopquocdan.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/v-popquocdan.jpg'),
(3, 'Các Ca Khúc Pop Ballad Việt Nổi Bật 2020', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundnhacviethuahen.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/nhacviethuahen.jpg'),
(4, 'Nhạc Việt Nghe Nhiều 2020', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundnhacvietnghenhieu2020.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/nhacvietnghenhieu2020.jpg'),
(5, 'USUK Nghe Nhiều 2020', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundusuknghenhieu2020.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/usuknghenhieu2020.jpg'),
(6, 'Nhạc Hoa Chất Nhất', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundnhachoachatnhat.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/nhachoachatnhat.jpg'),
(7, 'Best Chill Songs For Relaxing', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundnhacvietnghenhieu2020.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/nhacviethuahen.jpg'),
(8, 'Yêu Là Phải Nói!', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundyeulaphainoi.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/yeulaphainoi.jpg'),
(9, 'Thiếu Nhi 50: Zing Choice', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/backgroundtop100cakhucrap.jpg', 'https://thanhdat09.000webhostapp.com/Hinhanh/PlayList/usuknghenhieu2020.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdBaiHat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`Id`, `HinhAnh`, `NoiDung`, `IdBaiHat`) VALUES
(1, 'https://thanhdat09.000webhostapp.com/Hinhanh/QuangCao/mytam.jpg', 'Ca khúc hay nhất của Mỹ Tâm gửi đến mọi người', 30),
(2, 'https://thanhdat09.000webhostapp.com/Hinhanh/QuangCao/khongthecungnhausuotkiep.jpg', 'Không thể cùng nhau suốt kiếp là một tác phẩm mới gửi đến mọi người', 9),
(3, 'https://thanhdat09.000webhostapp.com/Hinhanh/QuangCao/chanlamlai.jpg', 'Một ca sỹ mới nổi gần đây với chất giọng đặc biệt mời khán giả thưởng thức', 16),
(4, 'https://thanhdat09.000webhostapp.com/Hinhanh/QuangCao/chicananhgiavo.jpg', 'Chi Dân lại tiếp tục tung ra bản nhạc với chất giọng riêng của bản thân', 21),
(5, 'https://thanhdat09.000webhostapp.com/Hinhanh/QuangCao/cuopdicathegioi.jpg', 'Ca khúc Cướp đi cả thế giới liệu có thể trở thành bài nhạc được yêu thích nhất của mọi ', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IdTheloai` int(11) NOT NULL,
  `IdChuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HinhTheLoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`IdTheloai`, `IdChuDe`, `TenTheLoai`, `HinhTheLoai`) VALUES
(1, '1', 'Acoustic EDM', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/acousticedm.jpg'),
(2, '2', 'Giọng Hát Mới Nổi Bật', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/gionghatmoinoibat.jpg'),
(3, '3', 'US-UK Nhạc Mới Nổi Bật', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/usuknhacmoinoibat.jpg'),
(4, '3', 'USUK Hôm Nay Nghe Gì?', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/usukhomnaynghegi.jpg'),
(5, '4', 'C-Pop Nhạc Mới Nổi Bật', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/cpopnhacmoinoibat.jpg'),
(6, '4', 'Những Bài Hát Nhạc Hoa Gây Nghiện', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/nhachoagaynghien.jpg'),
(7, '6', 'Yêu Không Cần Cớ, Cần Anh Cơ!', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/yeukhongcancocananhco.jpg'),
(8, '6', 'Cậu Là Của Tớ!', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/caulacuato.jpg'),
(9, '6', 'Cưới Đi Chờ Chi', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/cuoidichochi.jpg'),
(10, '5', 'Đưa Nhau Đi Trốn', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/duanhauditron.jpg'),
(11, '5', 'Những Bài Hát Việt Remix Gây Nghiện', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/nhungbaihayvnremix.jpg'),
(12, '7', 'Rock 50: Zing Choice', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/rockzingchoice.jpg'),
(13, '8', 'Góc Nhạc Cũ', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/gocnhaccu.jpg'),
(14, '5', 'Những Bài Hát Hay Nhất Của Sơn Tùng M-TP', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/nhungbaihathaynhatcuasongtung.jpg'),
(15, '1', 'Acoustic Ký Ức', 'https://thanhdat09.000webhostapp.com/Hinhanh/TheLoai/acoustickyuc.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`IdAlbum`);

--
-- Chỉ mục cho bảng `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`IdBaiHat`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`IdChuDe`);

--
-- Chỉ mục cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`IdPlayList`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IdTheloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `IdAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `baihat`
--
ALTER TABLE `baihat`
  MODIFY `IdBaiHat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IdChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `playlist`
--
ALTER TABLE `playlist`
  MODIFY `IdPlayList` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `IdTheloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
