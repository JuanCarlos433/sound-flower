-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 18:08:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sound`
CREATE DATABASE IF NOT EXISTS `sound` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE `sound`;
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumes`
--

CREATE TABLE `albumes` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Portada` varchar(255) NOT NULL DEFAULT '/assets/img/album.jpg',
  `Id_Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `albumes`
--

INSERT INTO `albumes` (`Id`, `Nombre`, `Portada`, `Id_Artista`) VALUES
(1, 'Konvicted', '/assets/img/albums/Konvicted.jpg', 1),
(2, 'Gangsta`s Paradise', '/assets/img/albums/Gangsta`s Paradise.jpg', 3),
(3, 'How Can You Mend A Broken Heart', '/assets/img/albums/How Can You Mend A Broken Heart.jpg', 5),
(4, 'Daylight', '/assets/img/albums/Daylight.jpg', 6),
(5, 'It`s Been So Long', '/assets/img/albums/It`s Been So Long.jpg', 7),
(6, 'The Eminem Show', '/assets/img/albums/The Eminem Show.jpg', 9),
(7, 'ARDIPITHECUS', '/assets/img/albums/ARDIPITHECUS.jpg', 10),
(8, 'Clandestina (JVSTIN Remix)', '/assets/img/albums/Clandestina (JVSTIN Remix).jpg', 13),
(9, 'Unholy (feat. Kim Petras)', '/assets/img/albums/Unholy (feat. Kim Petras).jpg', 16),
(10, 'La Trampa es Ley', '/assets/img/albums/La Trampa es Ley.jpg', 17),
(11, 'Best Of Chris Isaak', '/assets/img/albums/Best Of Chris Isaak.jpg', 18),
(12, 'Mind Games', '/assets/img/albums/Mind Games.jpg', 19),
(13, 'A-B', '/assets/img/albums/A-B.jpg', 20),
(14, 'Voices', '/assets/img/albums/Voices.jpg', 71),
(15, 'Find Me', '/assets/img/albums/Find Me.jpg', 22),
(16, 'Favourite Worst Nightmare', '/assets/img/albums/Favourite Worst Nightmare.jpg', 23),
(17, 'AM', '/assets/img/albums/AM.jpg', 23),
(18, 'Angels (Radio Edit)', '/assets/img/albums/Angels (Radio Edit).jpg', 25),
(19, 'Talksick 3', '/assets/img/albums/Talksick 3.jpg', 26),
(20, 'Marvin`s Marvelous Mechanical Museum', '/assets/img/albums/Marvin`s Marvelous Mechanical Museum.jpg', 27),
(21, 'Bewitched', '/assets/img/albums/Bewitched.jpg', 28),
(22, 'The Land Is Inhospitable and So Are We', '/assets/img/albums/The Land Is Inhospitable and So Are We.jpg', 29),
(23, 'Mani-Pedi', '/assets/img/albums/Mani-Pedi.jpg', 30),
(24, '1940 Carmen', '/assets/img/albums/1940 Carmen.jpg', 32),
(25, 'A Potion For Love', '/assets/img/albums/A Potion For Love.jpg', 33),
(26, 'HOUSEWIFE', '/assets/img/albums/HOUSEWIFE.jpg', 34),
(27, 'Princess Diana (with Nicki Minaj)', '/assets/img/albums/Princess Diana (with Nicki Minaj).jpg', 35),
(28, 'TRICK OR TREAT', '/assets/img/albums/TRICK OR TREAT.jpg', 38),
(29, 'Hi, It`s Me', '/assets/img/albums/Hi, It`s Me.jpg', 40),
(30, 'Queen Elizabitch', '/assets/img/albums/Queen Elizabitch.jpg', 42),
(31, 'Met a Girl', '/assets/img/albums/Met a Girl.jpg', 43),
(32, 'Yeezus', '/assets/img/albums/Yeezus.jpg', 44),
(33, 'Bipolar', '/assets/img/albums/Bipolar.jpg', 45),
(34, 'nadie sabe lo que va a pasar mañana', '/assets/img/albums/nadie sabe lo que va a pasar mañana.jpg', 46),
(35, 'Born To Die', '/assets/img/albums/Born To Die.jpg', 47),
(36, 'WEEDKILLER', '/assets/img/albums/WEEDKILLER.jpg', 48),
(37, 'Graduation', '/assets/img/albums/Graduation.jpg', 50),
(38, 'eduardo', '/assets/img/albums/eduardo.jpg', 51),
(39, 'Somos Algo', '/assets/img/albums/Somos Algo.jpg', 53),
(40, 'Hamilton (Original Broadway Cast Recording)', '/assets/img/albums/Hamilton (Original Broadway Cast Recording).jpg', 57),
(41, 'NIGHT DANCER', '/assets/img/albums/NIGHT DANCER.jpg', 62),
(42, 'gift', '/assets/img/albums/gift.jpg', 63),
(43, 'STAY (with Justin Bieber)', '/assets/img/albums/STAY (with Justin Bieber).jpg', 65),
(44, 'Overexposed (Deluxe)', '/assets/img/albums/Overexposed (Deluxe).jpg', 66),
(45, 'La Trenza', '/assets/img/albums/La Trenza.jpg', 32),
(46, '1989 (Deluxe)', '/assets/img/albums/1989 (Deluxe).jpg', 68),
(47, 'Omori (Original Game Soundtrack), Pt.3', '/assets/img/albums/Omori (Original Game Soundtrack), Pt.3.jpg', 69),
(48, 'El Templo del Pop', '/assets/img/albums/El Templo del Pop.jpg', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` text NOT NULL,
  `Foto` varchar(255) NOT NULL DEFAULT '/assets/img/artist.jpg',
  `Id_Disquera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`Id`, `Nombre`, `Descripcion`, `Foto`, `Id_Disquera`) VALUES
(1, 'Akon', 'Akon', '/assets/img/artists/Akon.jpg', 1),
(2, 'Eminem', 'Eminem', '/assets/img/artists/Eminem.jpg', 1),
(3, 'Coolio', 'Coolio', '/assets/img/artists/Coolio.jpg', 2),
(4, 'L.V.', 'L.V.', '/assets/img/artists/L.V..jpg', 2),
(5, 'Bee Gees', 'Bee Gees', '/assets/img/artists/Bee Gees.jpg', 3),
(6, 'David Kushner', 'David Kushner', '/assets/img/artists/David Kushner.jpg', 4),
(7, 'The Living Tombstone', 'The Living Tombstone', '/assets/img/artists/The Living Tombstone.jpg', 5),
(8, 'Dina Rae', 'Dina Rae', '/assets/img/artists/Dina Rae.jpg', 6),
(9, 'Eminem', 'Eminem', '/assets/img/artists/Eminem.jpg', 6),
(10, 'WILLOW', 'WILLOW', '/assets/img/artists/WILLOW.jpg', 7),
(11, 'Edmofo', 'Edmofo', '/assets/img/artists/Edmofo.jpg', 8),
(12, 'Emma Peters', 'Emma Peters', '/assets/img/artists/Emma Peters.jpg', 8),
(13, 'FILV', 'FILV', '/assets/img/artists/FILV.jpg', 8),
(14, 'Jvstin', 'Jvstin', '/assets/img/artists/Jvstin.jpg', 8),
(15, 'Kim Petras', 'Kim Petras', '/assets/img/artists/Kim Petras.jpg', 9),
(16, 'Sam Smith', 'Sam Smith', '/assets/img/artists/Sam Smith.jpg', 9),
(17, 'LIT killah', 'LIT killah', '/assets/img/artists/LIT killah.jpg', 10),
(18, 'Chris Isaak', 'Chris Isaak', '/assets/img/artists/Chris Isaak.jpg', 11),
(19, 'Sickick', 'Sickick', '/assets/img/artists/Sickick.jpg', 12),
(20, 'KALEO', 'KALEO', '/assets/img/artists/KALEO.jpg', 13),
(21, 'Birdy', 'Birdy', '/assets/img/artists/Birdy.jpg', 14),
(22, 'Sigma', 'Sigma', '/assets/img/artists/Sigma.jpg', 14),
(23, 'Arctic Monkeys', 'Arctic Monkeys', '/assets/img/artists/Arctic Monkeys.jpg', 15),
(24, 'Kat Nestel', 'Kat Nestel', '/assets/img/artists/Kat Nestel.jpg', 16),
(25, 'Vicetone', 'Vicetone', '/assets/img/artists/Vicetone.jpg', 16),
(26, 'Sickick', 'Sickick', '/assets/img/artists/Sickick.jpg', 17),
(27, 'Tally Hall', 'Tally Hall', '/assets/img/artists/Tally Hall.jpg', 18),
(28, 'Laufey', 'Laufey', '/assets/img/artists/Laufey.jpg', 19),
(29, 'Mitski', 'Mitski', '/assets/img/artists/Mitski.jpg', 20),
(30, 'Baby Tate', 'Baby Tate', '/assets/img/artists/Baby Tate.jpg', 21),
(31, 'Kaliii', 'Kaliii', '/assets/img/artists/Kaliii.jpg', 21),
(32, 'Mon Laferte', 'Mon Laferte', '/assets/img/artists/Mon Laferte.jpg', 1),
(33, 'AURORA', 'AURORA', '/assets/img/artists/AURORA.jpg', 1),
(34, 'Qveen Herby', 'Qveen Herby', '/assets/img/artists/Qveen Herby.jpg', 22),
(35, 'Ice Spice', 'Ice Spice', '/assets/img/artists/Ice Spice.jpg', 9),
(36, 'Nicki Minaj', 'Nicki Minaj', '/assets/img/artists/Nicki Minaj.jpg', 9),
(37, 'Hexmane', 'Hexmane', '/assets/img/artists/Hexmane.jpg', 23),
(38, 'Ko$te', 'Ko$te', '/assets/img/artists/Ko$te.jpg', 23),
(39, 'Vicious Vampira', 'Vicious Vampira', '/assets/img/artists/Vicious Vampira.jpg', 23),
(40, 'Ashnikko', 'Ashnikko', '/assets/img/artists/Ashnikko.jpg', 24),
(41, 'Baby Tate', 'Baby Tate', '/assets/img/artists/Baby Tate.jpg', 24),
(42, 'cupcakKe', 'cupcakKe', '/assets/img/artists/cupcakKe.jpg', 25),
(43, 'Tarune', 'Tarune', '/assets/img/artists/Tarune.jpg', 26),
(44, 'Kanye West', 'Kanye West', '/assets/img/artists/Kanye West.jpg', 21),
(45, 'El Cuarteto De Nos', 'El Cuarteto De Nos', '/assets/img/artists/El Cuarteto De Nos.jpg', 21),
(46, 'Bad Bunny', 'Bad Bunny', '/assets/img/artists/Bad Bunny.jpg', 21),
(47, 'Lana Del Rey', 'Lana Del Rey', '/assets/img/artists/Lana Del Rey.jpg', 27),
(48, 'Ashnikko', 'Ashnikko', '/assets/img/artists/Ashnikko.jpg', 28),
(49, 'Dwele', 'Dwele', '/assets/img/artists/Dwele.jpg', 7),
(50, 'Kanye West', 'Kanye West', '/assets/img/artists/Kanye West.jpg', 7),
(51, 'Ed Maverick', 'Ed Maverick', '/assets/img/artists/Ed Maverick.jpg', 1),
(52, 'Muelas De Gallo', 'Muelas De Gallo', '/assets/img/artists/Muelas De Gallo.jpg', 1),
(53, 'Daniel, Me Estás Matando', 'Daniel, Me Estás Matando', '/assets/img/artists/Daniel, Me Estás Matando.jpg', 29),
(54, 'Alex Lacamoire', 'Alex Lacamoire', '/assets/img/artist.jpg', 30),
(55, 'Christopher Jackson', 'Christopher Jackson', '/assets/img/artist.jpg', 30),
(56, 'Leslie Odom Jr.', 'Leslie Odom Jr.', '/assets/img/artists/Leslie Odom Jr..jpg', 30),
(57, 'Lin-Manuel Miranda', 'Lin-Manuel Miranda', '/assets/img/artists/Lin-Manuel Miranda.jpg', 30),
(58, 'Original Broadway Cast of Hamilton', 'Original Broadway Cast of Hamilton', '/assets/img/artist.jpg', 30),
(59, 'Phillipa Soo', 'Phillipa Soo', '/assets/img/artist.jpg', 30),
(60, 'Renée Elise Goldsberry', 'Renée Elise Goldsberry', '/assets/img/artist.jpg', 30),
(61, 'Jonathan Groff', 'Jonathan Groff', '/assets/img/artists/Jonathan Groff.jpg', 30),
(62, 'imase', 'imase', '/assets/img/artists/imase.jpg', 1),
(63, 'ギヴン', 'ギヴン', '/assets/img/artists/ギヴン.jpg', 14),
(64, 'Justin Bieber', 'Justin Bieber', '/assets/img/artists/Justin Bieber.jpg', 1),
(65, 'The Kid LAROI', 'The Kid LAROI', '/assets/img/artists/The Kid LAROI.jpg', 1),
(66, 'Maroon 5', 'Maroon 5', '/assets/img/artists/Maroon 5.jpg', 1),
(67, 'Bunbury', 'Bunbury', '/assets/img/artists/Bunbury.jpg', 1),
(68, 'Taylor Swift', 'Taylor Swift', '/assets/img/artists/Taylor Swift.jpg', 31),
(69, 'Omori', 'Omori', '/assets/img/artist.jpg', 32),
(70, 'Miranda!', 'Miranda!', '/assets/img/artists/Miranda!.jpg', 33),
(71, 'Phantogram', 'Phantogram', '/assets/img/artists/Phantogram.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cacion_artista`
--

CREATE TABLE `cacion_artista` (
  `Id` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL,
  `Id_Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Archivo` varchar(500) NOT NULL,
  `Duracion` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Id_Album` int(11) NOT NULL,
  `Reproducciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_playlist`
--

CREATE TABLE `cancion_playlist` (
  `Id` int(11) NOT NULL,
  `Id_Playlist` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dislikes_usuario`
--

CREATE TABLE `dislikes_usuario` (
  `Id` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_albumes`
--

CREATE TABLE `favoritos_albumes` (
  `Id` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_artistas`
--

CREATE TABLE `favoritos_artistas` (
  `Id` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Artista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos_canciones`
--

CREATE TABLE `favoritos_canciones` (
  `Id` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos_cancion`
--

CREATE TABLE `generos_cancion` (
  `Id` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Id_Cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlists`
--

CREATE TABLE `playlists` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Foto` varchar(500) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Publica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Pass` varchar(500) NOT NULL,
  `Tipo_Usuario` int(11) NOT NULL DEFAULT 0,
  `Foto` varchar(255) NOT NULL DEFAULT '/assets/img/user.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Correo`, `Pass`, `Tipo_Usuario`, `Foto`) VALUES
(1, 'Universal Records', 'universal@soundflower.rahcode.com', '$2y$10$dIPE3XYkheNjn.6fE8CQxull.0wNaPtBqvu83llXvDKgh/lQFB9Fm', 2, '/assets/img/user.jpg'),
(2, 'Tommy Boy Music', 'tommy@soundflower.rahcode.com', '$2y$10$sHRfNtceahuNu.QUIlOTruJ2wNeWYKwziGfg7MlzWs189E4oj9nVO', 2, '/assets/img/user.jpg'),
(3, 'UME', 'ume@soundflower.rahcode.com', '$2y$10$TQFz9iMWeVWlOMBBLEudSuj7r3CvBbZ2lHxDNxOePodelOqUeCaiq', 2, '/assets/img/user.jpg'),
(4, 'Miserable Music Group', 'miserable@soundflower.rahcode.com', '$2y$10$3JEEIQNHOkChnr.a.fggdOefLipsh2PprKx.bae4JaqaNMkz93Ml6', 2, '/assets/img/user.jpg'),
(5, 'Ghost Pixel Records', 'pixel@soundflower.rahcode.com', '$2y$10$8veZhSgoQyJyXXffqP.PC.JPRqXme4vFNbchJfGka.RKOh77m7yBe', 2, '/assets/img/user.jpg'),
(6, 'Aftermath', 'aftermath@soundflower.rahcode.com', '$2y$10$GmvOG9W2GH59KYDv8AE/8e1Tu2vGJgHM05fS7JMiMadtYz12sm9LG', 2, '/assets/img/user.jpg'),
(7, 'Roc Nation', 'roc@soundflower.rahcode.com', '$2y$10$RUAz0wrUsDHWR39xPHcN1.Nd1nI3TBKX7UK4ASso1vIYoF88PjPj2', 2, '/assets/img/user.jpg'),
(8, 'b1', 'b1@soundflower.rahcode.com', '$2y$10$TeF5ITvblvc7VPgqjHf4yeKSJ7a6teamShbfgzqiuL44ytfBEUTpa', 2, '/assets/img/user.jpg'),
(9, 'Capitol Records', 'capitol@soundflower.rahcode.com', '$2y$10$FMWj6Vesv.hrl8pGCaqBuuSuYY6ukXwv/GexEUDETd/ejJgColqmK', 2, '/assets/img/user.jpg'),
(10, 'WEA Latina', 'wea@soundflower.rahcode.com', '$2y$10$D2mccjxTH/Y7lTToapwrwuke/p6KzWvnlnxSi9NJC9xzL9y19An6m', 2, '/assets/img/user.jpg'),
(11, 'Chris Isaak', 'chris@soundflower.rahcode.com', '$2y$10$H6gQnqSmgu4.oPzBjy67Te936GqQRqaQpiJeTmLq8h1x0Z4QWMUBG', 2, '/assets/img/user.jpg'),
(12, 'SICK MUSIC', 'sick@soundflower.rahcode.com', '$2y$10$WoT5H.80Dkr9/32DB8hMDeamy4pzUBGigZ2m8.dfWYw3SQsE7O.E6', 2, '/assets/img/user.jpg'),
(13, 'Elektra', 'elektra@soundflower.rahcode.com', '$2y$10$HcdIdIsJkSWIEuIpq3Tu4uWY0qMu2JWtbCih3ZX1XP9roi2GWn1ZO', 2, '/assets/img/user.jpg'),
(14, 'Sony Music', 'sony@soundflower.rahcode.com', '$2y$10$gsV8GLXxZETq.F14g7uwAO7v67qy5vXb.0sQjNAoZjK8VdVJ4mDna', 2, '/assets/img/user.jpg'),
(15, 'Domino Recording', 'domino@soundflower.rahcode.com', '$2y$10$i5O1GmWjCrfDGwJFhjNJyeHqmXSw0QeRtgWOK0HwK5OwMkrlsQXoO', 2, '/assets/img/user.jpg'),
(16, 'Ultra Records', 'ultra@soundflower.rahcode.com', '$2y$10$3nWV/lA8vZmUNY8Jc6TxVuyjfB4LDx6xRFKbou8F79ap/U4J/DTnm', 2, '/assets/img/user.jpg'),
(17, '569881 Records', '569881@soundflower.rahcode.com', '$2y$10$sHb/pZtQhTnlQWzKaSAp2O3taPVoIjZ4PNTfcRpfu8QFfAnO.qwPC', 2, '/assets/img/user.jpg'),
(18, 'Tally Hall', 'tally@soundflower.rahcode.com', '$2y$10$xZrOjmFKatbaIJCqKIcyXOYzzF.3JlgCwp2wlztkukKRfY0KcZHCe', 2, '/assets/img/user.jpg'),
(19, 'Laufey', 'laufey@soundflower.rahcode.com', '$2y$10$VF286S8W74JdCczMIkpf7ecZU0dxo6jwm1vt9yN9zSrXsX8GwdrrW', 2, '/assets/img/user.jpg'),
(20, 'Dead Oceans', 'oceans@soundflower.rahcode.com', '$2y$10$YxZ9ng52NiYljnm88n/Tuuw.2RvQNAaesgU7YYnDTAtX6ltg21eyq', 2, '/assets/img/user.jpg'),
(21, 'Warner Records', 'warner@soundflower.rahcode.com', '$2y$10$ACcX.dGwkOiD95nlonUasOzNO0JFgXjxkWPsfugYO0tInyorDpIBC', 2, '/assets/img/user.jpg'),
(22, 'Checkbook Records', 'checkbook@soundflower.rahcode.com', '$2y$10$icr0KT4b2TuIheV06N07Jee.hBfZHLOyosdmsCFs1qncYqhs8lz5e', 2, '/assets/img/user.jpg'),
(23, 'MISERYMOB', 'miserymob@soundflower.rahcode.com', '$2y$10$rMatPOxKnqelxAtKKUGZ5OgeLKTAQ9MnHXvXy95qAFfV/kFgZyO.S', 2, '/assets/img/user.jpg'),
(24, 'Digital Picnic', 'picnic@soundflower.rahcode.com', '$2y$10$opv/lHX4wrx5NT9icU3LUeRgcqt5Y1H6xPswhvIpPZSIseHp5K8Oi', 2, '/assets/img/user.jpg'),
(25, 'cupcakKe', 'cupcakke@soundflower.rahcode.com', '$2y$10$IX5CcO5NiJMy1x5PsuZK/.3ZUIuPBMRxnVUEGMNUalAmfA3/Qqt2e', 2, '/assets/img/user.jpg'),
(26, 'Tarune', 'tarune@soundflower.rahcode.com', '$2y$10$6YB49HDt1erFh4xtViB.dOA1EKry7370LANQZS.7TOO2Nvg447jNG', 2, '/assets/img/user.jpg'),
(27, 'Polydor Records', 'polydor@soundflower.rahcode.com', '$2y$10$.4kTWWn4WgGTZXoDkjgssOjHZ0gasrrpfPNPAYzRkXqlLFwXO6WfG', 2, '/assets/img/user.jpg'),
(28, 'Parlophone', 'parlophone@soundflower.rahcode.com', '$2y$10$VQ2iacJRGFcqoi5aEJyCXuXomYGr6jJwZMnkFPVYXKoGFEggoLSrC', 2, '/assets/img/user.jpg'),
(29, 'Inmadurez Records', 'inmadurez@soundflower.rahcode.com', '$2y$10$mxK1v9cC9TL0IbuurZriFesyt4ym6rnexj4bkYn2pDBaDFHwQGTyi', 2, '/assets/img/user.jpg'),
(30, 'Atlantic Records', 'atlantic@soundflower.rahcode.com', '$2y$10$.gdGuf0NyVrGuideQftmPO.A5sftrZzlsOB56x0RKNFyjgIlU9m7i', 2, '/assets/img/user.jpg'),
(31, 'Big Machine Records', 'machine@soundflower.rahcode.com', '$2y$10$3vKPk8NPRldvYL7x5yO.9eaNtIMc0G0SoHp4jDsTGxg3IQIUfjq8a', 2, '/assets/img/user.jpg'),
(32, 'OMORI', 'omori@soundflower.rahcode.com', '$2y$10$woS1txCeJoxkiLa/.TdFV.r4KX.tv5.SQn72tOkE73uPwJeb3dAJy', 2, '/assets/img/user.jpg'),
(33, 'Pelo Music', 'pelo@soundflower.rahcode.com', '$2y$10$MOjUDKgW8ndH79Dcy2/J8O16sVrsnv8oJa57D/FJamid66RYhemVy', 2, '/assets/img/user.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumes`
--
ALTER TABLE `albumes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cacion_artista`
--
ALTER TABLE `cacion_artista`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `cancion_playlist`
--
ALTER TABLE `cancion_playlist`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `dislikes_usuario`
--
ALTER TABLE `dislikes_usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `favoritos_albumes`
--
ALTER TABLE `favoritos_albumes`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `favoritos_artistas`
--
ALTER TABLE `favoritos_artistas`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `favoritos_canciones`
--
ALTER TABLE `favoritos_canciones`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `generos_cancion`
--
ALTER TABLE `generos_cancion`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumes`
--
ALTER TABLE `albumes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `cacion_artista`
--
ALTER TABLE `cacion_artista`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancion_playlist`
--
ALTER TABLE `cancion_playlist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dislikes_usuario`
--
ALTER TABLE `dislikes_usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos_albumes`
--
ALTER TABLE `favoritos_albumes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos_artistas`
--
ALTER TABLE `favoritos_artistas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos_canciones`
--
ALTER TABLE `favoritos_canciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos_cancion`
--
ALTER TABLE `generos_cancion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlists`
--
ALTER TABLE `playlists`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
