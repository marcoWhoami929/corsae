-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2024 a las 21:13:34
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `corsae`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE `antecedentes` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `patologicos` int(11) NOT NULL,
  `familiares` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`id`, `descripcion`, `patologicos`, `familiares`, `orden`, `estatus`) VALUES
(1, 'Traumatismos Faciales u Oculares', 1, 0, 1, 1),
(2, 'Dolores de Cabeza', 1, 0, 2, 1),
(3, 'Vision Borrosa', 1, 0, 3, 1),
(4, 'Cirujias', 1, 1, 4, 1),
(5, 'Alergias', 1, 1, 5, 1),
(6, 'Hipertension', 1, 1, 6, 1),
(7, 'Embarazo', 1, 0, 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentespaciente`
--

CREATE TABLE `antecedentespaciente` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `ant1` int(11) NOT NULL,
  `ant2` int(11) NOT NULL,
  `ant3` int(11) NOT NULL,
  `ant4` int(11) NOT NULL,
  `ant5` int(11) NOT NULL,
  `ant6` int(11) NOT NULL,
  `ant7` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anticipos`
--

CREATE TABLE `anticipos` (
  `id` int(11) NOT NULL,
  `idPreventa` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `monto` double NOT NULL,
  `estatus` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `serie` text NOT NULL,
  `folio` int(11) NOT NULL,
  `idTurnoCaja` int(11) NOT NULL,
  `denom1` int(11) NOT NULL,
  `denom2` int(11) NOT NULL,
  `denom3` int(11) NOT NULL,
  `denom4` int(11) NOT NULL,
  `denom5` int(11) NOT NULL,
  `denom6` int(11) NOT NULL,
  `denom7` int(11) NOT NULL,
  `denom8` int(11) NOT NULL,
  `denom9` int(11) NOT NULL,
  `denom10` int(11) NOT NULL,
  `denom11` int(11) NOT NULL,
  `denom12` int(11) NOT NULL,
  `gastos` double NOT NULL,
  `devoluciones` double NOT NULL,
  `totalDenominaciones` double NOT NULL,
  `totalCredito` double NOT NULL,
  `totalEfectivo` double NOT NULL,
  `diferencia` double NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombreCompleto` text NOT NULL,
  `edad` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `estadoCivil` text NOT NULL,
  `ocupacion` text NOT NULL,
  `Calle` text NOT NULL,
  `numExt` text NOT NULL,
  `numInt` text NOT NULL,
  `colonia` text NOT NULL,
  `municipio` text NOT NULL,
  `estado` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `referencias` text NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp(),
  `diasParaPago` int(11) NOT NULL,
  `credito` double NOT NULL,
  `descuento` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombreCompleto`, `edad`, `fechaNacimiento`, `sexo`, `estadoCivil`, `ocupacion`, `Calle`, `numExt`, `numInt`, `colonia`, `municipio`, `estado`, `telefono`, `celular`, `referencias`, `fechaAlta`, `diasParaPago`, `credito`, `descuento`) VALUES
(1, 'Marco Antonio Lopez Perez', 26, '1997-06-18', 'M', 'Soltero', 'Desarrollador de Software', 'Dalias', '6124', '', 'Bugambilias', 'Puebla', 'Puebla', '2211636228', '2211636228', 'Entre av mirasoles y av de las rosas', '2024-05-11 17:56:35', 45, 1000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cobradores`
--

CREATE TABLE `cobradores` (
  `id` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `nombreCompleto` text NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idOptometrista` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `diagnostico` text NOT NULL,
  `fechaConsulta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `observacionesPaciente` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `orden` int(11) NOT NULL,
  `consultaMedica` int(11) NOT NULL,
  `consultaOptometria` int(11) NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudios`
--

INSERT INTO `estudios` (`id`, `descripcion`, `orden`, `consultaMedica`, `consultaOptometria`, `estatus`) VALUES
(1, 'Autorefractometro OD', 1, 1, 1, 1),
(2, 'Autorefractometro OI', 2, 1, 1, 1),
(3, 'Keratometria OD', 3, 1, 1, 1),
(4, 'Keratometria OI', 4, 1, 1, 1),
(5, 'Oftalmoscopia', 5, 1, 1, 1),
(6, 'AV Sin RX OD', 6, 1, 1, 1),
(7, 'AV Sin RX OI', 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `serie` text NOT NULL,
  `folio` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text NOT NULL,
  `importe` double NOT NULL,
  `acreedor` text NOT NULL,
  `estatus` int(11) NOT NULL,
  `fechaCreado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerentes`
--

CREATE TABLE `gerentes` (
  `id` int(11) NOT NULL,
  `nombreCompleto` text NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `gerentes`
--

INSERT INTO `gerentes` (`id`, `nombreCompleto`, `fechaNacimiento`, `fecha`) VALUES
(1, 'Marco Antonio Lopez Perez', '1997-06-18', '2024-05-11 17:18:48'),
(2, 'Carlos Daniel Fuente', '1996-05-02', '2024-05-11 17:19:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `graduacionesconsulta`
--

CREATE TABLE `graduacionesconsulta` (
  `id` int(11) NOT NULL,
  `idConsulta` int(11) NOT NULL,
  `esferaOd` double NOT NULL,
  `cilindroOd` double NOT NULL,
  `ejeOd` double NOT NULL,
  `adicionOd` double NOT NULL,
  `agudezaOd` double NOT NULL,
  `distanciasNasopupilarOd` double NOT NULL,
  `distanciasVerticeOd` double NOT NULL,
  `distanciasObleaOd` double NOT NULL,
  `esferaOi` double NOT NULL,
  `adicionOi` double NOT NULL,
  `agudezaOi` double NOT NULL,
  `distanciasNasopupilarOi` double NOT NULL,
  `distanciasVerticeOi` double NOT NULL,
  `distanciasObleaOi` double NOT NULL,
  `monoBinocular` double NOT NULL,
  `alturaOblea` double NOT NULL,
  `anguloPantostopico` double NOT NULL,
  `anguloPanoramico` double NOT NULL,
  `agudezaVisualAo` double NOT NULL,
  `observacionesLentes` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `codigo` text NOT NULL,
  `estatus` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`id`, `descripcion`, `codigo`, `estatus`, `fecha`) VALUES
(1, 'Dama', '', 1, '2024-05-08 20:13:01'),
(2, 'Caballeros', '', 1, '2024-05-08 20:13:01'),
(3, 'Niños', '', 1, '2024-05-08 20:13:01'),
(4, 'Todos', '', 1, '2024-05-08 20:13:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lentes`
--

CREATE TABLE `lentes` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lentes`
--

INSERT INTO `lentes` (`id`, `descripcion`, `estatus`) VALUES
(1, 'Lejos', 1),
(2, 'Cerca', 1),
(3, 'Bifocales', 1),
(4, 'Multifocales', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `codigo` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `descripcion`, `codigo`, `estatus`) VALUES
(1, 'Eye Corner', '', 1),
(2, 'Firmod', '', 1),
(3, 'Lasik', '', 1),
(4, 'Optiland', '', 1),
(5, 'Ray ban', '', 1),
(6, 'Sayax', '', 1),
(7, 'Silmo', '', 1),
(8, 'Tommy Hilfiger', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id`, `descripcion`, `estatus`) VALUES
(1, 'Base Flat Top X', 1),
(2, 'Cristal Ax', 1),
(3, 'Cristal Fotogrey', 1),
(4, 'Cristal W', 1),
(5, 'Plastico Cr39', 1),
(6, 'Plastico High Index Ar', 1),
(7, 'Trivex', 1),
(8, 'Vidrio Crown', 1),
(9, 'Policarbonato', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `url` text NOT NULL,
  `icono` text NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `titulo`, `url`, `icono`, `estado`) VALUES
(1, 'Preventa', '#', 'bi bi-journal-text', 1),
(2, 'Ventas', '#', 'bi bi-journal-text', 1),
(3, 'Laboratorios', '#', '', 1),
(4, 'Cobranza', '#', '', 1),
(5, 'Catalogos', '#', '', 1),
(6, 'Caja', '#', '', 1),
(7, 'Inventario', '#', '', 1),
(8, 'Gastos', '#', '', 1),
(9, 'Configuraciones', '#', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optometristas`
--

CREATE TABLE `optometristas` (
  `id` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `nombreCompleto` text NOT NULL,
  `cedula` text NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `optometristas`
--

INSERT INTO `optometristas` (`id`, `idSucursal`, `nombreCompleto`, `cedula`, `fechaAlta`) VALUES
(1, 1, 'Ximena Sanchez', 'XSAASCASDASDAS', '2024-05-11 17:25:21'),
(2, 1, 'Carlos Fuentes', 'ssfsdfdsfsdfsfdsf', '2024-05-11 17:25:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `idVenta` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idCobrador` int(11) NOT NULL,
  `abono` double NOT NULL,
  `confirmado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preventas`
--

CREATE TABLE `preventas` (
  `id` int(11) NOT NULL,
  `serie` text NOT NULL,
  `folio` int(11) NOT NULL,
  `consulta` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fechaEntrega` date NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `idOptometrista` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `referencia` text NOT NULL,
  `subtotal` double NOT NULL,
  `anticipo` double NOT NULL,
  `total` double NOT NULL,
  `credito` int(11) NOT NULL,
  `pendiente` double NOT NULL,
  `parcialidades` int(11) NOT NULL,
  `parcial` double NOT NULL,
  `tipo` int(11) NOT NULL,
  `primerPago` date NOT NULL,
  `ultimoPago` date NOT NULL,
  `pagado` double NOT NULL,
  `fechaCreado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `clave` text NOT NULL,
  `foto` text NOT NULL,
  `descripcion` text NOT NULL,
  `idTipoProducto` int(11) NOT NULL,
  `idGrupo` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL,
  `idModelo` int(11) NOT NULL,
  `idColor` int(11) NOT NULL,
  `precio` double NOT NULL,
  `costo` double NOT NULL,
  `ultimaCompra` datetime NOT NULL,
  `tipoDescuento` int(11) NOT NULL,
  `descuento` double NOT NULL,
  `estatus` int(11) NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `idMenu` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `url` text NOT NULL,
  `icono` text NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `submenu`
--

INSERT INTO `submenu` (`id`, `idMenu`, `titulo`, `url`, `icono`, `estado`) VALUES
(1, 1, 'Preventas', 'preventas', '', 1),
(2, 1, 'Anticipos', 'anticipos', '', 1),
(3, 1, 'Recetas', 'recetas', '', 1),
(4, 1, 'Consultas', 'consultas', '', 1),
(5, 2, 'Ventas', 'ventas', '', 1),
(6, 2, 'Contratos', 'contratos', '', 1),
(7, 2, 'Cancelaciones', 'cancelaciones', '', 1),
(8, 3, 'Laboratorios', 'laboratorios', '', 1),
(9, 4, 'Creditos', 'creditos', '', 1),
(10, 4, 'Cobros', 'cobros', '', 1),
(11, 5, 'Clientes', 'clientes', '', 1),
(12, 5, 'Cobradores', 'cobradores', '', 1),
(13, 5, 'Optometristas', 'optometristas\r\n', '', 1),
(14, 5, 'Cupones', 'cupones', '', 1),
(15, 6, 'Corte de Caja', 'corteCaja', '', 1),
(16, 7, 'Catalogo', 'catalogo', '', 1),
(17, 7, 'Existencias', 'existencias', '', 1),
(18, 7, 'Precios', 'precios', '', 1),
(19, 6, 'Turnos', 'turnos', '', 1),
(20, 8, 'Gastos', 'gastos', '', 1),
(21, 9, 'Perfiles', 'perfiles', '', 1),
(22, 9, 'Accesos', 'accesos', '', 1),
(23, 5, 'Sucursales', 'sucursales', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `sucursal` text NOT NULL,
  `idGerente` int(11) NOT NULL,
  `ubicacion` text NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `horarioAbierto` time NOT NULL,
  `horarioCerrado` time NOT NULL,
  `latitud` text NOT NULL,
  `longitud` text NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `sucursal`, `idGerente`, `ubicacion`, `telefono`, `celular`, `horarioAbierto`, `horarioCerrado`, `latitud`, `longitud`, `fechaAlta`) VALUES
(1, 'Municipio Libre', 1, 'Blvd. Municipio Libre 1826, Universitaria, 72589 Heroica Puebla de Zaragoza, Pue.', '2216451545', '2216451545', '08:00:00', '14:00:00', '18.993184738228226', '-98.20507513093997', '2024-05-11 17:24:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamaños`
--

CREATE TABLE `tamaños` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tamaños`
--

INSERT INTO `tamaños` (`id`, `descripcion`, `fecha`) VALUES
(1, '132mm', '2024-05-08 20:23:13'),
(2, '134mm', '2024-05-08 20:23:13'),
(3, '136mm', '2024-05-08 20:23:13'),
(4, '14.5mm', '2024-05-08 20:23:13'),
(5, '60mm', '2024-05-08 20:23:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `serie` text NOT NULL,
  `folio` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposlentes`
--

CREATE TABLE `tiposlentes` (
  `id` int(11) NOT NULL,
  `idLentes` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tiposlentes`
--

INSERT INTO `tiposlentes` (`id`, `idLentes`, `descripcion`, `estatus`) VALUES
(1, 0, 'Bifocal', 1),
(2, 0, 'Fotocromaticos', 1),
(3, 0, 'Monofocal', 1),
(4, 0, 'Progresivo', 1),
(5, 0, 'Progresivos', 1),
(6, 0, 'Relax', 1),
(7, 0, 'Vision Sencilla', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposproducto`
--

CREATE TABLE `tiposproducto` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `codigo` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tiposproducto`
--

INSERT INTO `tiposproducto` (`id`, `descripcion`, `codigo`, `estatus`) VALUES
(1, 'Accesorios', '', 1),
(2, 'Armazones', '', 1),
(3, 'Estuches', '', 1),
(4, 'Servicios', '', 1),
(5, 'Soluciones', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `caracteristicas` text NOT NULL,
  `precio` double NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id`, `descripcion`, `caracteristicas`, `precio`, `estatus`) VALUES
(1, 'Anti-Blu', '', 950, 0),
(2, 'Antireflejante', '', 600, 0),
(3, 'Crizal Leazy Pro', '', 2000, 0),
(4, 'Pulido de Bicel', '', 590, 0),
(5, 'Tinte de Stock', '', 890, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnoscaja`
--

CREATE TABLE `turnoscaja` (
  `id` int(11) NOT NULL,
  `idSucursal` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `fondoInicial` double NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFinal` datetime NOT NULL,
  `estatus` text NOT NULL,
  `fondoFinal` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `correo` text NOT NULL,
  `password` text NOT NULL,
  `grupo` text NOT NULL,
  `perfil` text NOT NULL,
  `activo` int(11) NOT NULL,
  `template` text NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `correo`, `password`, `grupo`, `perfil`, `activo`, `template`, `fechaAlta`) VALUES
(1, 'Jose Luis', 'Jose Luis', 'admin@corsae.com.mx', '$2a$07$asxx54ahjppf45sd87a5auDcdjYNgiJ66St1/KSDgBax9XkWubKhK', 'Administracion', 'Administrador General', 1, 'dashboard', '2024-05-07 19:02:37'),
(2, 'Marco Antonio Lopez Perez', 'Marco Lopez', 'ventas@corsae.com.mx', '$2a$07$asxx54ahjppf45sd87a5auDcdjYNgiJ66St1/KSDgBax9XkWubKhK', 'Ventas', 'Ventas', 1, 'dashboardVentas', '2024-05-09 19:20:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `antecedentespaciente`
--
ALTER TABLE `antecedentespaciente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anticipos`
--
ALTER TABLE `anticipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cobradores`
--
ALTER TABLE `cobradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gerentes`
--
ALTER TABLE `gerentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `graduacionesconsulta`
--
ALTER TABLE `graduacionesconsulta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lentes`
--
ALTER TABLE `lentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `optometristas`
--
ALTER TABLE `optometristas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preventas`
--
ALTER TABLE `preventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tamaños`
--
ALTER TABLE `tamaños`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposlentes`
--
ALTER TABLE `tiposlentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposproducto`
--
ALTER TABLE `tiposproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnoscaja`
--
ALTER TABLE `turnoscaja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `antecedentes`
--
ALTER TABLE `antecedentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `antecedentespaciente`
--
ALTER TABLE `antecedentespaciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anticipos`
--
ALTER TABLE `anticipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cobradores`
--
ALTER TABLE `cobradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gerentes`
--
ALTER TABLE `gerentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `graduacionesconsulta`
--
ALTER TABLE `graduacionesconsulta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `lentes`
--
ALTER TABLE `lentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `optometristas`
--
ALTER TABLE `optometristas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `preventas`
--
ALTER TABLE `preventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tamaños`
--
ALTER TABLE `tamaños`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposlentes`
--
ALTER TABLE `tiposlentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tiposproducto`
--
ALTER TABLE `tiposproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `turnoscaja`
--
ALTER TABLE `turnoscaja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
