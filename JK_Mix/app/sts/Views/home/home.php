<?php
if (!defined('URL')) {
    header("Location: /");
    exit();
}

//echo "View HOME<br>";
//var_dump($this->Dados['sts_carousels']);
?>

<main role="main">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <?php
            $cont_marc = 0;
            foreach ($this->Dados['sts_carousels'] as $carousel) {
                echo "<li data-target='#myCarousel' data-slide-to='$cont_marc'></li>";
                $cont_marc++;
            }
            ?>
        </ol>
        <div class="carousel-inner">
            <?php
            $cont_slide = 0;

            foreach ($this->Dados['sts_carousels'] as $carousel) {
                extract($carousel);
                ?>
                <div class="carousel-item <?php
                if ($cont_slide == 0) {
                    echo 'active';
                }
                ?>">
                    <img class="first-slide img-fluid" src="<?php echo URL . '/assets/imagens/Banner-Carousel/' . $id_carousel . '/' . $imagem_carousel; ?>" alt="Primeiro Slide">
                    <div class="carousel-caption <?php echo $posicao_text_carousel; ?>">
                        <h1 class="d-none d-md-block"><?php echo $titulo_carousel; ?></h1>
                        <p class="d-none d-md-block">
                            <?php echo $descricao_carousel; ?>
                        </p>
                        <p class="d-none d-md-block">
                            <a class="btn btn-lg btn-<?php echo $cor_cor; ?>" href="<?php echo $link_carousel; ?>" role="button">
                                <?php echo $titulo_botao_carousel; ?>
                            </a>
                        </p>

                    </div>


                </div>
                <?php
                $cont_slide++;
            }
            ?>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
            <span class="sr-only">Anterior</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
            <span class="sr-only">Próximo</span>
        </a>
    </div>


    <!--INÍCIO - IMAGEM DO SORVETE DERRAMANDO - MARROM -->

    <?php extract($this->Dados['sts_servicos'][0]) ?>
    <div class="frame_conteudo_img">
        <div class="row">
            <div class="d-none d-lg-block col-md-12">
                <img class="img-fluid conteudo-img" src="<?php echo URL . '/assets/imagens/AdicionarExtensoesImagens/chocolate_derramando'; ?>" alt="Banner_Chocolate">
            </div>
        </div>
    </div>

    <!--FIM - IMAGEM DO SORVETE DERRAMANDO -->


    <?php extract($this->Dados['sts_servicos'][0]) ?>
    <!--JUMBOTRON SERVICOS-->
    <div class="jumbotron servicos">
        <div class="container">
            <h2 class="display-4 text-center titulo-servico" style="margin-bottom: 70px;"><?php echo $titulo_servico; ?></h2>
            <!-- CARTÕES DE INFORMAÇÕES -->
            <div class="card-deck">
                <div class="card text-center card-personalizado card-um-left">
                    <div class="icon-row tamanho-icone">
                        <span class="step size-48">
                            <i class="icon <?php echo $icone_um_servico; ?>"></i>
                        </span>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_um_servico; ?></h5>
                        <p class="card-text lead">
                            <?php echo $descricao_um_servico; ?>
                        </p>
                    </div>
                </div>
                <div class="card text-center card-personalizado card-dois-bottom">
                    <div class="icon-row tamanho-icone">
                        <span class="step size-48">
                            <i class="icon <?php echo $icone_dois_servico; ?>"></i>
                        </span>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_dois_servico; ?></h5>
                        <p class="card-text lead">
                            <?php echo $descricao_dois_servico; ?>
                        </p>
                    </div>
                </div>
                <div class="card text-center card-personalizado card-tres-rigth">
                    <div class="icon-row tamanho-icone">
                        <span class="step size-48">
                            <i class="icon <?php echo $icone_tres_servico; ?>"></i>
                        </span>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $nome_tres_servico; ?></h5>
                        <p class="card-text lead">
                            <?php echo $descricao_tres_servico; ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--JUMBOTRON BANNER DEMONSTRAÇÃO-->
    <div class="banner-divulgacao">
        <div class="row">
            <div class="col-md-12 imagem">
                <img class="img-fluid conteudo-img" src="<?php echo URL . '/assets/imagens/AdicionarExtensoesImagens/background.png'; ?>" alt="Banner_Chocolate">
            </div>
        </div>
    </div>

    <!--JUMBOTRON BLOG-->
    <!--
    <div class="frame_conteudo_img">
        <div class="row">
            <div class="d-none d-lg-block col-md-12">
                <img class="img-fluid conteudo-img" src="<?php echo URL . '/assets/imagens/AdicionarExtensoesImagens/chocolate_derramando_2'; ?>" alt="Banner_Chocolate">
            </div>
        </div>
    </div>
    -->
    <div class="jumbotron blog-home">
        <div class="container">
            <h2 class="display-4 text-center titulo-blog" style="margin-bottom: 40px;">Últimos Artigos</h2>
            <div class="card-deck">
                <?php
                foreach ($this->Dados['sts_artigos'] as $artigo) {
                    extract($artigo);
                    ?>

                    <div class="card border-dark mb-3">
                        <a href="<?php echo URL . 'artigo/' . $slug_artigos; ?>" alt="<?php echo $titulo_artigos; ?>">
                            <img class="card-img-top" src="<?php echo URL . '/assets/imagens/artigo/' . $id_artigos . '/' . $imagem_artigos; ?>" alt="<?php echo $titulo_artigos; ?>">
                        </a>
                        <div class="card-body">
                            <a href="<?php echo URL . 'artigo/' . $slug_artigos; ?>" alt="<?php echo $titulo_artigos; ?>">
                                <h5 class="card-title text-center"><?php echo $titulo_artigos; ?></h5>
                            </a>
                            <p class="card-text"><?php echo $descricao_artigos; ?></p>
                        </div>
                        <div class="card-footer border-dark text-center">
                            <a href="<a href="<?php echo URL . 'artigo/' . $slug_artigos; ?>" alt="<?php echo $titulo_artigos; ?>" class="btn btn-primary">Mais destalhes</a>
                        </div>
                    </div>

                    <?php
                }
                ?>


            </div>
        </div>
    </div>

    <!--JUMBOTRON VIDEO-->
    <?php extract($this->Dados['sts_video'][0]) ?>
    <div class="jumbotron video">
        <div class="container">
            <h2 class="display-4 text-center titulo-video" style="margin-bottom: 70px;"><?php echo $titulo_video; ?></h2>
            <p class="lead text-center">
                <?php echo $descricao_video; ?>
            </p>
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-8">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="<?php echo URL ?>assets/videos/Ice_Cream.mp4"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>


</main>