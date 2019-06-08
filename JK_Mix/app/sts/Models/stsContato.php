<?php

namespace Sts\Models;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of StsRead
 *
 * @copyright (c) year, Genilson Reis
 * 
 */
class stsContato {

    private $Resultado;
    private $Dados;
    
    function getResultado() {
        return $this->Resultado;
    }

    public function cadContato(array $Dados) {
        $this->Dados = $Dados;
        $this->validarDados();
        if ($this->Resultado) {
            $this->inserir();
        }
    }

    private function validarDados() {

        $this->Dados = array_map('strip_tags', $this->Dados);
        $this->Dados = array_map('trim', $this->Dados);
        if (in_array('', $this->Dados)) {
            $_SESSION['msg'] = "<div class='alert alert-danger'>Erro: Para enviar a mensagem preencha todos os campos!</div>";
            $this->Resultado = false;
        } else {
            if (filter_var($this->Dados['email_contatos'], FILTER_VALIDATE_EMAIL)) {
                $this->Resultado = true;
            } else {
                $_SESSION['msg'] = "<div class='alert alert-danger'>Erro: E-mail inválido!</div>";
            $this->Resultado = false;
            }
        }
    }

    private function inserir() {

        $cadContato = new \Sts\Models\helper\stsCreate();
        $cadContato->exeCreate('sts_contatos', $this->Dados);

        // SE FOR VERDADEIRO, O CONTATO SERÁ INSERIDO NO BANCO DE DADOS;
        if ($cadContato->getResultado()) {
            $_SESSION['msg'] = "<div class='alert alert-success'>Mensagem enviada com Sucesso !</div>";
            $this->Resultado = true;
        } else {
            $_SESSION['msg'] = "<div class='alert alert-danger'>Mensagem não foi enviada !</div>";
            $this->Resultado = false;
        }
    }

}
