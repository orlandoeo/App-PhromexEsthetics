-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2019 a las 23:13:22
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add diagnostico', 7, 'add_diagnostico'),
(26, 'Can change diagnostico', 7, 'change_diagnostico'),
(27, 'Can delete diagnostico', 7, 'delete_diagnostico'),
(28, 'Can view diagnostico', 7, 'view_diagnostico'),
(29, 'Can add factura', 8, 'add_factura'),
(30, 'Can change factura', 8, 'change_factura'),
(31, 'Can delete factura', 8, 'delete_factura'),
(32, 'Can view factura', 8, 'view_factura'),
(33, 'Can add historia_clinica', 9, 'add_historia_clinica'),
(34, 'Can change historia_clinica', 9, 'change_historia_clinica'),
(35, 'Can delete historia_clinica', 9, 'delete_historia_clinica'),
(36, 'Can view historia_clinica', 9, 'view_historia_clinica'),
(37, 'Can add insumos', 10, 'add_insumos'),
(38, 'Can change insumos', 10, 'change_insumos'),
(39, 'Can delete insumos', 10, 'delete_insumos'),
(40, 'Can view insumos', 10, 'view_insumos'),
(41, 'Can add medico', 11, 'add_medico'),
(42, 'Can change medico', 11, 'change_medico'),
(43, 'Can delete medico', 11, 'delete_medico'),
(44, 'Can view medico', 11, 'view_medico'),
(45, 'Can add nomina', 12, 'add_nomina'),
(46, 'Can change nomina', 12, 'change_nomina'),
(47, 'Can delete nomina', 12, 'delete_nomina'),
(48, 'Can view nomina', 12, 'view_nomina'),
(49, 'Can add paciente', 13, 'add_paciente'),
(50, 'Can change paciente', 13, 'change_paciente'),
(51, 'Can delete paciente', 13, 'delete_paciente'),
(52, 'Can view paciente', 13, 'view_paciente'),
(53, 'Can add proveedor', 14, 'add_proveedor'),
(54, 'Can change proveedor', 14, 'change_proveedor'),
(55, 'Can delete proveedor', 14, 'delete_proveedor'),
(56, 'Can view proveedor', 14, 'view_proveedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$tXg11yl7cFqW$hKeM/tswfjQ69Lp75NXOTGo+pwfsUb3BuGdKumuNxnQ=', '2019-10-12 17:59:31.823676', 1, 'jose', '', '', 'jhafag.94@gmail.com', 1, 1, '2019-10-12 17:58:16.913059');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnostico_diagnostico`
--

CREATE TABLE `diagnostico_diagnostico` (
  `id` int(11) NOT NULL,
  `Codigo_cups` int(11) NOT NULL,
  `Abreviatura` varchar(200) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-10-12 19:30:48.712097', '1', 'orlando', 1, '[{\"added\": {}}]', 13, 1),
(2, '2019-10-12 19:31:38.734299', '1', 'orlando', 2, '[]', 13, 1),
(3, '2019-10-12 20:16:31.074220', '455', 'Nomina object (455)', 1, '[{\"added\": {}}]', 12, 1),
(4, '2019-10-12 20:17:06.028868', '455', 'Nomina object (455)', 2, '[]', 12, 1),
(5, '2019-10-12 20:18:44.669895', '5555', 'jhon', 1, '[{\"added\": {}}]', 14, 1),
(6, '2019-10-12 21:00:25.236065', '222', 'gordo', 1, '[{\"added\": {}}]', 9, 1),
(7, '2019-10-12 21:06:40.135466', '3', 'vaselina para el gordo', 1, '[{\"added\": {}}]', 8, 1),
(8, '2019-10-12 21:06:49.213069', '3', 'vaselina para el gordo', 2, '[]', 8, 1),
(9, '2019-10-12 21:07:31.806291', '4', 'empanadas', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'diagnostico', 'diagnostico'),
(8, 'factura', 'factura'),
(9, 'historia_clinica', 'historia_clinica'),
(10, 'insumos', 'insumos'),
(11, 'medico', 'medico'),
(12, 'nomina', 'nomina'),
(13, 'paciente', 'paciente'),
(14, 'proveedor', 'proveedor'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-12 17:37:04.898127'),
(2, 'auth', '0001_initial', '2019-10-12 17:37:08.722786'),
(3, 'admin', '0001_initial', '2019-10-12 17:37:14.764875'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-12 17:37:16.124144'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-12 17:37:16.194103'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-12 17:37:17.845744'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-12 17:37:17.946666'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-12 17:37:18.011628'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-12 17:37:18.038616'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-12 17:37:18.486359'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-12 17:37:18.519342'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-12 17:37:18.580303'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-12 17:37:18.667254'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-12 17:37:18.757201'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-12 17:37:18.823163'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-12 17:37:18.857144'),
(17, 'diagnostico', '0001_initial', '2019-10-12 17:37:19.038735'),
(18, 'factura', '0001_initial', '2019-10-12 17:37:19.277600'),
(19, 'historia_clinica', '0001_initial', '2019-10-12 17:37:19.459497'),
(20, 'insumos', '0001_initial', '2019-10-12 17:37:19.638394'),
(21, 'medico', '0001_initial', '2019-10-12 17:37:19.836373'),
(22, 'nomina', '0001_initial', '2019-10-12 17:37:20.204978'),
(23, 'paciente', '0001_initial', '2019-10-12 17:37:20.466827'),
(24, 'paciente', '0002_auto_20191012_1235', '2019-10-12 17:37:20.634962'),
(25, 'proveedor', '0001_initial', '2019-10-12 17:37:20.919799'),
(26, 'sessions', '0001_initial', '2019-10-12 17:37:21.080707'),
(27, 'diagnostico', '0002_auto_20191012_1426', '2019-10-12 19:27:22.438306'),
(28, 'factura', '0002_auto_20191012_1426', '2019-10-12 19:27:22.549078'),
(29, 'historia_clinica', '0002_auto_20191012_1426', '2019-10-12 19:27:22.573055'),
(30, 'insumos', '0002_auto_20191012_1426', '2019-10-12 19:27:22.649745'),
(31, 'paciente', '0003_auto_20191012_1426', '2019-10-12 19:27:22.729745'),
(32, 'proveedor', '0002_auto_20191012_1426', '2019-10-12 19:27:22.765737'),
(33, 'nomina', '0002_auto_20191012_1514', '2019-10-12 20:14:48.394343'),
(34, 'proveedor', '0003_auto_20191012_1514', '2019-10-12 20:14:50.139454'),
(35, 'diagnostico', '0003_auto_20191012_1557', '2019-10-12 20:57:35.192556'),
(36, 'factura', '0003_auto_20191012_1557', '2019-10-12 20:57:35.335053'),
(37, 'historia_clinica', '0003_auto_20191012_1557', '2019-10-12 20:57:36.416804'),
(38, 'insumos', '0003_auto_20191012_1557', '2019-10-12 20:57:36.511910'),
(39, 'medico', '0002_auto_20191012_1557', '2019-10-12 20:57:38.163132'),
(40, 'nomina', '0003_auto_20191012_1557', '2019-10-12 20:57:38.198131'),
(41, 'paciente', '0004_auto_20191012_1557', '2019-10-12 20:57:39.176676'),
(42, 'proveedor', '0004_auto_20191012_1557', '2019-10-12 20:57:40.071850'),
(43, 'factura', '0004_auto_20191012_1606', '2019-10-12 21:06:19.332179');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_factura`
--

CREATE TABLE `factura_factura` (
  `Identificacion_factura` int(11) NOT NULL,
  `Detalle` varchar(200) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Valor` int(11) NOT NULL,
  `Iva` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_factura`
--

INSERT INTO `factura_factura` (`Identificacion_factura`, `Detalle`, `Cantidad`, `Valor`, `Iva`, `Subtotal`, `Total`) VALUES
(3, 'vaselina para el gordo', 30, 3500, 400, 105000, 105400),
(4, 'empanadas', 3, 1000, 0, 1000, 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica_historia_clinica`
--

CREATE TABLE `historia_clinica_historia_clinica` (
  `Identificacion_historia` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Fecha_inicio` datetime(6) NOT NULL,
  `Fecha_fin` datetime(6) NOT NULL,
  `Motivo_consulta` longtext NOT NULL,
  `Consecutivo` int(11) NOT NULL,
  `Diagnostico` longtext NOT NULL,
  `Servicio` longtext NOT NULL,
  `Anexo` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historia_clinica_historia_clinica`
--

INSERT INTO `historia_clinica_historia_clinica` (`Identificacion_historia`, `Nombre`, `Fecha_inicio`, `Fecha_fin`, `Motivo_consulta`, `Consecutivo`, `Diagnostico`, `Servicio`, `Anexo`) VALUES
(222, 'gordo', '2019-10-08 06:00:00.000000', '2019-10-10 12:00:00.000000', 'dolor de culo', 2, 'al gordo le gusta el mundo por lo redondo', 'tratamiento', 'usar vaselina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_insumos`
--

CREATE TABLE `insumos_insumos` (
  `Identificacion_insumo` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Cantidad_salida` int(11) NOT NULL,
  `Existencia` int(11) NOT NULL,
  `Fecha_ingreso` datetime(6) NOT NULL,
  `Fecha_vencimiento` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_medico`
--

CREATE TABLE `medico_medico` (
  `Identificacion_medico` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `PrimerApellido` varchar(200) NOT NULL,
  `SegundoApellido` varchar(200) NOT NULL,
  `Sexo` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefeno` int(11) NOT NULL,
  `Residencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina_nomina`
--

CREATE TABLE `nomina_nomina` (
  `Identificacion_nomina` int(11) NOT NULL,
  `Fecha_inicio` datetime(6) NOT NULL,
  `Fecha_fin` datetime(6) NOT NULL,
  `Detalle` longtext NOT NULL,
  `Identificacion_especialista` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nomina_nomina`
--

INSERT INTO `nomina_nomina` (`Identificacion_nomina`, `Fecha_inicio`, `Fecha_fin`, `Detalle`, `Identificacion_especialista`) VALUES
(455, '2019-10-08 06:00:00.000000', '2019-10-10 12:00:00.000000', 'hola', '33333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_paciente`
--

CREATE TABLE `paciente_paciente` (
  `Identificacion_paciente` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `PrimerApellido` varchar(200) NOT NULL,
  `SegundoApellido` varchar(200) NOT NULL,
  `Fecha_nacimiento` datetime(6) NOT NULL,
  `Sexo` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefeno` varchar(200) NOT NULL,
  `Residencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente_paciente`
--

INSERT INTO `paciente_paciente` (`Identificacion_paciente`, `Nombre`, `PrimerApellido`, `SegundoApellido`, `Fecha_nacimiento`, `Sexo`, `Email`, `Telefeno`, `Residencia`) VALUES
(1, 'orlando', 'cruz', 'olivero', '1984-05-23 00:00:00.000000', 'masculino', 'jcastellanoa@uqvirtual.edu.co', '85987', 'armenia quindio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor_proveedor`
--

CREATE TABLE `proveedor_proveedor` (
  `Identificacion_proveedor` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Ciudad` varchar(200) NOT NULL,
  `Departamento` varchar(200) NOT NULL,
  `Fecha_nacimiento` datetime(6) NOT NULL,
  `Producto` varchar(200) NOT NULL,
  `Cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor_proveedor`
--

INSERT INTO `proveedor_proveedor` (`Identificacion_proveedor`, `Nombre`, `Ciudad`, `Departamento`, `Fecha_nacimiento`, `Producto`, `Cantidad`) VALUES
(5555, 'jhon', 'armenia', 'quindio', '1984-05-23 00:00:00.000000', 'hojas', 8);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `diagnostico_diagnostico`
--
ALTER TABLE `diagnostico_diagnostico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `factura_factura`
--
ALTER TABLE `factura_factura`
  ADD PRIMARY KEY (`Identificacion_factura`);

--
-- Indices de la tabla `historia_clinica_historia_clinica`
--
ALTER TABLE `historia_clinica_historia_clinica`
  ADD PRIMARY KEY (`Identificacion_historia`);

--
-- Indices de la tabla `insumos_insumos`
--
ALTER TABLE `insumos_insumos`
  ADD PRIMARY KEY (`Identificacion_insumo`);

--
-- Indices de la tabla `medico_medico`
--
ALTER TABLE `medico_medico`
  ADD PRIMARY KEY (`Identificacion_medico`);

--
-- Indices de la tabla `nomina_nomina`
--
ALTER TABLE `nomina_nomina`
  ADD PRIMARY KEY (`Identificacion_nomina`);

--
-- Indices de la tabla `paciente_paciente`
--
ALTER TABLE `paciente_paciente`
  ADD PRIMARY KEY (`Identificacion_paciente`);

--
-- Indices de la tabla `proveedor_proveedor`
--
ALTER TABLE `proveedor_proveedor`
  ADD PRIMARY KEY (`Identificacion_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diagnostico_diagnostico`
--
ALTER TABLE `diagnostico_diagnostico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `factura_factura`
--
ALTER TABLE `factura_factura`
  MODIFY `Identificacion_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `insumos_insumos`
--
ALTER TABLE `insumos_insumos`
  MODIFY `Identificacion_insumo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente_paciente`
--
ALTER TABLE `paciente_paciente`
  MODIFY `Identificacion_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
