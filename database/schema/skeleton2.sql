-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th8 04, 2022 lúc 12:22 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `skeleton2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(9, 0, 10, 'Mentor', 'fa-users', '/mentors', NULL, '2022-08-02 10:56:05', '2022-08-02 10:56:05'),
(10, 0, 11, 'Student', 'fa-users', '/students', NULL, '2022-08-02 10:56:05', '2022-08-02 10:56:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 10:19:14', '2022-08-02 10:19:14'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:35:43', '2022-08-02 10:35:43'),
(3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:35:46', '2022-08-02 10:35:46'),
(4, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:35:49', '2022-08-02 10:35:49'),
(5, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:36:12', '2022-08-02 10:36:12'),
(6, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:36:19', '2022-08-02 10:36:19'),
(7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:36:22', '2022-08-02 10:36:22'),
(8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-08-02 10:37:11', '2022-08-02 10:37:11'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:37:28', '2022-08-02 10:37:28'),
(10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:42:37', '2022-08-02 10:42:37'),
(11, 1, 'admin/auth/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:42:43', '2022-08-02 10:42:43'),
(12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:50:46', '2022-08-02 10:50:46'),
(13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-08-02 10:56:22', '2022-08-02 10:56:22'),
(14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:56:27', '2022-08-02 10:56:27'),
(15, 1, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:56:36', '2022-08-02 10:56:36'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-08-02 10:56:37', '2022-08-02 10:56:37'),
(17, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:56:52', '2022-08-02 10:56:52'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:57:13', '2022-08-02 10:57:13'),
(19, 1, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:57:16', '2022-08-02 10:57:16'),
(20, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 10:57:16', '2022-08-02 10:57:16'),
(21, 1, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 10:59:25', '2022-08-02 10:59:25'),
(22, 1, 'admin/mentors', 'GET', '127.0.0.1', '[]', '2022-08-02 10:59:52', '2022-08-02 10:59:52'),
(23, 1, 'admin/mentors', 'GET', '127.0.0.1', '[]', '2022-08-02 11:01:29', '2022-08-02 11:01:29'),
(24, 1, 'admin/mentors/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:01:33', '2022-08-02 11:01:33'),
(25, 1, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:01:38', '2022-08-02 11:01:38'),
(26, 1, 'admin/mentors/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:03:10', '2022-08-02 11:03:10'),
(27, 1, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:03:12', '2022-08-02 11:03:12'),
(28, 1, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:03:14', '2022-08-02 11:03:14'),
(29, 1, 'admin/students/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:03:17', '2022-08-02 11:03:17'),
(30, 1, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:03:19', '2022-08-02 11:03:19'),
(31, 2, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 11:04:00', '2022-08-02 11:04:00'),
(32, 2, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:04:05', '2022-08-02 11:04:05'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:05:51', '2022-08-02 11:05:51'),
(34, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:05:53', '2022-08-02 11:05:53'),
(35, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Mentor\",\"icon\":\"fa-users\",\"uri\":\"\\/mentors\",\"roles\":[\"3\",null],\"permission\":null,\"_token\":\"I1g06MDJi69Tiv5pK6v7gehbPlEdkgF19cOwGhLC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2022-08-02 11:05:58', '2022-08-02 11:05:58'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-08-02 11:05:58', '2022-08-02 11:05:58'),
(37, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:06:01', '2022-08-02 11:06:01'),
(38, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Student\",\"icon\":\"fa-users\",\"uri\":\"\\/students\",\"roles\":[\"2\",null],\"permission\":null,\"_token\":\"I1g06MDJi69Tiv5pK6v7gehbPlEdkgF19cOwGhLC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2022-08-02 11:06:05', '2022-08-02 11:06:05'),
(39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-08-02 11:06:06', '2022-08-02 11:06:06'),
(40, 2, 'admin/mentors', 'GET', '127.0.0.1', '[]', '2022-08-02 11:06:12', '2022-08-02 11:06:12'),
(41, 2, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:06:15', '2022-08-02 11:06:15'),
(42, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:06:24', '2022-08-02 11:06:24'),
(43, 3, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 11:19:27', '2022-08-02 11:19:27'),
(44, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:21:13', '2022-08-02 11:21:13'),
(45, 3, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 11:24:07', '2022-08-02 11:24:07'),
(46, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:24:12', '2022-08-02 11:24:12'),
(47, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:24:20', '2022-08-02 11:24:20'),
(48, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:25:00', '2022-08-02 11:25:00'),
(49, 3, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:25:02', '2022-08-02 11:25:02'),
(50, 3, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:25:10', '2022-08-02 11:25:10'),
(51, 3, 'admin/mentors', 'GET', '127.0.0.1', '[]', '2022-08-02 11:25:15', '2022-08-02 11:25:15'),
(52, 3, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:25:19', '2022-08-02 11:25:19'),
(53, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:25:38', '2022-08-02 11:25:38'),
(54, 3, 'admin', 'GET', '127.0.0.1', '[]', '2022-08-02 11:26:52', '2022-08-02 11:26:52'),
(55, 3, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:26:57', '2022-08-02 11:26:57'),
(56, 1, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:27:10', '2022-08-02 11:27:10'),
(57, 1, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:27:13', '2022-08-02 11:27:13'),
(58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:27:16', '2022-08-02 11:27:16'),
(59, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:27:19', '2022-08-02 11:27:19'),
(60, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:27:51', '2022-08-02 11:27:51'),
(61, 2, 'admin/students', 'GET', '127.0.0.1', '[]', '2022-08-02 11:28:00', '2022-08-02 11:28:00'),
(62, 2, 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:28:12', '2022-08-02 11:28:12'),
(63, 2, 'admin/students', 'GET', '127.0.0.1', '[]', '2022-08-02 11:32:30', '2022-08-02 11:32:30'),
(64, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:32:41', '2022-08-02 11:32:41'),
(65, 3, 'admin/mentors', 'GET', '127.0.0.1', '[]', '2022-08-02 11:32:50', '2022-08-02 11:32:50'),
(66, 3, 'admin/mentors/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:32:55', '2022-08-02 11:32:55'),
(67, 3, 'admin/mentors/2', 'GET', '127.0.0.1', '[]', '2022-08-02 11:35:44', '2022-08-02 11:35:44'),
(68, 3, 'admin/mentors/2', 'GET', '127.0.0.1', '[]', '2022-08-02 11:35:50', '2022-08-02 11:35:50'),
(69, 3, 'admin/mentors/2', 'GET', '127.0.0.1', '[]', '2022-08-02 11:36:35', '2022-08-02 11:36:35'),
(70, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:37:51', '2022-08-02 11:37:51'),
(71, 3, 'admin/mentors', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:37:53', '2022-08-02 11:37:53'),
(72, 3, 'admin/mentors/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-08-02 11:38:05', '2022-08-02 11:38:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\n/auth/permissions\n/auth/menu\n/auth/logs', NULL, NULL),
(6, 'Mentor', 'admin.mentor', NULL, '/mentors\r\n/mentors/*', '2022-08-02 11:32:26', '2022-08-02 11:32:26'),
(7, 'Student', 'admin.student', NULL, '/students\r\n/students/*', '2022-08-02 11:32:26', '2022-08-02 11:32:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-08-02 10:18:33', '2022-08-02 10:18:33'),
(2, 'Mentor', 'mentor', '2022-08-02 10:36:41', '2022-08-02 10:36:41'),
(3, 'Student', 'student', '2022-08-02 10:36:41', '2022-08-02 10:36:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(3, 9, NULL, NULL),
(2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 6, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$HIoYF92aT4T7.Z01YJ/FjuPCtLb13C8I/zhdvwXQY8ZlEYO9VYp9u', 'Administrator', NULL, '00I3AjitYy932vtBQU6Vc1S4KMUY9xp7QvJnAnizBaMgp9dvlXZqiPS8Mo9L', '2022-08-02 10:18:33', '2022-08-02 10:18:33'),
(2, 'Mentor_Demo', '$2y$10$RkF4dLM0F7NHitmE1nxBlewMbcLeBChkai7LvyqTICLcMXouS6Cmy', 'Mentor Demo', NULL, 'H3B4o4RvouwSs8NGzEE3PP4GXhJ1OM4AwkRpJShdhGFmXfwZafpytTn2aQmR', '2022-08-02 10:36:48', '2022-08-02 10:36:48'),
(3, 'Student_Demo', '$2y$10$Tmn8AcX3ph3Uuhdgk/S8d.TgbTqeIzLJHrjN1TaEtccB23UhjZytu', 'Student Demo', NULL, 'WDUbwRmV7q1tOejNk6Qw9jfIkf0SYzmDxcOz6WG1lVm3w1vI81RaT0QlmyGF', '2022-08-02 10:36:48', '2022-08-02 10:36:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
