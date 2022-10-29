-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2022 a las 05:31:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asilo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farmacia`
--

CREATE TABLE `farmacia` (
  `Codi` int(11) NOT NULL,
  `Nomb` varchar(25) NOT NULL,
  `Apell` varchar(25) NOT NULL,
  `fechaVi` date NOT NULL,
  `Especiali` varchar(25) NOT NULL,
  `medicameAsig` varchar(25) NOT NULL,
  `Medicamento` varchar(25) NOT NULL,
  `costo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `farmacia`
--

INSERT INTO `farmacia` (`Codi`, `Nomb`, `Apell`, `fechaVi`, `Especiali`, `medicameAsig`, `Medicamento`, `costo`) VALUES
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'especialidad', 'no', 'ibupro', '45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `codinterno` int(13) NOT NULL,
  `nombreinter` varchar(25) NOT NULL,
  `apellidointer` varchar(25) NOT NULL,
  `fechavisita` date NOT NULL,
  `motivovsita` varchar(100) NOT NULL,
  `medictratante` varchar(20) NOT NULL,
  `examenlab` varchar(100) NOT NULL,
  `resulexamen` varchar(100) NOT NULL,
  `diagnosico` varchar(100) NOT NULL,
  `medicamento` varchar(100) NOT NULL,
  `observaciones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`codinterno`, `nombreinter`, `apellidointer`, `fechavisita`, `motivovsita`, `medictratante`, `examenlab`, `resulexamen`, `diagnosico`, `medicamento`, `observaciones`) VALUES
(124587, 'wea', 'asdasd', '2022-02-02', 'Chequeo médico', 'qwqwqw', 'qwqwqw', 'qwqwqwq', 'qwqwqw', 'qwqwqw', 'qwqwq'),
(111111111, 'sdasd', 'asdasdsad', '2022-03-02', 'Chequeo médico', 'asdsad', 'asdsad', 'asdasd', 'asdasd', 'asdsad', 'sadsad'),
(123456789, 'Juan Carlos', 'Hernandez Lopez', '2022-01-01', 'Seguimiento de tratamiento', 'Pedro Medica', 'Reservados al paciente', 'El paciente se encuentra en observacion', 'Paciente mejorando ', 'sin receta', 'Comer mas sano'),
(220120321, 'Juan', 'Garcia', '2022-02-05', 'cfvsdvsd', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf'),
(222222222, 'Pedro Alfonso ', 'Hernandez Ayala', '2022-02-03', 'Seguimiento de tratamiento', 'Juan perez', 'laboratorio reservado', 'examenes reservados', 'diagostico reservado', 'medicamento no cuenta', 'sin observaciones '),
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'Enfermedad', 'Carlos perez', 'examen reservado', 'sin resultado', 'no diagnopstico', 'sin medicamento', 'mejorar al paciente'),
(1201254125, 'sdasd', 'asdasdsad', '2022-03-02', 'Chequeo médico', 'asdsad', 'asdsad', 'asdasd', 'asdasd', 'asdsad', 'sadsad'),
(1245784512, 'pedro', 'Hernandez', '2022-04-06', 'Enfermedad', 'juan carlos', 'sdasdsa', 'dasdasd', 'asdasd', 'asdasd', 'asdasdd'),
(1245784541, 'sfsdf', 'sdfsdf', '2022-02-02', 'Otro', 'sfsdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'dsfsdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastospaciente`
--

CREATE TABLE `gastospaciente` (
  `Codd` int(11) NOT NULL,
  `Nombr` varchar(25) NOT NULL,
  `Apel` varchar(25) NOT NULL,
  `Fecha` date NOT NULL,
  `especialidaPaci` varchar(30) NOT NULL,
  `costoCita` decimal(10,0) NOT NULL,
  `costoExamenes` decimal(10,0) NOT NULL,
  `costoMedicamento` decimal(10,0) NOT NULL,
  `Nocuenta` int(11) NOT NULL,
  `Descuento` varchar(10) NOT NULL,
  `Totalcancelar` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gastospaciente`
--

INSERT INTO `gastospaciente` (`Codd`, `Nombr`, `Apel`, `Fecha`, `especialidaPaci`, `costoCita`, `costoExamenes`, `costoMedicamento`, `Nocuenta`, `Descuento`, `Totalcancelar`) VALUES
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'especialidad', '1000', '1000', '500', 326589741, '30', '2500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `cod` varchar(13) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `notel` int(8) NOT NULL,
  `especialidad` varchar(25) NOT NULL,
  `nacionalidad` varchar(25) NOT NULL,
  `direccion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`cod`, `nombre`, `apellido`, `notel`, `especialidad`, `nacionalidad`, `direccion`) VALUES
('123456789', 'Pedro Alfredo', 'Hernandez Garcia', 12345678, 'Otorrino', 'Guatemalteco', '5ta calle guatemala '),
('555555555', 'Carlos Eduardo', 'Garcia Garcia ', 123456789, 'Odontologo', 'Mexicano', 'aqui se pone la direccion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicosolicitud`
--

CREATE TABLE `medicosolicitud` (
  `Cod` int(10) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `fechaVisi` date NOT NULL,
  `motivoVisita` varchar(30) NOT NULL,
  `especialidadPaci` varchar(30) NOT NULL,
  `enfermeroAsignado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medicosolicitud`
--

INSERT INTO `medicosolicitud` (`Cod`, `Nombre`, `Apellido`, `fechaVisi`, `motivoVisita`, `especialidadPaci`, `enfermeroAsignado`) VALUES
(111111111, 'sdasd', 'asdasdsad', '2022-03-02', 'Chequeo médico', 'especialidad', 'Carlos perez'),
(123456789, 'Juan Carlos', 'Hernandez Lopez', '2022-01-01', '', 'Cirugia general', 'Gustabo Perez'),
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'Enfermedad', 'especialidad', 'Pedro alfredo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `codiPaciente` int(11) NOT NULL,
  `Nom` varchar(25) NOT NULL,
  `Apelli` varchar(25) NOT NULL,
  `fechaVisit` date NOT NULL,
  `especialidadPaciente` varchar(35) NOT NULL,
  `enfermAsignado` varchar(30) NOT NULL,
  `motivoVisita` varchar(40) NOT NULL,
  `horarioAtenci` varchar(35) NOT NULL,
  `medAsignado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`codiPaciente`, `Nom`, `Apelli`, `fechaVisit`, `especialidadPaciente`, `enfermAsignado`, `motivoVisita`, `horarioAtenci`, `medAsignado`) VALUES
(111111111, 'sdasd', 'asdasdsad', '2022-03-02', 'especialidad', 'Carlos perez', 'Chequeo médico', '9:00 Am A 11:00 Am', 'Pedro Alfredo'),
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'especialidad', 'Pedro alfredo', 'Enfermedad', '9:00 Am', 'Pedro Alfredo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitamedica`
--

CREATE TABLE `visitamedica` (
  `Codig` int(11) NOT NULL,
  `Nomb` varchar(25) NOT NULL,
  `Apellid` varchar(25) NOT NULL,
  `Fecha` date NOT NULL,
  `Especiali` varchar(35) NOT NULL,
  `EnfermeroAsi` varchar(30) NOT NULL,
  `motivoVisi` varchar(35) NOT NULL,
  `Hora` varchar(35) NOT NULL,
  `medicoAsig` varchar(35) NOT NULL,
  `asignarExamen` varchar(100) NOT NULL,
  `resultadoExamen` varchar(100) NOT NULL,
  `costoExamen` int(11) NOT NULL,
  `asignarMedicame` varchar(100) NOT NULL,
  `costoMedicame` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `visitamedica`
--

INSERT INTO `visitamedica` (`Codig`, `Nomb`, `Apellid`, `Fecha`, `Especiali`, `EnfermeroAsi`, `motivoVisi`, `Hora`, `medicoAsig`, `asignarExamen`, `resultadoExamen`, `costoExamen`, `asignarMedicame`, `costoMedicame`) VALUES
(111111111, 'sdasd', 'asdasdsad', '2022-03-02', 'especialidad', 'Carlos perez', 'Chequeo médico', '9:00 Am A 11:00 Am', 'Pedro Alfredo', 'no necesita examen ', 'los resultadois fueron los mejores ', 180, 'Ya tiene Resultados?', 0),
(333333333, 'Elder Eduardo', 'Garcia lopez', '2021-02-02', 'especialidad', 'Pedro alfredo', 'Enfermedad', '9:00 Am', 'Pedro Alfredo', 'gfdgfd', 'los resultadois fueron los mejores ', 100, 'no', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `farmacia`
--
ALTER TABLE `farmacia`
  ADD PRIMARY KEY (`Codi`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`codinterno`);

--
-- Indices de la tabla `gastospaciente`
--
ALTER TABLE `gastospaciente`
  ADD PRIMARY KEY (`Codd`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`cod`);

--
-- Indices de la tabla `medicosolicitud`
--
ALTER TABLE `medicosolicitud`
  ADD PRIMARY KEY (`Cod`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`codiPaciente`);

--
-- Indices de la tabla `visitamedica`
--
ALTER TABLE `visitamedica`
  ADD PRIMARY KEY (`Codig`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
