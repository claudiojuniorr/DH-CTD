function microondas (opcao, tempo){
    pipocaTempo = 10;
    macarraoTempo = 8;
    carneTempo = 15;
    feijaoTempo = 12;
    brigadeiroTempo = 8;

    console.log(`
    1 - Pipoca – 10 segundos (padrão)
    2 - Macarrão – 8 segundos (padrão)
    3 - Carne – 15 segundos (padrão)
    4 - Feijão – 12 segundos (padrão)
    5 - Brigadeiro – 8 segundos (padrão)
    `);

    if (opcao === 1 && tempo >= pipocaTempo && tempo < pipocaTempo*2 || 
        opcao === 2 && tempo >= macarraoTempo && tempo < macarraoTempo*2 ||
        opcao === 3 && tempo >= carneTempo && tempo < carneTempo*2 ||
        opcao === 4 && tempo >= feijaoTempo && tempo < feijaoTempo*2 ||
        opcao === 5 && tempo >= brigadeiroTempo && tempo < brigadeiroTempo*2
        ){
        console.log(`Prato pronto, bom apetite!!!`);
    }else if (
        opcao === 1 && tempo >= pipocaTempo*2 && tempo < pipocaTempo*3 ||
        opcao === 2 && tempo >= macarraoTempo*2 && tempo < macarraoTempo*3 ||
        opcao === 3 && tempo >= carneTempo*2 && tempo < carneTempo*3 ||
        opcao === 4 && tempo >= feijaoTempo*2 && tempo < feijaoTempo*3 ||
        opcao === 5 && tempo >= brigadeiroTempo*2 && tempo < brigadeiroTempo*3
        ){
        console.log(`A comida queimou`);
    }else if (
        opcao === 1 && tempo >= pipocaTempo*3 ||
        opcao === 2 && tempo >= macarraoTempo*3 ||
        opcao === 3 && tempo >= carneTempo*3 ||
        opcao === 4 && tempo >= feijaoTempo*3 ||
        opcao === 5 && tempo >= brigadeiroTempo*3
        ){
        console.log(`Kabumm`);
    }else if (
        opcao === 1 && tempo < pipocaTempo ||
        opcao === 2 && tempo < macarraoTempo ||
        opcao === 3 && tempo < carneTempo ||
        opcao === 4 && tempo < feijaoTempo ||
        opcao === 5 && tempo < brigadeiroTempo
        ){
        console.log(`Tempo insuficiente`);
    }else{
        console.log(`Prato inexistente`)
    }
}

microondas (2, 8)