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
class StsCarousel {

    private $Resultado;

    public function listar() {
        //echo "Listar Dados <br>";
        //$conexao = new \Sts\Models\helper\StsConn();
        //$conexao->getConn();
        $listar = new \Sts\Models\helper\StsRead();
        
        
        //EXEREAD - RETORNA TODOS OS DADOS DO BANCO DE DADOS  
        //$listar->exeRead('sts_carousels', 'WHERE adms_situacao_id_carousel =:adms_situacao_id_carousel LIMIT :limit', 'adms_situacao_id_carousel=1&limit=4');
        
        
        //FULLREAD - LIMITA APENAS O QUE QUERO TRAZER DO BANCO DE DADOS
            $listar->fullRead("SELECT car.id_carousel, car.nome_carousel, car.imagem_carousel, car.titulo_carousel, car.descricao_carousel, car.posicao_text_carousel, car.titulo_botao_carousel, car.link_carousel,
                    cores.cor_cor
                    FROM sts_carousels car
                    INNER JOIN adms_cors cores ON cores.id_cor = car.adms_cor_id
                    WHERE adms_situacao_id_carousel =:adms_situacao_id_carousel ORDER BY ordem_carousel ASC LIMIT :limit", 'adms_situacao_id_carousel=1&limit=4');
        
        $this->Resultado['sts_carousels'] = $listar->getResultado();
        return $this->Resultado['sts_carousels'];
    }

}

