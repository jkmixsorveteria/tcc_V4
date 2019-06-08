<?php

namespace Core;

/**
 * Description of ConfigView
 *
 * @copyright (c) year, Genilson Reis
 */

class ConfigView {

    private $Nome;
    private $Dados;

    public function __construct($Nome, array $Dados = null) {
        $this->Nome = (String) $Nome;
        $this->Dados = $Dados;
    }

    public function renderizar() {

        if (file_exists('app/' . $this->Nome . '.php')) {
            include 'app/sts/Views/include/cabecalho.php';
            include 'app/sts/Views/include/menu.php';
            include 'app/' . $this->Nome . '.php';
            include 'app/sts/Views/include/rodape.php';
        } else {
            echo "Erro ao Carregar a Pagina: {$this->Nome}";
        }
    }

}
