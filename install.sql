--
--  Modify the lines according to what you want, then paste the whole
--  thing in your mysql server as the user you want your site to use.
--  This will create an user with the login admin and admin password.
--  Please change it before putting your site online.

--
--  Change dbname to the name you want to use for you database.
--

CREATE DATABASE IF NOT EXISTS dbname;
USE dbname;

-- --------------------------------------------------------

--
-- Creation of the article table
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `poster_id` int(10) unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Creation of the users table.
--

CREATE TABLE IF NOT EXISTS users (
  `id` int(10) unsigned NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `site_infos` (
  `title` varchar(255) NOT NULL DEFAULT 'Your awesome site',
  `admin_page` varchar(255) NOT NULL DEFAULT 'admin.php',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `site_infos`
--

INSERT INTO `site_infos` (`title`, `admin_page`, `description`) VALUES
('Your awesome site', 'admin.php', 'Here goes your sites description.');



ALTER TABLE articles
  ADD PRIMARY KEY (id);
ALTER TABLE users
  ADD PRIMARY KEY (id);
ALTER TABLE articles
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE users
  MODIFY id int(10) unsigned NOT NULL AUTO_INCREMENT;

INSERT INTO `users`
(  `role`,
  `username`,
  `password`,
  `email`)
VALUES ('1',
  'admin',
  '6a4e012bd9583858a5a6fa15f58bd86a25af266d3a4344f1ec2018b778f29ba83be86eb45e6dc204e11276f4a99eff4e2144fbe15e756c2c88e999649aae7d94',
  'admin@admin.com');
