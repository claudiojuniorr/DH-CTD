/*

Olá, você foi contratado para executar este projeto. É importante que você analise, entenda o pedido do cliente e desenvolva conforme solicitado. Veja abaixo os requisitos do projeto:

OBS: Entrega até 16/11/2022 -> 23:59

- Precisamos desenvolver um menu para um microondas super veloz, onde teremos 5 opções de comida com seus respectivos tempos pré-definidos. 

      1 - Pipoca – 10 segundos (padrão);
      2 - Macarrão – 8 segundos (padrão);
      3 - Carne – 15 segundos (padrão);
      4 - Feijão – 12 segundos (padrão);
      5 - Brigadeiro – 8 segundos (padrão); 

- O usuário poderá alterar o tempo padrão, aumentando ou diminuindo de acordo com sua vontade. Se o tempo informado for maior que 2x o necessário, exibir mensagem que a comida queimou.
- Se o tempo for menor que o padrão, exibir a mensagem: "tempo insuficiente"; 
- Opções não listadas no menu, devem exibir uma mensagem de erro: "Prato inexistente";
- Se o tempo for 3x maior que o necessário para o prato, o microondas deve exibir a mensagem: “kabumm”;
- No final de cada tarefa, o microondas deverá exibir a mensagem: "Prato pronto, bom apetite!!!".

Sala - 8

Juliett Garcia
Alanna Mercia
Akira Yamada
Agnaldo Silva
Claudio Ribeiro
Railana

*/

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
        console.log(`Prato ${opcao} pronto, bom apetite!!!`);
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
        console.log(`Prato inexistente`);
    }
}

microondas (1, 12)