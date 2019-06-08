<?php

namespace Sts\Models;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of StsHome
 *
 * @copyright (c) year, Genilson Reis
 */
class StsHome {

    private $Resultado;

    public function index() {
        //echo "Listar Dados <br>";
        //$conexao = new \Sts\Models\helper\StsConn();
        //$conexao->getConn();
        $listar = new \Sts\Models\helper\StsRead();
        
        
        //EXEREAD - RETORNA TODOS OS DADOS DO BANCO DE DADOS  
        $listar->exeRead('sts_carousels', 'WHERE adms_situacao_id_carousel =:adms_situacao_id_carousel LIMIT :limit', 'adms_situacao_id_carousel=1&limit=4');
        
        
        //FULLREAD - LIMITA APENAS O QUE QUERO TRAZER DO BANCO DE DADOS
       // $listar->fullRead("SELECT nome_carousel, link_carousel FROM sts_carousels WHERE adms_situacao_id_carousel =:adms_situacao_id_carousel LIMIT :limit", 'adms_situacao_id_carousel=1&limit=4');
        
        $this->Resultado['sts_carousels'] = $listar->getResultado();
        return $this->Resultado['sts_carousels'];
    }

}
