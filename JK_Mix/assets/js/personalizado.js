// ANIMAÇÃO CARD

        var slideUp = {
            distance: '50%',
            origin: 'left',
            duration: 2500
        };

        var slideUp2 = {
            distance: '100%',
            origin: 'bottom',
            duration: 2500
        };

        var slideUp3 = {
            distance: '50%',
            origin: 'rigth',
            duration: 2500
        };

        ScrollReveal().reveal('.card-um-left', slideUp);

        ScrollReveal().reveal('.card-dois-bottom', slideUp2);

        ScrollReveal().reveal('.card-tres-rigth', slideUp3);
        
       // ANIMAÇÃO SOBRE EMPRESA 
        
            var slideUp = {
            distance: '50%',
            origin: 'rigth',
            duration: 2500,
            reset: true
        };

        var slideUp2 = {
            distance: '100%',
            origin: 'left',
            duration: 2500,
            reset: true
        };
        //TEXTO E IMAGEM - 1

        ScrollReveal().reveal('.sobre-emp-text', slideUp);
        ScrollReveal().reveal('.sobre-emp-img', slideUp2);

        //TEXTO E IMAGEM - 2

        ScrollReveal().reveal('.sobre-emp-text2', slideUp);
        ScrollReveal().reveal('.sobre-emp-img2', slideUp2);