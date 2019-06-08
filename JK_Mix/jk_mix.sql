-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 04-Jun-2019 às 19:43
-- Versão do servidor: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jk_mix`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_cors`
--

DROP TABLE IF EXISTS `adms_cors`;
CREATE TABLE IF NOT EXISTS `adms_cors` (
  `id_cor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cor` varchar(40) NOT NULL,
  `cor_cor` varchar(40) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_cor`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adms_cors`
--

INSERT INTO `adms_cors` (`id_cor`, `nome_cor`, `cor_cor`, `created`, `modified`) VALUES
(1, 'Azul', 'primary', '2019-05-30 00:00:00', NULL),
(2, 'Cinza', 'secondary', '2019-05-30 00:00:00', NULL),
(3, 'Verde', 'success', '2019-05-30 00:00:00', NULL),
(4, 'Vermelho', 'danger', '2019-05-30 00:00:00', NULL),
(5, 'Amarelo', 'warning', '2019-05-30 00:00:00', NULL),
(6, 'Azul Claro', 'info', '2019-05-30 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_robots`
--

DROP TABLE IF EXISTS `adms_robots`;
CREATE TABLE IF NOT EXISTS `adms_robots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `adms_robots`
--

INSERT INTO `adms_robots` (`id`, `nome`, `tipo`, `created`, `modified`) VALUES
(1, 'Indexar a pÃ¡gina e seguir os links', 'index,follow', '2018-02-23 00:00:00', NULL),
(2, 'NÃ£o indexar a pÃ¡gina mas seguir os links', 'noindex,follow', '2018-02-23 00:00:00', NULL),
(3, 'Indexar a pÃ¡gina mas nÃ£o seguir os links', 'index,nofollow', '2018-02-23 00:00:00', NULL),
(4, 'NÃ£o indexar a pÃ¡gina e nem seguir os links', 'noindex,nofollow', '2018-02-23 00:00:00', NULL),
(5, 'NÃ£o exibir a versÃ£o em cache da pÃ¡gina', 'noarchive', '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_sits`
--

DROP TABLE IF EXISTS `adms_sits`;
CREATE TABLE IF NOT EXISTS `adms_sits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `adms_cor_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `adms_sits`
--

INSERT INTO `adms_sits` (`id`, `nome`, `adms_cor_id`, `created`, `modified`) VALUES
(1, 'Ativo', '3', '2018-03-23 00:00:00', NULL),
(2, 'Inativo', '4', '2018-03-23 00:00:00', NULL),
(3, 'Analise', '1', '2018-03-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adms_usuarios`
--

DROP TABLE IF EXISTS `adms_usuarios`;
CREATE TABLE IF NOT EXISTS `adms_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `apelido` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `recuperar_senha` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chave_descadastro` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conf_email` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(220) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adms_niveis_acesso_id` int(11) NOT NULL,
  `adms_sits_usuario_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `adms_usuarios`
--

INSERT INTO `adms_usuarios` (`id`, `nome`, `apelido`, `email`, `usuario`, `senha`, `recuperar_senha`, `chave_descadastro`, `conf_email`, `imagem`, `adms_niveis_acesso_id`, `adms_sits_usuario_id`, `created`, `modified`) VALUES
(1, 'Cesar N. Szpak', 'Cesar', 'cesar@celke.com.br', 'cesar@celke.com.br', '$2y$10$nA6dx3mjOygZE5Xt5iwt5eRebzXfskbXcwUam8yLCECj7NrjXr12q', 'bbe0d9883f909fb95ca46e8396fd7194', NULL, NULL, 'logo-celke.jpg', 1, 1, '2018-03-23 00:00:00', '2018-05-04 13:40:10'),
(2, 'Jessica', 'Jessica', 'jessica@celke.com.br', 'jessica@celke.com.br', '$2y$10$UDdxOqZghWMPVQQ094COZeNdT/VFBJXqwFfAyRNLZnycaXhY8yK9u', NULL, NULL, NULL, 'celke.jpg', 3, 1, '2018-03-23 00:00:00', NULL),
(3, 'Kelly', 'Kelly', 'kelly@celke.com.br', 'kelly@celke.com.br', '$2y$10$mF6VRdX9nhSW6f0zB6akCONsSBoUnEFBU61BMxUDRVBirP02xVK46', NULL, NULL, NULL, 'logo-celke.jpg', 2, 1, '2018-03-23 00:00:00', '2018-04-22 14:43:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_artigos`
--

DROP TABLE IF EXISTS `sts_artigos`;
CREATE TABLE IF NOT EXISTS `sts_artigos` (
  `id_artigos` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_artigos` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `descricao_artigos` text COLLATE utf8_unicode_ci NOT NULL,
  `conteudo_artigos` text COLLATE utf8_unicode_ci NOT NULL,
  `imagem_artigos` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `slug_artigos` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `keywords_artigos` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `description_artigos` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `author_artigos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `resumo_publico_artigos` text COLLATE utf8_unicode_ci NOT NULL,
  `qnt_acesso_artigos` int(11) NOT NULL DEFAULT '0',
  `adms_robot_id_artigos` int(11) NOT NULL,
  `adms_usuario_id_artigos` int(11) NOT NULL,
  `adms_sit_id_artigos` int(11) NOT NULL,
  `sts_tps_artigo_id_artigos` int(11) NOT NULL,
  `sts_cats_artigo_id_artigos` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_artigos`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `sts_artigos`
--

INSERT INTO `sts_artigos` (`id_artigos`, `titulo_artigos`, `descricao_artigos`, `conteudo_artigos`, `imagem_artigos`, `slug_artigos`, `keywords_artigos`, `description_artigos`, `author_artigos`, `resumo_publico_artigos`, `qnt_acesso_artigos`, `adms_robot_id_artigos`, `adms_usuario_id_artigos`, `adms_sit_id_artigos`, `sts_tps_artigo_id_artigos`, `sts_cats_artigo_id_artigos`, `created`, `modified`) VALUES
(1, 'Sample blog post 1', 'Donec 1 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-1', 'artigo, artigo 1, ', 'Descricao do artigo um para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 6, 1, 1, 1, 1, 1, '2018-02-18 00:00:00', NULL),
(2, 'Sample blog post 2', 'Donec 2 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-2', 'artigo, artigo 2, ', 'Descricao do artigo dois para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 4, 1, 1, 1, 1, 1, '2018-02-19 00:00:00', NULL),
(3, 'Sample blog post 3', 'Donec 3 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-3', 'artigo, artigo 3 ', 'Descricao do artigo tres para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 14, 1, 1, 1, 1, 1, '2018-02-20 00:00:00', NULL),
(4, 'Sample blog post 4 titulo', 'Donec 4 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>4This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n								<hr>\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\n								<blockquote>\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\n								</blockquote>\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\n								<h2>Heading</h2>\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\n								<pre><code>Example code block</code></pre>\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\n								<h3>Sub-heading</h3>\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\n								<ul>\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\n								</ul>\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\n								<ol>\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\n								</ol>\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-4', 'artigo, artigo 4 ', 'Descricao do artigo quatro para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 13, 1, 1, 1, 1, 1, '2018-02-21 00:00:00', NULL),
(5, 'Sample blog post 5', 'Donec 5 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-5', 'artigo, artigo 5', 'Descricao do artigo cinco para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 1, 1, 1, 1, 1, 1, '2018-02-22 00:00:00', NULL),
(6, 'Sample blog post 6', 'Donec 6 ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\r\n								<hr>\r\n								<p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>\r\n								<blockquote>\r\n								  <p>Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis</strong> ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>\r\n								</blockquote>\r\n								<p>Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>\r\n								<h2>Heading</h2>\r\n								<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n								<pre><code>Example code block</code></pre>\r\n								<p>Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.</p>\r\n								<h3>Sub-heading</h3>\r\n								<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>\r\n								<ul>\r\n									<li>Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</li>\r\n									<li>Donec id elit non mi porta gravida at eget metus.</li>\r\n									<li>Nulla vitae elit libero, a pharetra augue.</li>\r\n								</ul>\r\n								<p>Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.</p>\r\n								<ol>\r\n									<li>Vestibulum id ligula porta felis euismod semper.</li>\r\n									<li>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</li>\r\n									<li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>\r\n								</ol>\r\n								<p>Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.</p>', 'artigo.jpg', 'sample-blog-post-6', 'artigo, artigo 6', 'Descricao do artigo seis para seo', 'Celke', '<p>This blog post shows a few different types of content that\'s supported and styled with Bootstrap. Basic typography, images, and code are all supported.</p>\n                            <hr>\n                            <p>Cum sociis natoque penatibus et magnis <a href=\"#\">dis parturient montes</a>, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p>', 20, 4, 1, 1, 1, 1, '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_carousels`
--

DROP TABLE IF EXISTS `sts_carousels`;
CREATE TABLE IF NOT EXISTS `sts_carousels` (
  `id_carousel` int(11) NOT NULL AUTO_INCREMENT,
  `nome_carousel` varchar(220) NOT NULL,
  `imagem_carousel` varchar(220) NOT NULL,
  `titulo_carousel` varchar(220) DEFAULT NULL,
  `descricao_carousel` varchar(220) DEFAULT NULL,
  `posicao_text_carousel` varchar(40) DEFAULT NULL,
  `titulo_botao_carousel` varchar(40) DEFAULT NULL,
  `link_carousel` varchar(220) DEFAULT NULL,
  `ordem_carousel` int(11) NOT NULL,
  `adms_cor_id` int(11) DEFAULT NULL,
  `adms_situacao_id_carousel` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_carousel`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sts_carousels`
--

INSERT INTO `sts_carousels` (`id_carousel`, `nome_carousel`, `imagem_carousel`, `titulo_carousel`, `descricao_carousel`, `posicao_text_carousel`, `titulo_botao_carousel`, `link_carousel`, `ordem_carousel`, `adms_cor_id`, `adms_situacao_id_carousel`, `created`, `modified`) VALUES
(1, 'Primeiro Exemplo', 'ice-Banner-1.jpg', 'Exemplo 1', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-left', 'Mais detalhes', 'https://celke.com.br/', 1, 1, 1, '2018-05-23 00:00:00', NULL),
(2, 'Segundo Exemplo', 'ice-Banner-2.jpg', 'Exemplo 2', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-center', 'Inscrever-se', 'https://celke.com.br/', 2, 5, 1, '2018-05-23 00:00:00', NULL),
(3, 'Terceiro Exemplo', 'ice-Banner-3.jpg', 'Exemplo 3', 'Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', 'text-right', 'Comprar', 'https://celke.com.br/\r\n', 3, 4, 1, '2018-05-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_cats_artigos`
--

DROP TABLE IF EXISTS `sts_cats_artigos`;
CREATE TABLE IF NOT EXISTS `sts_cats_artigos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `sts_situacoe_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `sts_cats_artigos`
--

INSERT INTO `sts_cats_artigos` (`id`, `nome`, `sts_situacoe_id`, `created`, `modified`) VALUES
(1, 'PHP', 1, '2018-02-23 00:00:00', NULL),
(2, 'Bootstrap', 1, '2018-02-23 00:00:00', NULL),
(3, 'MySQLi', 1, '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_contatos`
--

DROP TABLE IF EXISTS `sts_contatos`;
CREATE TABLE IF NOT EXISTS `sts_contatos` (
  `id_contatos` int(11) NOT NULL AUTO_INCREMENT,
  `nome_contatos` varchar(220) NOT NULL,
  `email_contatos` varchar(220) NOT NULL,
  `assunto_contatos` varchar(220) NOT NULL,
  `mensagem_contatos` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_contatos`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sts_contatos`
--

INSERT INTO `sts_contatos` (`id_contatos`, `nome_contatos`, `email_contatos`, `assunto_contatos`, `mensagem_contatos`, `created`, `modified`) VALUES
(1, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:37:40', NULL),
(2, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:37:42', NULL),
(3, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:44:04', NULL),
(4, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:44:07', NULL),
(5, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:53:28', NULL),
(6, 'Genilson', 'jk_mix_sorveteria@hotmail.com', 'Teste1', 'Msg Teste 1', '2019-06-04 12:54:17', NULL),
(7, 'Genilson', 'teste@teste.com', 'Testando Funcionamento', 'Teste', '2019-06-04 13:20:50', NULL),
(8, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(9, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(10, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(11, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(12, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(13, 'teste teste', 'teste@teste.com.br', 'testando Contato', 'Contato Teste', '2019-06-04 13:25:26', NULL),
(14, 'test', 'teste@teste.com.br', 'teste', 'teste', '2019-06-04 14:07:36', NULL),
(15, 'Geh', 'geh@teste.com', 'Teste Geh', 'Teste 20', '2019-06-04 15:09:29', NULL),
(16, 'Geh', 'geh@teste.com', 'Teste Geh', 'Teste 20', '2019-06-04 15:09:29', NULL),
(17, 'Danilo', 'geh@celebrim.com.br', 'teste', 'teste Final', '2019-06-04 15:13:39', NULL),
(18, 'Danilo', 'geh@celebrim.com.br', 'teste', 'teste Final', '2019-06-04 15:13:39', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_servicos`
--

DROP TABLE IF EXISTS `sts_servicos`;
CREATE TABLE IF NOT EXISTS `sts_servicos` (
  `id_servico` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_servico` varchar(250) NOT NULL,
  `icone_um_servico` varchar(40) NOT NULL,
  `nome_um_servico` varchar(120) NOT NULL,
  `descricao_um_servico` varchar(220) NOT NULL,
  `icone_dois_servico` varchar(40) NOT NULL,
  `nome_dois_servico` varchar(120) NOT NULL,
  `descricao_dois_servico` varchar(220) NOT NULL,
  `icone_tres_servico` varchar(40) NOT NULL,
  `nome_tres_servico` varchar(120) NOT NULL,
  `descricao_tres_servico` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_servico`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sts_servicos`
--

INSERT INTO `sts_servicos` (`id_servico`, `titulo_servico`, `icone_um_servico`, `nome_um_servico`, `descricao_um_servico`, `icone_dois_servico`, `nome_dois_servico`, `descricao_dois_servico`, `icone_tres_servico`, `nome_tres_servico`, `descricao_tres_servico`, `created`, `modified`) VALUES
(1, 'PromoÃ§Ã£o', 'ion-android-star', 'PromoÃ§Ã£o 1', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'ion-android-star', 'PromoÃ§Ã£o 2', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', 'ion-android-star', 'PromoÃ§Ã£o 3', 'This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.', '2019-05-30 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_sobre_empresa`
--

DROP TABLE IF EXISTS `sts_sobre_empresa`;
CREATE TABLE IF NOT EXISTS `sts_sobre_empresa` (
  `id_sobre_emp` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_sobre_emp` varchar(220) NOT NULL,
  `descricao_sobre_emp` text NOT NULL,
  `imagem_sobre_emp` varchar(220) NOT NULL,
  `ordem_sobre_emp` int(11) NOT NULL,
  `adms_sit_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modifoed` datetime DEFAULT NULL,
  PRIMARY KEY (`id_sobre_emp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sts_sobre_empresa`
--

INSERT INTO `sts_sobre_empresa` (`id_sobre_emp`, `titulo_sobre_emp`, `descricao_sobre_emp`, `imagem_sobre_emp`, `ordem_sobre_emp`, `adms_sit_id`, `created`, `modifoed`) VALUES
(1, 'Sobre Empresa Um', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'sobre_empresa.jpg', 1, 1, '2019-06-03 00:00:00', NULL),
(2, 'Sobre Empresa Dois', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'sobre_empresa_2.jpg', 2, 1, '2019-06-03 00:00:00', NULL),
(3, 'Sobre Empresa Tres', 'Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.', 'sobre_empresa.jpg', 3, 1, '2019-06-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_tps_artigos`
--

DROP TABLE IF EXISTS `sts_tps_artigos`;
CREATE TABLE IF NOT EXISTS `sts_tps_artigos` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `sts_tps_artigos`
--

INSERT INTO `sts_tps_artigos` (`id`, `nome`, `created`, `modified`) VALUES
(1, 'Publico', '2018-02-23 00:00:00', NULL),
(2, 'Privado', '2018-02-23 00:00:00', NULL),
(3, 'Privado com resumo publico', '2018-02-23 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sts_video`
--

DROP TABLE IF EXISTS `sts_video`;
CREATE TABLE IF NOT EXISTS `sts_video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_video` varchar(120) NOT NULL,
  `descricao_video` varchar(220) NOT NULL,
  `video_video` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sts_video`
--

INSERT INTO `sts_video` (`id_video`, `titulo_video`, `descricao_video`, `video_video`, `created`, `modified`) VALUES
(1, 'VÃ­deo', 'Video de Demonstracao', 'Ice_Cream.mp4', '2019-05-31 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nome_user` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `usuario_user` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `senha_user` varchar(220) COLLATE utf8_unicode_ci NOT NULL,
  `foto_user` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nome_user`, `email_user`, `usuario_user`, `senha_user`, `foto_user`, `created`, `modified`) VALUES
(1, 'Genilson Reis', 'teste@teste.com', 'GehReis', '123', NULL, '2019-05-28 20:17:04', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
