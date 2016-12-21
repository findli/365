SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `365`
--
CREATE DATABASE IF NOT EXISTS `365` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `365`;
-- --------------------------------------------------------

--
-- Структура таблицы `task1_attribute`
--

CREATE TABLE `task1_attribute` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `task1_attribute`
--

INSERT INTO `task1_attribute` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'двери', '2016-12-21 16:28:13', '2016-12-21 16:28:55', NULL),
(2, 'клиренс', '2016-12-21 16:28:13', '2016-12-21 16:28:58', NULL),
(3, 'экран', '2016-12-21 16:28:13', '2016-12-21 17:50:34', NULL),
(4, 'вес', '2016-12-21 16:28:13', '2016-12-21 17:50:37', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `task1_category`
--

CREATE TABLE `task1_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `task1_category`
--

INSERT INTO `task1_category` (`id`, `title`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'машины', NULL, '2016-12-21 15:37:48', '2016-12-21 16:24:26'),
(2, 'ноутбуки', NULL, '2016-12-21 15:37:48', '2016-12-21 16:24:29');

-- --------------------------------------------------------

--
-- Структура таблицы `task1_category_attribute`
--

CREATE TABLE `task1_category_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `task1_category_attribute`
--

INSERT INTO `task1_category_attribute` (`id`, `attribute_id`, `category_id`) VALUES
(3, 1, 1),
(4, 2, 1),
(5, 3, 2),
(6, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `task1_product`
--

CREATE TABLE `task1_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `task1_product`
--

INSERT INTO `task1_product` (`id`, `title`, `image`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'macbook 13 2016', NULL, 2, '2016-12-21 17:56:52', '2016-12-21 17:58:07', NULL),
(2, 'dell 13 xps fire', NULL, 2, '2016-12-21 17:56:52', '2016-12-21 17:58:09', NULL),
(3, 'bmv 7', NULL, 1, '2016-12-21 17:57:25', '2016-12-21 17:58:12', NULL),
(4, 'bmv 6', NULL, 1, '2016-12-21 17:57:25', '2016-12-21 17:58:14', NULL),
(5, 'mercedes 520', NULL, 1, '2016-12-21 17:57:40', '2016-12-21 17:58:17', NULL),
(6, 'mazda', NULL, 1, '2016-12-21 17:57:40', '2016-12-21 17:58:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `task1_product_property`
--

CREATE TABLE `task1_product_property` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `task1_product_property`
--

INSERT INTO `task1_product_property` (`id`, `product_id`, `attribute_id`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '13', '2016-12-21 18:00:13', '2016-12-21 18:00:21', NULL),
(2, 1, 4, '1.4', '2016-12-21 18:00:13', '2016-12-21 18:00:23', NULL),
(3, 2, 3, '15.6', '2016-12-21 18:00:42', '2016-12-21 18:00:46', NULL),
(4, 3, 1, '4', '2016-12-21 18:01:17', '2016-12-21 18:01:30', NULL),
(5, 3, 2, '15', '2016-12-21 18:01:17', '2016-12-21 18:01:33', NULL),
(6, 5, 2, '17', '2016-12-21 18:01:17', '2016-12-21 18:01:17', NULL),
(7, 5, 1, '4', '2016-12-21 18:01:17', '2016-12-21 18:59:03', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `task1_attribute`
--
ALTER TABLE `task1_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task1_category`
--
ALTER TABLE `task1_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task1_category_attribute`
--
ALTER TABLE `task1_category_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id+attribute_id` (`category_id`,`attribute_id`),
  ADD KEY `fk_attribute_id` (`attribute_id`),
  ADD KEY `fk_category_id` (`category_id`),
  ADD KEY `idx_category_id_attribute_id` (`category_id`,`attribute_id`) USING BTREE;;

--
-- Индексы таблицы `task1_product`
--
ALTER TABLE `task1_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category_idx` (`category_id`);

--
-- Индексы таблицы `task1_product_property`
--
ALTER TABLE `task1_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id+attribute_id` (`product_id`,`attribute_id`),
  ADD KEY `fk_product_property_attribute_idx` (`attribute_id`),
  ADD KEY `fk_product_property_product_idx` (`product_id`) USING BTREE,
  ADD KEY `idx_product_id_attribute_id` (`product_id`,`attribute_id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `task1_attribute`
--
ALTER TABLE `task1_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `task1_category`
--
ALTER TABLE `task1_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `task1_category_attribute`
--
ALTER TABLE `task1_category_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `task1_product`
--
ALTER TABLE `task1_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `task1_product_property`
--
ALTER TABLE `task1_product_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `task1_category_attribute`
--
ALTER TABLE `task1_category_attribute`
  ADD CONSTRAINT `fk_attribute_id` FOREIGN KEY (`attribute_id`) REFERENCES `task1_attribute` (`id`),
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `task1_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `task1_product`
--
ALTER TABLE `task1_product`
  ADD CONSTRAINT `dk_product_category` FOREIGN KEY (`category_id`) REFERENCES `task1_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `task1_product_property`
--
ALTER TABLE `task1_product_property`
  ADD CONSTRAINT `fk_product_property_attribute` FOREIGN KEY (`attribute_id`) REFERENCES `task1_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_property_product` FOREIGN KEY (`product_id`) REFERENCES `task1_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
