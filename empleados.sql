-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2024 a las 17:36:00
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `documento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `salario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `documento`, `nombre`, `puesto`, `salario`) VALUES
(1, 1399157, 'Geraldine Hane', 'Principal Program Associate', 323),
(2, 132584, 'Nichole Hauck', 'Corporate Security Representative', 263),
(3, 1223030, 'Juana Nader', 'Senior Configuration Designer', 722),
(4, 4375956, 'Lester Ferry', 'Lead Assurance Executive', 714),
(5, 4040055, 'Dr. Rita Labadie', 'Customer Response Agent', 783),
(6, 4325641, 'Miss Billie Langworth', 'Central Accountability Technician', 825),
(7, 4110512, 'Pamela Donnelly-Pouros', 'Regional Integration Strategist', 33),
(8, 4113017, 'Dwight Swift', 'Internal Research Manager', 733),
(9, 3229382, 'Melinda Lubowitz', 'Chief Solutions Facilitator', 305),
(10, 2116015, 'Dr. Billie Bogisich-Sawayn II', 'Lead Communications Developer', 351),
(11, 3536208, 'Miriam Stanton', 'Investor Brand Liaison', 292),
(12, 4567307, 'Teresa Wolff', 'Global Intranet Executive', 310),
(13, 3541638, 'Kristine Runolfsdottir', 'Human Factors Supervisor', 476),
(14, 3348177, 'Mrs. Tricia Jacobs', 'National Intranet Supervisor', 297),
(15, 2923472, 'Geoffrey Dickinson-Hackett', 'Future Directives Representative', 130),
(16, 4675671, 'Gertrude Miller', 'Principal Web Liaison', 763),
(17, 4966934, 'Ana Hermann', 'Dynamic Implementation Planner', 200),
(18, 4883607, 'Tasha Cremin', 'Future Intranet Designer', 329),
(19, 3500569, 'Lynette Kerluke', 'Principal Program Producer', 418),
(20, 2457058, 'Lynne Schuster V', 'Forward Infrastructure Liaison', 673),
(21, 3049808, 'Rhonda Fay', 'International Applications Producer', 542),
(22, 4098152, 'Noah Krajcik', 'Direct Infrastructure Director', 901),
(23, 3154233, 'Dr. Janis Bartoletti', 'District Branding Assistant', 653),
(24, 2663246, 'Adrian Douglas', 'Direct Creative Assistant', 5),
(25, 2553155, 'Heather McKenzie', 'Global Integration Technician', 219),
(26, 568747, 'Lamar Yost', 'Senior Security Director', 418),
(27, 179553, 'Mrs. Amanda Vandervort', 'Customer Implementation Supervisor', 338),
(28, 859629, 'Kerry Little', 'Human Interactions Engineer', 654),
(29, 3316392, 'Marilyn Erdman', 'Senior Mobility Representative', 817),
(30, 3263844, 'Irma Schmidt', 'Central Division Coordinator', 733),
(31, 2469139, 'Pat Waelchi-Pfeffer', 'Chief Assurance Orchestrator', 660),
(32, 4236683, 'Javier Kiehn', 'Human Directives Designer', 857),
(33, 4312404, 'Erma O\'Keefe', 'Investor Marketing Producer', 122),
(34, 4659511, 'Veronica Lesch', 'National Infrastructure Planner', 691),
(35, 2287839, 'Mr. Percy Treutel', 'Legacy Security Producer', 766),
(36, 13956, 'Stuart Herzog', 'Forward Data Planner', 227),
(37, 2173801, 'Curtis Donnelly DVM', 'National Data Assistant', 778),
(38, 3401371, 'Paul Grimes', 'Customer Creative Liaison', 427),
(39, 3273537, 'Travis Muller', 'Customer Assurance Architect', 87),
(40, 183268, 'Rita Keeling', 'Internal Interactions Representative', 275),
(41, 214378, 'Mr. Kenneth Cummings', 'Dynamic Identity Executive', 288),
(42, 3557583, 'Darla Johnston', 'Future Directives Associate', 999),
(43, 3942840, 'Howard Buckridge', 'Chief Infrastructure Associate', 458),
(44, 4752496, 'Dr. Amos Hilll', 'Dynamic Division Agent', 420),
(45, 4953864, 'Reginald Vandervort PhD', 'Future Program Developer', 846),
(46, 3956241, 'Lula Grady', 'Internal Data Manager', 557),
(47, 3550876, 'Norma Emard', 'Customer Quality Supervisor', 320),
(48, 3790852, 'Maggie Murray', 'Corporate Program Manager', 107),
(49, 328433, 'Gregg Stiedemann', 'Regional Factors Associate', 600),
(50, 4868497, 'Marcella Kozey', 'Chief Solutions Specialist', 600);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
