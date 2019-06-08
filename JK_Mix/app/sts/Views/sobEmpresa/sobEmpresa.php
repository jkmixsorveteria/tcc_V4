<?php
if (!defined('URL')) {
    header("Location: /");
    exit();
}
?>
<main role="main">

    <!--JUMBOTRON SOBRE EMPRESA -->
    <div class="jumbotron sobre-empresa">
        <div class="container">
            <h2 class="display-4 text-center" style="margin-bottom: 40px;">Sobre a Empresa JK MIX</h2>
            <?php
            $cont_sob_emp = 1;
            foreach ($this->Dados['sts_sobre_empresa'] as $sob_emp) {
                extract($sob_emp);
                if ($cont_sob_emp == 1) {
                    ?>
                    <div class="row featurette">
                        <div class="col-md-7 order-md-2 sobre-emp-text">
                            <h2 class="featurette-heading"><?php echo $titulo_sobre_emp; ?></h2>
                            <p class="lead"><?php echo $descricao_sobre_emp; ?></p>
                        </div>
                        <div class="col-md-5 order-md-1 sobre-emp-img">
                            <img class="featurette-image img-fluid mx-auto" src="<?php echo URL . '/assets/imagens/Sobre-Emp-Imagem/' . $id_sobre_emp . '/' . $imagem_sobre_emp; ?>" alt="<?php echo $titulo_sobre_emp; ?>">
                        </div>
                    </div>
                    <hr class="featurette-divider">
                    <?php
                    $cont_sob_emp = 2;
                } else {
                    ?>
                    <div class="row featurette">
                        <div class="col-md-7 sobre-emp-text2">
                            <h2 class="featurette-heading"><?php echo $titulo_sobre_emp; ?></h2>
                            <p class="lead"><?php echo $descricao_sobre_emp; ?></p>
                        </div>
                        <div class="col-md-5 sobre-emp-img2">
                            <img class="featurette-image img-fluid mx-auto" src="<?php echo URL . '/assets/imagens/Sobre-Emp-Imagem/' . $id_sobre_emp . '/' . $imagem_sobre_emp; ?>" alt="<?php echo $titulo_sobre_emp; ?>">
                        </div>
                    </div>
                    <hr class="featurette-divider">
                    <?php
                    $cont_sob_emp = 1;
                }
            }
            ?>
        </div>
    </div>
</main>
