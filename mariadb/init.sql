create database dj default character set utf8 collate utf8_general_ci;
use dj;

-- fill your password 
create user 'djyurika'@'%' identified by 'your_db_password';
grant all privileges on dj.* to 'djyurika'@'%';
flush privileges;

DROP TABLE IF EXISTS `playlist`;

CREATE TABLE `playlist` (
  `id` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `reviewed` BIT NOT NULL,
  `play_count` INT NOT NULL,
  `pick_count` INT NOT NULL,
  `created_at` DATETIME NOT NULL,
  `last_played_at` DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;