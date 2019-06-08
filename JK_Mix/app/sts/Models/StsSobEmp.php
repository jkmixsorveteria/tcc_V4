<?php

namespace Sts\Models;

if (!defined('URL')) {
    header("Location: /");
    exit();
}
/**
 * Description of StsSobEmp
 *
 * @copyright (c) year, Genilson Reis
 */
class StsSobEmp {
    
    private $Resultado;
    
    public function listarSobEmp() {
        
        $listar = new \Sts\Models\helper\StsRead();
        $listar->fullRead('SELECT id_sobre_emp, titulo_sobre_emp, descricao_sobre_emp, imagem_sobre_emp
                FROM sts_sobre_empresa
                WHERE adms_sit_id  =:adms_sit_id
                ORDER BY ordem_sobre_emp ASC', 'adms_sit_id=1');
      
        $this->Resultado = $listar->getResultado();
        return $this->Resultado;
    }
}
