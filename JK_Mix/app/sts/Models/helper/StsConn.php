<?php

namespace Sts\Models\helper;

use PDO;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of StsConn
 *
 * @copyright (c) year, Genilson Reis
 */
class StsConn {

    public static $Host = HOST;
    public static $User = USER;
    public static $Pass = PASS;
    public static $DBName = DBNAME;
    private static $Connect = null;

    private static function conectar() {
        try {
            if (self::$Connect == null) {
                self::$Connect = new PDO('mysql:host=' . self::$Host . ';dbname=' . self::$DBName, self::$User, self::$Pass);
            }
        } catch (Exception $exc) {
            echo 'Mensagem: ' . $exc->getMessage();
            die;
        }

        return self::$Connect;
    }

    public function getConn() {
        return self::conectar();
    }

}
