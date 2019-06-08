<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}
?>


<main role="main">

    <!--JUMBOTRON CONTATO-->
    <div class="jumbotron contato">
        <div class="container">
            <h2 class="display-4 text-center" style="margin-bottom: 40px;">Contato</h2>
            <?php 
            if(isset($_SESSION['msg'])){
                echo $_SESSION['msg'];
                unset($_SESSION['msg']);
            }
            if (isset($this->Dados['form'])){
                $valorForm = $this->Dados['form'];
            }
            ?>

            <form method="POST" action="">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Nome</label>
                        <input name="nome_contatos" type="text" class="form-control" placeholder="Nome Completo" value="<?php if(isset($valorForm['nome_contatos'])){echo $valorForm['nome_contatos'];} ?>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Email</label>
                        <input name="email_contatos" type="email" class="form-control" placeholder="Email" value="<?php if(isset($valorForm['email_contatos'])){echo $valorForm['email_contatos'];} ?>" required>
                    </div>
                </div>
                <div class="form-group">
                    <label>Assunto</label>
                    <input name="assunto_contatos" type="text" class="form-control" placeholder="Assunto da Mensagem" value="<?php if(isset($valorForm['assunto_contatos'])){echo $valorForm['assunto_contatos'];} ?>" required>
                </div>
                <div class="form-group">
                    <label>Mensagem</label>
                    <textarea name="mensagem_contatos" class="form-control" rows="6" style="resize: none" required><?php if(isset($valorForm['mensagem_contatos'])){echo $valorForm['mensagem_contatos'];} ?></textarea>
                </div>
                <input name="created" type="hidden" value="<?php echo date("Y-m-d H:i:s");?>">
                <input name="CadMsgContato"type="submit" class="btn btn-primary" value="Enviar">
            </form>

        </div>
    </div>
</main>