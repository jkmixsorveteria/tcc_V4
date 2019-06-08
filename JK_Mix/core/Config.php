<?php
session_start();
ob_start();

define("URL", 'http://localhost/JK_Mix/');
define("URLADM", 'http://localhost/JK_Mix/adm/');

define('CONTROLLER', 'Home');
define('METODO', 'index');

//CREDENCIAIS DE ACESSO AO BD
define ('HOST', 'localhost');
define('USER', 'root');     
define('PASS', '');
define('DBNAME', 'jk_mix');