-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2022 a las 05:27:34
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `employee`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `last_names`, `names`, `business`, `created_at`, `updated_at`) VALUES
(1, 'Bautista Luna', 'Carlos Esteban', 'McLaren Group', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(2, 'Martinez Mantilla', 'Mariana', 'Disney', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(3, 'Mantilla Gomez', 'Liana Consuelo', 'Casalimpia', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(4, 'Martinez', 'Ricardo Andres', 'Alcaldia de Bogota', '2022-12-11 08:17:54', '2022-12-11 08:17:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_11_004420_create_workers_table', 1),
(6, '2022_12_11_004503_create_products_table', 1),
(7, '2022_12_11_004531_create_customers_table', 1),
(8, '2022_12_11_004637_create_sales_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Gomitas Trululu', '2400', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(2, 'Choclitos', '1800', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(3, 'Panelada', '1100', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(4, 'Muuu', '500', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(5, 'Pan alineado', '3000', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(6, 'Papel higienico duo', '2500', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(7, 'Gomitas Trolli', '1300', '2022-12-11 08:17:54', '2022-12-11 08:17:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_order` date NOT NULL,
  `worker_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `date_order`, `worker_id`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '1984-05-04', 4, 3, 3, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(2, '1991-09-17', 4, 6, 2, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(3, '2016-09-07', 3, 3, 3, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(4, '1988-04-04', 2, 2, 1, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(5, '2002-07-31', 3, 4, 2, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(6, '1970-06-03', 4, 4, 1, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(7, '2001-12-06', 3, 3, 2, '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(8, '2010-02-24', 4, 4, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(9, '1982-05-31', 2, 3, 1, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(10, '1981-04-05', 4, 5, 1, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(11, '2005-11-21', 3, 2, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(12, '1978-07-14', 1, 6, 3, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(13, '1981-07-05', 2, 5, 1, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(14, '1980-12-22', 4, 1, 4, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(15, '1975-01-14', 2, 1, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(16, '1995-07-19', 1, 5, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(17, '2020-08-29', 4, 1, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(18, '1974-08-26', 3, 3, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(19, '1992-10-13', 4, 7, 3, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(20, '1989-08-07', 1, 2, 1, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(21, '1996-10-18', 3, 3, 1, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(22, '2001-04-18', 1, 6, 3, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(23, '1992-10-26', 4, 1, 4, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(24, '2008-05-17', 1, 3, 4, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(25, '1999-07-01', 2, 2, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(26, '2006-12-10', 4, 2, 4, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(27, '1989-11-25', 1, 4, 2, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(28, '1991-06-09', 4, 3, 3, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(29, '1973-10-17', 3, 6, 3, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(30, '2021-04-09', 3, 6, 4, '2022-12-11 08:17:55', '2022-12-11 08:17:55'),
(31, '1994-01-14', 1, 2, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(32, '2001-01-23', 4, 4, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(33, '2005-12-15', 2, 1, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(34, '2016-09-27', 2, 3, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(35, '1981-05-24', 3, 5, 2, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(36, '2011-09-08', 1, 1, 2, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(37, '1979-05-18', 1, 5, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(38, '1991-08-15', 1, 6, 1, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(39, '1999-04-27', 4, 4, 1, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(40, '2016-09-21', 4, 5, 1, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(41, '2000-10-04', 1, 4, 1, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(42, '1994-12-23', 3, 6, 1, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(43, '2013-09-27', 4, 5, 4, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(44, '1994-07-12', 3, 4, 2, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(45, '1999-02-23', 3, 3, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(46, '1981-08-16', 1, 2, 2, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(47, '1975-08-09', 1, 5, 3, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(48, '1979-11-20', 2, 7, 4, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(49, '1975-01-06', 1, 7, 4, '2022-12-11 08:17:56', '2022-12-11 08:17:56'),
(50, '2022-06-18', 2, 5, 4, '2022-12-11 08:17:56', '2022-12-11 08:17:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `workers`
--

CREATE TABLE `workers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `last_names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `basesalary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maritalstatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `workers`
--

INSERT INTO `workers` (`id`, `last_names`, `names`, `dateofbirth`, `basesalary`, `maritalstatus`, `created_at`, `updated_at`) VALUES
(1, 'Guarin Sanchez', 'Laura Valentina', '2005-01-21', '8500000', 'Soltero', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(2, 'Martinez Mantilla', 'Yerli Tatiana', '2005-07-07', '10500000', 'Soltero', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(3, 'Jaramillo Berrio', 'Ivan Camilo', '2004-07-12', '9000000', 'Casado', '2022-12-11 08:17:54', '2022-12-11 08:17:54'),
(4, 'Avendaño Gomez', 'Maria Ximena', '2004-04-18', '8000000', 'Casado', '2022-12-11 08:17:54', '2022-12-11 08:17:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_worker_id_foreign` (`worker_id`),
  ADD KEY `sales_product_id_foreign` (`product_id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `workers`
--
ALTER TABLE `workers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sales_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sales_worker_id_foreign` FOREIGN KEY (`worker_id`) REFERENCES `workers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
