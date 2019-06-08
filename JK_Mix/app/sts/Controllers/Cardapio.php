<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of Cardapio
 *
 * @copyright (c) year, Genilson Reis
 */
class Cardapio {

    public function indexCarregar() {
        echo 'Página Cardapio <br>';
    }

}
