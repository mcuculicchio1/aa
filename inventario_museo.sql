-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2024 a las 03:08:46
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
-- Base de datos: `inventario_museo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogacion`
--

CREATE TABLE `catalogacion` (
  `id` int(11) NOT NULL,
  `nombre_institucion` varchar(255) NOT NULL DEFAULT 'Museo Pringles',
  `numero_inventario` varchar(50) NOT NULL,
  `numero_inventario_anterior` varchar(50) DEFAULT NULL,
  `registro_provisorio` varchar(50) DEFAULT NULL,
  `catalogacion_clasificacion` varchar(100) NOT NULL,
  `coleccion_tipologia` varchar(100) DEFAULT NULL,
  `nombre_objeto` varchar(255) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `autor_fabricante_cultura` varchar(255) DEFAULT NULL,
  `marco_historico` text DEFAULT NULL,
  `lugar_ejecucion` varchar(255) DEFAULT NULL,
  `fecha_ejecucion_periodo` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `tecnica` varchar(255) DEFAULT NULL,
  `inscripciones_marcas` text DEFAULT NULL,
  `dimensiones` varchar(100) DEFAULT NULL,
  `dimensiones_complementarias` varchar(100) DEFAULT NULL,
  `peso` varchar(50) DEFAULT NULL,
  `duracion` varchar(50) DEFAULT NULL,
  `talla` varchar(50) DEFAULT NULL,
  `bibliografia_referencia` text DEFAULT NULL,
  `estado_conservacion_objeto` text DEFAULT NULL,
  `estado_conservacion_complementarios` text DEFAULT NULL,
  `reparaciones_intervenciones` text DEFAULT NULL,
  `forma_ingreso` varchar(255) DEFAULT NULL,
  `norma_legal_ingreso` varchar(255) DEFAULT NULL,
  `norma_legal_baja` varchar(255) DEFAULT NULL,
  `motivo_baja` text DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `procedencia` varchar(255) DEFAULT NULL,
  `numero_legal_ingreso` varchar(255) DEFAULT NULL,
  `responsable_ingreso` varchar(255) DEFAULT NULL,
  `restriccion_uso` text DEFAULT NULL,
  `marcaje` text DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `ubicacion_actual` varchar(255) DEFAULT NULL,
  `fotografia` varchar(255) DEFAULT NULL,
  `restriccion_imagen` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogacion`
--

INSERT INTO `catalogacion` (`id`, `nombre_institucion`, `numero_inventario`, `numero_inventario_anterior`, `registro_provisorio`, `catalogacion_clasificacion`, `coleccion_tipologia`, `nombre_objeto`, `titulo`, `descripcion`, `autor_fabricante_cultura`, `marco_historico`, `lugar_ejecucion`, `fecha_ejecucion_periodo`, `material`, `tecnica`, `inscripciones_marcas`, `dimensiones`, `dimensiones_complementarias`, `peso`, `duracion`, `talla`, `bibliografia_referencia`, `estado_conservacion_objeto`, `estado_conservacion_complementarios`, `reparaciones_intervenciones`, `forma_ingreso`, `norma_legal_ingreso`, `norma_legal_baja`, `motivo_baja`, `fecha_baja`, `procedencia`, `numero_legal_ingreso`, `responsable_ingreso`, `restriccion_uso`, `marcaje`, `ubicacion`, `ubicacion_actual`, `fotografia`, `restriccion_imagen`, `fecha_creacion`) VALUES
(11, 'Museo Pringles', 'MP-11111', '', '', 'carteleria', '2323', 'editado2222', 'editado', '3233', '2323', '2323', 'sdf', '2024-11-01', '', '', '', '99', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CPringles', 'uploads/MP-11111.png', NULL, '2024-11-28 23:02:00'),
(12, 'Museo Pringles', 'MP-asdasd', 'sdfasdf', 'asdsad', 'administracion-publica', 'asdad', 'asdasd', 'asdasd', 'asdasdas', 'asasdsa', 'asdad', 'asdas', '2024-11-12', 'asdsa', 'asdasd', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', NULL, '', 'coronel pringles', 'uploads/MP-asdasd.jpg', '', '2024-11-28 23:03:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'admin', '2024-11-29 01:49:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogacion`
--
ALTER TABLE `catalogacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogacion`
--
ALTER TABLE `catalogacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
