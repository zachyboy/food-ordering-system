SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `items` (`id`, `name`, `price`, `deleted`) VALUES
(1, 'Item 1', 25, 1),
(2, 'Item 2', 45, 0),
(3, 'Item 3', 20, 0),
(4, 'Item 4', 15, 1),
(5, 'Item 5', 20, 0);


ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);
