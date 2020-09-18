-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2020 lúc 07:56 PM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `social`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, '', 'tuong_tuong', '', '2020-07-24 16:03:25', 'no', 29),
(2, '', 'tuong_tuong', 'fqwerweq_qwedfsg', '2020-07-24 16:17:49', 'no', 28),
(3, 'aloaloalo', 'tuong_tuong', 'fqwerweq_qwedfsg', '2020-07-24 16:19:28', 'no', 28),
(4, 'test comment 3', 'tuong_tuong', 'vo_tuong', '2020-07-24 16:21:38', 'no', 20),
(5, 'test comment 4', 'tuong_tuong', 'fqwerweq_qwedfsg', '2020-07-24 16:58:40', 'no', 29),
(6, 'test cmt 5', 'tuong_tuong', 'fqwerweq_qwedfsg', '2020-07-24 16:59:00', 'no', 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'fqwerweq_qwedfsg', 'tuong_tuong'),
(2, 'vdt123', 'tuong_tuong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(45, 'tuong_tuong', 29),
(46, 'tuong_tuong', 28),
(47, 'tuong_tuong', 25),
(48, 'tuong_tuong', 26),
(49, 'tuong_tuong', 22),
(50, 'tuong_tuong', 20),
(51, 'tuong_tuong', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'vo_tuong', 'tuong_tuong', 'dsfafas\r\n', '2020-09-02 05:48:52', 'yes', 'yes', 'no'),
(2, 'vo_tuong', 'tuong_tuong', 'agfeyrty', '2020-09-02 05:48:54', 'yes', 'yes', 'no'),
(3, 'vo_tuong', 'tuong_tuong', 'pyoiuhrthyertutyjgdhjndn', '2020-09-02 05:48:58', 'yes', 'yes', 'no'),
(4, 'vo_tuong', 'tuong_tuong', 'trydtygf', '2020-09-02 05:49:12', 'yes', 'yes', 'no'),
(5, 'vo_tuong', 'tuong_tuong', 'trydtygf', '2020-09-02 05:51:55', 'yes', 'yes', 'no'),
(6, 'vo_tuong', 'tuong_tuong', 'eru7e5utru', '2020-09-02 05:51:58', 'yes', 'yes', 'no'),
(7, 'vo_tuong', 'tuong_tuong', 'jfghjfgj', '2020-09-02 05:52:00', 'yes', 'yes', 'no'),
(8, 'vo_tuong', 'tuong_tuong', '111111111111111111111111111111111', '2020-09-02 05:52:04', 'yes', 'yes', 'no'),
(9, 'vo_tuong', 'tuong_tuong', '222222222222222222222', '2020-09-02 05:52:06', 'yes', 'yes', 'no'),
(10, 'vo_tuong', 'tuong_tuong', '44444444444444444444444', '2020-09-02 05:52:08', 'yes', 'yes', 'no'),
(11, 'vo_tuong', 'tuong_tuong', '5555555555555555555555', '2020-09-02 05:52:10', 'yes', 'yes', 'no'),
(12, 'vo_tuong', 'tuong_tuong', '66666666666666', '2020-09-02 05:52:13', 'yes', 'yes', 'no'),
(13, 'vo_tuong', 'tuong_tuong', '77777777777777777777', '2020-09-02 05:52:16', 'yes', 'yes', 'no'),
(14, 'vo_tuong', 'tuong_tuong', '44444444444444444', '2020-09-02 05:52:19', 'yes', 'yes', 'no'),
(15, 'tuong_tuong', 'vo_tuong', 'fiualifhlskdfhldaisufha', '2020-09-03 03:27:40', 'yes', 'yes', 'no'),
(16, 'tuong_tuong', 'vo_tuong', ';oiieurodjfvk,zghla', '2020-09-03 03:27:44', 'yes', 'yes', 'no'),
(17, 'tuong_tuong', 'vo_tuong', ';oiieurodjfvk,zghla', '2020-09-03 03:29:13', 'yes', 'yes', 'no'),
(18, 'tuong_tuong', 'vo_tuong', ';oiieurodjfvk,zghla', '2020-09-03 03:30:07', 'yes', 'yes', 'no'),
(19, 'tuong_tuong', 'vo_tuong', 'hallo\r\n', '2020-09-03 03:30:18', 'yes', 'yes', 'no'),
(20, 'tuong_tuong', 'vo_tuong', 'hallo\r\n', '2020-09-03 03:47:56', 'yes', 'yes', 'no'),
(21, 'vo_tuong', 'tuong_tuong', 'alo', '2020-09-03 19:32:53', 'yes', 'yes', 'no'),
(22, 'vo_tuong', 'tuong_tuong', 'alo', '2020-09-03 19:33:39', 'yes', 'yes', 'no'),
(23, 'vo_tuong', 'tuong_tuong', 'hello', '2020-09-03 19:33:54', 'yes', 'yes', 'no'),
(24, 'vo_tuong', 'tuong_tuong', 'hello', '2020-09-03 20:02:29', 'yes', 'yes', 'no'),
(25, 'vo_tuong', 'tuong_tuong', 'hello', '2020-09-03 20:11:21', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'Day la post test dau tien', 'fqwerweq_qwedfsg', 'none', '2020-07-23 14:57:09', 'no', 'no', 0, ''),
(2, 'Day la post test thu 2', 'fqwerweq_qwedfsg', 'none', '2020-07-23 14:57:23', 'no', 'no', 0, ''),
(4, 'day la post test thu 3\r\nhahaha', 'vo_tuong', 'none', '2020-07-23 23:17:29', 'no', 'no', 0, ''),
(8, 'asdjhadh\r\n', 'vo_tuong', 'none', '2020-07-24 11:42:14', 'no', 'no', 0, ''),
(9, 'wertiouerwtiure', 'vo_tuong', 'none', '2020-07-24 11:42:17', 'no', 'no', 0, ''),
(10, 'hahahahahahaha', 'vo_tuong', 'none', '2020-07-24 11:42:24', 'no', 'no', 0, ''),
(11, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:31', 'no', 'no', 0, ''),
(12, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:34', 'no', 'no', 0, ''),
(13, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:36', 'no', 'no', 0, ''),
(14, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:39', 'no', 'no', 0, ''),
(15, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:41', 'no', 'no', 0, ''),
(16, 'hihihihihihihihi', 'vo_tuong', 'none', '2020-07-24 11:42:43', 'no', 'no', 0, ''),
(17, 'hehehehehehe', 'vo_tuong', 'none', '2020-07-24 11:42:56', 'no', 'no', 1, ''),
(18, 'hehehehehehe', 'vo_tuong', 'none', '2020-07-24 11:43:01', 'no', 'no', 0, ''),
(19, 'hehehehehehe', 'vo_tuong', 'none', '2020-07-24 11:43:03', 'no', 'no', 0, ''),
(20, 'hehehehehehe', 'vo_tuong', 'none', '2020-07-24 11:43:05', 'no', 'no', 1, ''),
(21, 'hahahahaha', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:43:20', 'no', 'no', 0, ''),
(22, 'hahahahaha', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:43:22', 'no', 'no', 1, ''),
(23, 'hahahahaha', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:43:23', 'no', 'no', 0, ''),
(24, 'hahahahaha', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:43:25', 'no', 'no', 0, ''),
(25, 'hohohoho', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:46:52', 'no', 'no', 1, ''),
(26, 'hohohoho', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:47:13', 'no', 'no', 1, ''),
(27, 'hohohoho', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:47:25', 'no', 'no', 0, ''),
(28, 'hahaha', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:47:37', 'no', 'no', 1, ''),
(29, 'hihihi', 'fqwerweq_qwedfsg', 'none', '2020-07-24 11:47:40', 'no', 'no', 1, ''),
(31, 'hello', 'tuong_tuong', 'vo_tuong', '2020-09-01 11:58:49', 'no', 'no', 0, ''),
(32, 'dsadasd', 'tuong_tuong', 'vo_tuong', '2020-09-01 06:04:45', 'no', 'yes', 0, ''),
(36, 'dakjdaldj', 'vo_tuong', 'none', '2020-09-08 03:00:58', 'no', 'no', 0, ''),
(39, 'iejflkasdndfsl', 'vo_tuong', 'none', '2020-09-08 03:21:55', 'no', 'no', 0, ''),
(40, 'iejflkasdndfsl', 'vo_tuong', 'none', '2020-09-08 03:24:24', 'no', 'no', 0, ''),
(41, 'rwerewfds', 'vo_tuong', 'none', '2020-09-08 03:24:28', 'no', 'no', 0, ''),
(42, 'www.youtube.com/watch?v=dySzHYmVZiE', 'vo_tuong', 'none', '2020-09-08 03:24:36', 'no', 'yes', 0, ''),
(43, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/dySzHYmVZiE\r\n\'></iframe><br>', 'vo_tuong', 'none', '2020-09-08 03:30:19', 'no', 'no', 0, ''),
(44, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/dySzHYmVZiE\r\n\'></iframe><br>', 'vo_tuong', 'none', '2020-09-08 03:32:10', 'no', 'no', 0, ''),
(45, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/dySzHYmVZiE\'></iframe><br>', 'vo_tuong', 'none', '2020-09-08 03:32:33', 'no', 'no', 0, ''),
(46, 'gfkgfl', 'vo_tuong', 'none', '2020-09-08 04:58:02', 'no', 'no', 0, 'assets/images/posts/5f57014aa4371108168887_710329986203848_3802561907579397613_n.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Gfkgfl', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(10, 'Qwe', 'Qwe', 'qwe_qwe', 'Qwe@gmail.com', 'd553d148479a268914cecb77b2b88e6a', '2020-07-21', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(11, 'Fqwerweq', 'Qwedfsg', 'fqwerweq_qwedfsg', 'Abc234@defgh.com', 'd1b2cc725d846f0460ff290c60925070', '2020-07-21', 'assets/images/profile_pics/defaults/head_emerald.png', 22, 5, 'no', ','),
(12, 'Vo', 'Tuong', 'vo_tuong', 'Abcd12@gmail.com', 'd553d148479a268914cecb77b2b88e6a', '2020-07-23', 'assets/images/profile_pics/vo_tuonge8929f74c07f4fca89a3b8a7d1ae4f0bn.jpeg', 44, 2, 'no', ',tu_tuong,tuong_tuong,'),
(13, 'tuong', 'best', 'tuong_tuong', 'Abc123@gmail.com', '93dc55a251dcdf29825c3d1e4dd61883', '2020-07-24', 'assets/images/profile_pics/tuong_tuong08341a5d4f94fceec32186772ec38852n.jpeg', 3, 0, 'no', ',vo_tuong,alo_ha,'),
(14, 'Tu', 'Tuong', 'tu_tuong', 'Abcd123@gmail.com', '03654de7ad6eabeb63844c48fe6c5c7d', '2020-07-24', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',vo_tuong,tuong_tu,'),
(15, 'Tuong', 'Tu', 'tuong_tu', 'Abcd1234@gmail.com', 'd3453739b2634e61c3e0242ff9da8ce1', '2020-07-24', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',tu_tuong,'),
(16, 'Alo', 'Ha', 'alo_ha', 'Aloha@gmail.com', '812e4bfbf919978d2ac7f5cff004c0b1', '2020-08-28', 'assets/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ',tuong_tuong,');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
