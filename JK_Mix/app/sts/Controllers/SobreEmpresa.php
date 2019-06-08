<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of SobreEmpresa
 *
 * @copyright (c) year, Genilson Reis
 */
class SobreEmpresa {

    private $Dados;

    public function indexCarregar() {
        $listarSobEmp = new \Sts\Models\StsSobEmp();
        $this->Dados['sts_sobre_empresa'] = $listarSobEmp->listarSobEmp();
        
        $carregarView = new \Core\ConfigView('sts/Views/sobEmpresa/sobEmpresa', $this->Dados);
        $carregarView->renderizar();
    }

}
