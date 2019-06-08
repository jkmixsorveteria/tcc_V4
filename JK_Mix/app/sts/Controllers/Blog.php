<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of Blog
 *
 * @copyright (c) year, Genilson Reis
 */
class Blog {

    public function indexCarregar() {
        echo 'Página Blog <br>';
    }

}
