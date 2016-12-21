SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `365`
--
CREATE DATABASE IF NOT EXISTS `365` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `365`;

-- --------------------------------------------------------

--
-- Структура таблицы `task2_article`
--

CREATE TABLE `task2_article` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `public` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `task2_article`
--

INSERT INTO `task2_article` (`id`, `sort`, `public`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `task2_content`
--

CREATE TABLE `task2_content` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `task2_content`
--

INSERT INTO `task2_content` (`id`, `article_id`, `title`, `content`) VALUES
(1, 1, 'Статья 1 с правками в рантайме.', 'Содержание статьи 1.'),
(2, 1, 'Статья 2.', 'Содержание статьи 2.'),
(7, 2, 'Статья 3.', 'Содержание статьи 3.'),
(8, 2, 'Статья 4.', 'Содержание статьи 4.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `task2_article`
--
ALTER TABLE `task2_article`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task2_content`
--
ALTER TABLE `task2_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_content_article` (`article_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `task2_article`
--
ALTER TABLE `task2_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `task2_content`
--
ALTER TABLE `task2_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `task2_content`
--
ALTER TABLE `task2_content`
  ADD CONSTRAINT `fk_content_article` FOREIGN KEY (`article_id`) REFERENCES `task2_article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
