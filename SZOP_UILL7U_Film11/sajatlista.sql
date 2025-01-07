-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Jan 07. 14:35
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sajatlista`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `releaseDate` datetime NOT NULL,
  `streamingDate` datetime NOT NULL,
  `type` enum('film','series') NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `films`
--

INSERT INTO `films` (`id`, `title`, `genre`, `length`, `releaseDate`, `streamingDate`, `type`, `imageUrl`, `createdAt`, `updatedAt`) VALUES
(1, 'Deadpool & Rozsomák', 'Action', 108, '2016-02-12 00:00:00', '2016-06-10 00:00:00', 'film', 'https://cdn.marvel.com/content/1x/dp3_1sht_intl_digital_srgb_ka_blades_v2_resized.jpg', '2024-12-18 21:29:34', '2024-12-18 21:29:34'),
(2, 'Csillagok között', 'Sci-Fi', 169, '2014-11-07 00:00:00', '2015-03-31 00:00:00', 'film', 'https://static.posters.cz/image/750/plakatok/interstellar-one-sheet-i23157.jpg', '2024-12-18 21:01:04', '2025-01-04 19:00:03'),
(3, 'Harry Potter és a Tűz Serlege', 'Fantasy', 157, '2005-11-18 00:00:00', '2006-04-11 00:00:00', 'film', 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p90599_p_v8_aa.jpg', '2024-12-18 21:01:09', '2024-12-19 15:18:53'),
(4, 'Indiana Jones és a sors tárcsája', 'Adventure', 142, '2023-06-30 00:00:00', '2023-10-15 00:00:00', 'film', 'https://www.lucasfilm.com/app/uploads/IndianaJones-DOD-key-art-480x720.jpg', '2024-12-18 21:01:12', '2024-12-21 11:16:04'),
(5, 'Nyugaton a helyzet változatlan', 'War', 148, '2022-10-28 00:00:00', '2023-02-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BOWJiYWMyYTktZThhOS00ZjgxLWE0YTQtZDMyNTQxMjMyYjI2XkEyXkFqcGc@._V1_.jpg', '2024-12-18 21:01:17', '2024-12-18 21:01:17'),
(6, 'Gran Turismo', 'Sport', 135, '2023-08-11 00:00:00', '2023-12-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMjA0N2YyNmYtZDk4Ny00ODE2LThmZWQtNGJiMDk0YzhiNzE5XkEyXkFqcGc@._V1_.jpg', '2024-12-18 21:01:21', '2024-12-18 21:01:21'),
(7, 'Hajsza a győzelemért', 'Drama', 123, '2013-09-27 00:00:00', '2014-01-15 00:00:00', 'film', 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9872516_p_v8_bb.jpg', '2024-12-18 21:01:25', '2024-12-29 18:55:55'),
(8, 'Démonok között', 'Horror', 112, '2013-07-19 00:00:00', '2013-11-01 00:00:00', 'film', 'https://www.filmgame.hu/i/?i=0909817_01.jpg', '2024-12-18 21:01:28', '2024-12-18 21:01:28'),
(9, 'Coco', 'Animation', 105, '2017-11-22 00:00:00', '2018-03-01 00:00:00', 'film', 'https://upload.wikimedia.org/wikipedia/hu/a/a3/Coco_2017.jpg', '2024-12-18 21:01:32', '2024-12-18 21:01:32'),
(10, 'Ted', 'Comedy', 106, '2012-06-29 00:00:00', '2012-10-01 00:00:00', 'film', 'https://m.media-amazon.com/images/I/61CmznRcivL.jpg', '2024-12-18 21:01:35', '2024-12-18 21:01:35'),
(11, 'Updated Film Title', 'Comedy', 102, '2010-06-25 00:00:00', '2010-10-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMjA0ODYwNzU5Nl5BMl5BanBnXkFtZTcwNTI1MTgxMw@@._V1_FMjpg_UX1000_.jpg', '2024-12-18 21:01:40', '2024-12-18 21:01:40'),
(12, 'Superbad', 'Comedy', 113, '2007-08-17 00:00:00', '2007-12-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BNjk0MzdlZGEtNTRkOC00ZDRiLWJkYjAtMzUzYTRiNzk1YTViXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-18 21:01:44', '2024-12-18 21:01:44'),
(13, 'Vasember', 'Action', 126, '2008-05-02 00:00:00', '2008-09-01 00:00:00', 'film', 'https://www.mafab.hu/static/profiles/2014/293/01/10066_28.jpg', '2024-12-18 21:01:47', '2024-12-18 21:01:47'),
(14, 'És megint dühbe jövünk', 'Comedy', 112, '1978-12-21 00:00:00', '1979-04-01 00:00:00', 'film', 'https://dp8ij3ml0f16h.cloudfront.net/s3_files/styles/facebook/s3/film/plakat/894439_33.jpg.webp?itok=nP65FAPY', '2024-12-18 21:01:51', '2024-12-18 21:01:51'),
(15, 'Bűnvadászok', 'Comedy', 109, '1977-12-22 00:00:00', '1978-04-01 00:00:00', 'film', 'https://media.port.hu/images/000/894/438.jpg', '2024-12-18 21:01:54', '2024-12-18 21:01:54'),
(16, 'Kincs, ami nincs', 'Comedy', 108, '1981-12-17 00:00:00', '1982-04-01 00:00:00', 'film', 'https://dp8ij3ml0f16h.cloudfront.net/s3_files/styles/facebook/s3/film/plakat/kincs-ami-nincs.jpg.webp?itok=cujsVR5D', '2024-12-18 21:01:58', '2024-12-18 21:01:58'),
(17, 'A fegyvertelen katona', 'War', 139, '2016-11-04 00:00:00', '2017-03-01 00:00:00', 'film', 'https://upload.wikimedia.org/wikipedia/hu/0/0f/A-fegyvertelen-katona.jpg', '2024-12-18 21:02:02', '2024-12-18 21:02:02'),
(18, 'Joker', 'Drama', 122, '2019-10-04 00:00:00', '2020-01-01 00:00:00', 'film', 'https://m.media-amazon.com/images/I/51E+o6036kL._AC_UF894,1000_QL80_.jpg', '2024-12-18 21:02:05', '2024-12-18 21:02:05'),
(20, 'Az', 'Horror', 135, '2017-09-17 00:00:00', '2019-01-01 00:00:00', 'film', 'https://www.mafab.hu/static/2017/248/15/279655_1504704859.7754.jpg', '2024-12-19 11:51:51', '2024-12-19 11:51:51'),
(21, 'Kiút', 'Horror', 3, '2022-02-20 00:00:00', '2022-02-20 00:00:00', 'series', 'https://www.mafab.hu/static/2024/120/09/652067_1714463716.2502.jpg', '2024-12-19 12:45:53', '2024-12-19 12:45:53'),
(22, 'Csernobil', 'Drama', 1, '2019-04-06 00:00:00', '2019-04-06 00:00:00', '', 'https://www.mafab.hu/static/2019/126/01/323732_1557183957.4628.jpg', '2024-12-19 12:47:41', '2024-12-19 14:58:50'),
(23, 'A nagy pénzrablás', 'Thriller', 5, '2017-04-02 00:00:00', '2017-04-02 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BZjkxZWJiNTUtYjQwYS00MTBlLTgwODQtM2FkNWMyMjMwOGZiXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-19 12:56:07', '2024-12-19 12:56:07'),
(24, 'Family Guy', 'Comedy', 22, '1999-01-31 00:00:00', '1999-01-31 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BNTZlMGQ1YjEtMzVlNC00ZmMxLTk0MzgtZjdkYTU1NmUxNTQ0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-19 13:16:03', '2024-12-19 13:16:03'),
(25, 'Oppenheimer', 'Thriller', 180, '2023-07-21 00:00:00', '2023-07-21 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BN2JkMDc5MGQtZjg3YS00NmFiLWIyZmQtZTJmNTM5MjVmYTQ4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-19 13:20:09', '2024-12-19 13:20:09'),
(26, 'Peaky Blinders', 'Drama', 6, '2013-09-12 00:00:00', '2013-09-12 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BM2ZiNThlNzItNmY3Ny00NjA2LWJlMjItNTk1NDI3MDMyMTk4XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-19 13:24:31', '2024-12-19 13:24:31'),
(27, 'Micimackó kalandjai', 'Animation', 74, '1977-03-11 00:00:00', '2022-06-22 00:00:00', 'film', 'https://www.mafab.hu/static/profiles/2014/294/16/151891_29.jpg', '2024-12-19 15:00:12', '2024-12-19 15:00:12'),
(28, 'A Karib-tenger kalózai - A Fekete Gyöngy átka', 'Action', 143, '2003-09-18 00:00:00', '2003-09-18 00:00:00', 'film', 'https://image.tmdb.org/t/p/original/d0a2VNjXlw3iVUafzXPL1xSs3Ac.jpg', '2024-12-19 15:04:23', '2024-12-19 15:04:23'),
(29, 'Avatar: A víz útja', 'Sci-Fi', 192, '2022-12-16 00:00:00', '2023-06-07 00:00:00', 'film', 'https://upload.wikimedia.org/wikipedia/hu/e/e4/Avatar_2.jpg', '2024-12-19 15:07:37', '2024-12-19 15:07:37'),
(30, 'Napóleon', 'War', 98, '2023-11-14 00:00:00', '2024-04-01 00:00:00', 'film', 'https://media.port.hu/images/001/603/042.webp', '2024-12-19 15:11:13', '2024-12-19 15:11:13'),
(31, 'Alien: Romulus', 'Horror', 119, '2024-08-16 00:00:00', '2024-11-21 00:00:00', 'film', 'https://media.finnkino.fi/1012/Event_14156/portrait_large/AlienRomulus_1080_v2.jpg', '2024-12-19 15:12:58', '2024-12-19 15:12:58'),
(32, 'A mi kis falunk', 'Comedy', 6, '2017-02-02 00:00:00', '2017-02-02 00:00:00', 'series', 'https://images.justwatch.com/poster/244601515/s718/a-mi-kis-falunk.jpg', '2024-12-19 15:14:13', '2024-12-19 15:14:13'),
(33, 'Bosszúállók: Végtelen háború', 'Action', 89, '2018-04-26 00:00:00', '2018-12-25 00:00:00', 'film', 'https://upload.wikimedia.org/wikipedia/hu/2/28/Bossz%C3%BA%C3%A1ll%C3%B3k-V%C3%A9gtelen_h%C3%A1bor%C3%BA.jpg', '2024-12-19 15:18:46', '2024-12-19 15:28:24'),
(34, 'John Wick', 'Action', 101, '2014-11-13 00:00:00', '2014-11-13 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_FMjpg_UX1000_.jpg', '2024-12-19 15:23:05', '2024-12-19 15:23:05'),
(35, 'A Mandalóri', 'Action', 3, '2019-11-12 00:00:00', '2019-11-12 00:00:00', '', 'https://m.media-amazon.com/images/M/MV5BNjgxZGM0OWUtZGY1MS00MWRmLTk2N2ItYjQyZTI1OThlZDliXkEyXkFqcGc@._V1_.jpg', '2024-12-19 15:24:29', '2024-12-19 15:24:41'),
(36, 'Fallout', 'Drama', 1, '2024-04-11 00:00:00', '2024-04-11 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BNjI5ZmZkNDktZDliMS00ZjlmLWE2MTUtMWVlZjU2YWQ3ZDYxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2024-12-19 15:28:02', '2024-12-19 15:28:02'),
(45, 'Kóbor alakulat', 'Akció', 1, '2024-12-02 00:00:00', '2024-12-02 00:00:00', '', 'https://m.media-amazon.com/images/M/MV5BN2VlZjA3ZTktODEzNC00ZDhlLWExMTQtZmZkNjRhNWJhMWNkXkEyXkFqcGc@._V1_.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Star Wars: A Sith-ek bosszúja', 'Sci-Fi', 140, '2005-05-09 00:00:00', '2019-11-12 00:00:00', 'film', 'https://m.media-amazon.com/images/I/61jCCwfO6HL._AC_UF894,1000_QL80_.jpg', '2024-12-29 18:32:35', '2024-12-29 18:33:03'),
(47, 'Beetlejuice Beetlejuice', 'Comedy', 104, '2024-09-06 00:00:00', '2024-12-06 00:00:00', 'film', 'https://m.media-amazon.com/images/I/71YA6AM-V8L.jpg', '2025-01-02 14:35:35', '2025-01-02 14:35:35'),
(48, 'Bad Boys – Mindent vagy többet', 'Action', 110, '2024-07-07 00:00:00', '2024-10-08 00:00:00', 'film', 'https://media.port.hu/images/001/643/576.webp', '2025-01-02 14:39:02', '2025-01-02 14:39:02'),
(49, 'Top Gun: Maverick', 'Action', 131, '2022-05-26 00:00:00', '2022-12-22 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMDBkZDNjMWEtOTdmMi00NmExLTg5MmMtNTFlYTJlNWY5YTdmXkEyXkFqcGc@._V1_.jpg', '2025-01-02 15:13:15', '2025-01-02 15:13:15'),
(50, 'WALL·E', 'Action', 98, '2008-07-24 00:00:00', '2019-10-12 00:00:00', 'film', 'https://i.ebayimg.com/images/g/OecAAOSwFy5bWd3U/s-l1200.jpg', '2025-01-02 15:15:51', '2025-01-02 15:16:34'),
(51, 'Formula 1: Hajsza a túlélésért', 'Documentary', 6, '2019-03-08 00:00:00', '2019-03-08 00:00:00', '', 'https://m.media-amazon.com/images/M/MV5BNTkyYzhiYzctZGRiOC00ODM1LTg0MDQtYzVmMzcyNTI5MDEwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2025-01-07 10:43:16', '2025-01-07 10:53:35'),
(52, 'Dűne: Második rész', 'Sci-Fi', 166, '2024-03-14 00:00:00', '2024-05-21 00:00:00', 'film', 'https://media.port.hu/images/001/621/062.webp', '2025-01-07 10:47:05', '2025-01-07 10:53:46'),
(53, 'Jeffrey Dahmer – Szörnyeteg: A Jeffrey Dahmer-sztori', 'Action', 1, '2022-09-21 00:00:00', '2022-09-21 00:00:00', 'series', 'https://www.mafab.hu/static/2022/299/10/615654_1666858091.7545.jpg', '2025-01-07 10:49:12', '2025-01-07 10:49:12'),
(54, 'A törvény nevében', 'Drama', 4, '2014-01-12 00:00:00', '2014-01-12 00:00:00', '', 'https://www.lavanguardia.com/peliculas-series/images/serie/poster/2014/1/w1280/4XMpDLyu2xOeuKxl4qEQtwSrDac.jpg', '2025-01-07 10:52:32', '2025-01-07 10:52:56'),
(55, 'Hang nélkül', 'Horror', 90, '2018-04-06 00:00:00', '2018-08-27 00:00:00', 'film', 'https://media.port.hu/images/000/987/065.jpg', '2025-01-07 11:02:00', '2025-01-07 11:02:00'),
(56, 'Agymanók 2.', 'Animation', 96, '2024-07-14 00:00:00', '2024-09-25 00:00:00', 'film', 'https://static.mozipremierek.hu/poster/5880-agymanok-2.webp', '2025-01-07 11:04:12', '2025-01-07 11:04:12'),
(57, 'Senna', 'Documentary', 1, '2024-11-29 00:00:00', '2024-11-29 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BZDI2ZjQyMzItYjg4NS00ZWYzLWE2M2EtYTNiN2Y4Mzc5Y2EwXkEyXkFqcGc@._V1_.jpg', '2025-01-07 11:05:18', '2025-01-07 11:05:18'),
(58, 'Ferrari', 'Action', 130, '2023-12-14 00:00:00', '2024-01-23 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BYmUzYmJiMDMtZjIxNy00ZjBlLThjZDMtMDA1ZDM4MWMwNmI0XkEyXkFqcGc@._V1_.jpg', '2025-01-07 11:07:22', '2025-01-07 11:07:22'),
(59, 'Az aszfalt királyai', 'Action', 150, '2019-08-20 00:00:00', '2019-11-15 00:00:00', 'film', 'https://media.port.hu/images/001/173/054.jpg', '2025-01-07 11:09:30', '2025-01-07 11:09:30'),
(60, 'A sötét lovag', 'Action', 152, '2008-07-18 00:00:00', '2019-04-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg', '2025-01-07 11:14:14', '2025-01-07 11:14:14'),
(61, 'Ponyvaregény', 'Drama', 154, '1994-10-14 00:00:00', '2020-07-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2025-01-07 11:15:33', '2025-01-07 11:15:33'),
(62, 'Forrest Gump', 'Comedy', 142, '1994-07-06 00:00:00', '2022-03-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_.jpg', '2025-01-07 11:16:32', '2025-01-07 11:16:32'),
(63, 'Eredet', 'Sci-Fi', 148, '2010-06-16 00:00:00', '2020-08-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg', '2025-01-07 11:17:25', '2025-01-07 11:17:25'),
(64, 'Az oroszlánkirály', 'Adventure', 88, '1994-06-24 00:00:00', '2019-10-12 00:00:00', 'film', 'https://filmlexikon.hu/media/movies/posters/a/az-oroszlankiraly--1994--ySU5pia1mZ.jpg', '2025-01-07 11:19:00', '2025-01-07 11:19:00'),
(65, ' Jurassic Park', 'Sci-Fi', 127, '1993-06-11 00:00:00', '2021-06-01 00:00:00', 'film', 'https://cdn.hmv.com/r/w-640/hmv/files/a2/a2a1839d-a873-4199-abb2-a9f59619bd56.png', '2025-01-07 11:20:49', '2025-01-07 11:20:49'),
(66, 'Mátrix', 'Action', 136, '1999-03-31 00:00:00', '2020-10-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', '2025-01-07 11:21:36', '2025-01-07 11:21:36'),
(67, 'A Gyűrűk Ura: A Gyűrű Szövetsége', 'Adventure', 178, '2001-12-19 00:00:00', '2021-08-01 00:00:00', 'film', 'https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_.jpg', '2025-01-07 11:22:23', '2025-01-07 11:22:23'),
(68, 'Vaják', 'Fantasy', 3, '2019-12-20 00:00:00', '2019-12-20 00:00:00', 'series', 'https://m.media-amazon.com/images/M/MV5BMTQ5MDU5MTktMDZkMy00NDU1LWIxM2UtODg5OGFiNmRhNDBjXkEyXkFqcGc@._V1_.jpg', '2025-01-07 11:24:07', '2025-01-07 11:24:07'),
(69, 'Sherlock Holmes 2. – Árnyjáték', 'Action', 129, '2011-12-16 00:00:00', '2020-05-01 00:00:00', 'film', 'https://www.mafab.hu/static/profiles/2014/293/05/25189_11.jpg', '2025-01-07 11:26:09', '2025-01-07 11:26:09');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '1234', '2024-12-29 18:07:42', '2024-12-29 18:07:42'),
(2, 'Bence', '1234', '2025-01-04 19:41:17', '2025-01-04 19:41:17');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
