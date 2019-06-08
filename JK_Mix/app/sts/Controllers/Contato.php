<?php

namespace Sts\Controllers;

if (!defined('URL')) {
    header("Location: /");
    exit();
}

/**
 * Description of Contato
 *
 * @copyright (c) year, Genilson Reis
 */
class Contato {

    private $Dados;

    public function indexCarregar() {

        //$this->Dados = ['nome_contatos' => 'Genilson', 'email_contatos' => 'jk_mix_sorveteria@hotmail.com', 'assunto_contatos' => 'Teste1', 'mensagem_contatos' => 'Msg Teste 1', 'created' => date('Y-m-d H:i:s')];

        $this->Dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
        //echo "<br><br><br>";
        //var_dump($this->Dados);
        if (!empty($this->Dados['CadMsgContato'])) {
            unset($this->Dados['CadMsgContato']);
            $cadContato = new \Sts\Models\stsContato();
            $cadContato->cadContato($this->Dados);
            if($cadContato->getResultado()){
                $this->Dados['form'] = null;
            } else {
                $this->Dados['form'] = $this->Dados;
            }        
        }

        $carregarView = new \Core\ConfigView('sts/Views/contato/contato', $this->Dados);
        $carregarView->renderizar();
    }

}
