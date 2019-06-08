<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of Promocao
 *
 * @copyright (c) year, Genilson Reis
 */
class Promocao {

    public function indexCarregar() {
        echo 'Página Promoção <br>';
    }

}
