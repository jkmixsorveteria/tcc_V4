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
class stsArtHome {

    private $Resultado;

    public function listarArtHome() {

        $listar = new \Sts\Models\helper\StsRead();
        $listar->fullRead('SELECT id_artigos, titulo_artigos, descricao_artigos, imagem_artigos, slug_artigos 
                FROM sts_artigos
                WHERE adms_sit_id_artigos =:adms_sit_id_artigos
                ORDER BY id_artigos DESC
                LIMIT :limit', 'adms_sit_id_artigos=1&limit=3');
        $this->Resultado = $listar->getResultado();
        return $this->Resultado;
    }

}
