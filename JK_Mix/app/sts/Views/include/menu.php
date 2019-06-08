
<header>
    <nav class = "navbar navbar-expand-md navbar-dark fixed-top menu">
        <div class = " container">
            <a class = "navbar-brand" href = "<?php echo URL;?>">JK MIX</a>
            <!--Button para dispositivo móvel-->
            <button class = "navbar-toggler" type = "button" data-toggle = "collapse" data-target = "#navbarCollapse" aria-controls = "navbarCollapse" aria-expanded = "false" aria-label = "Toggle navigation">
                <span class = "navbar-toggler-icon"></span>
            </button>
            <!--Itens do Menu-->
            <div class = "collapse navbar-collapse" id = "navbarCollapse">
                <ul class = "navbar-nav ml-auto">
                    <li class = "nav-item menu">
                        <a class = "nav-link" href= "<?php echo URL;?>">Home</a>
                    </li>
                    <li class = "nav-item menu">
                        <a class = "nav-link" href = "<?php echo URL.'sobre_empresa';?>">Sobre</a>
                    </li>
                    <li class = "nav-item menu">
                        <a class = "nav-link" href = "<?php echo URL.'promocao';?>">Promoção</a>
                    </li>
                    <li class = "nav-item menu">
                        <a class = "nav-link" href = "<?php echo URL.'cardapio';?>">Cardápio</a>
                    </li>
                    <li class = "nav-item menu">
                        <a class = "nav-link" href = "<?php echo URL.'blog';?>">Blog</a>
                    </li>
                    <li class = "nav-item menu">
                        <a class = "nav-link" href = "<?php echo URL.'contato';?>">Contato</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
