<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of Home
 *
 * @copyright (c) year, Genilson Reis
 */
class Home {
    private $Dados;

    public function indexCarregar() {

        $listar_car = new \Sts\Models\StsCarousel();
        $this->Dados['sts_carousels']= $listar_car->listar();
        
        $listar_servico = new \Sts\Models\StsServico();
        $this->Dados['sts_servicos']= $listar_servico->listar();
        
        $listar_video = new \Sts\Models\StsVideo();
        $this->Dados['sts_video']= $listar_video->listar();
        
        $listar_art_home = new \Sts\Models\stsArtHome;
        $this->Dados['sts_artigos']= $listar_art_home->listarArtHome();
        
        $carregarView = new \Core\ConfigView("sts/Views/home/home", $this->Dados);
        $carregarView->renderizar();
    }

}
