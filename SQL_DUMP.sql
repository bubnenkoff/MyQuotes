-- --------------------------------------------------------
-- Хост:                         194.87.235.42
-- Версия сервера:               10.2.2-MariaDB - mariadb.org binary distribution
-- ОС Сервера:                   Win64
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных myquotes
CREATE DATABASE IF NOT EXISTS `myquotes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myquotes`;


-- Дамп структуры для таблица myquotes.quotes
CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote` text DEFAULT NULL,
  UNIQUE KEY `id_un` (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы myquotes.quotes: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` (`id`, `quote`) VALUES
	(1, 'Успех – это способность шагать от одной неудачи к другой, не теряя энтузиазма.'),
	(2, 'Умный человек не делает сам все ошибки – он дает шанс и другим.'),
	(3, 'Лучший аргумент против демократии – пятиминутная беседа со средним избирателем.'),
	(4, 'Любой кризис – это новые возможности.'),
	(5, 'Глуп тот человек, который никогда не меняет своего мнения.'),
	(6, 'Врождённый порок капитализма – неравное распределение благ; врождённое достоинство социализма — равное распределение нищеты.'),
	(7, 'Власть – это наркотик. Кто попробовал его хоть раз — отравлен ею навсегда.'),
	(8, 'Не желайте здоровья и богатства, а желайте удачи, ибо на Титанике все были богаты и здоровы, а удачливыми оказались единицы!'),
	(9, 'Мои вкусы просты. Я легко удовлетворяюсь наилучшим.'),
	(10, 'Хотите, чтобы в споре ваше слово было последним? Скажите оппоненту «Пожалуй, Вы правы».'),
	(11, 'Большое преимущество получает тот, кто достаточно рано сделал ошибки, на которых можно учиться.'),
	(12, 'Война – это когда за интересы других гибнут совершенно безвинные люди.'),
	(13, 'Величайший урок жизни в том, что и дураки бывают правы.'),
	(14, 'Гораздо лучше подкупить человека, чем убить его, да и быть подкупленным куда лучше, чем убитым.'),
	(15, 'Мы живем в эпоху больших событий и маленьких людей.');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;


-- Дамп структуры для таблица myquotes.users
CREATE TABLE IF NOT EXISTS `users` (
  `login` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы myquotes.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`login`, `password`) VALUES
	('user', '123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
