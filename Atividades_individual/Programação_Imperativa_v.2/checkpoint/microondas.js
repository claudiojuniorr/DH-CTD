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
Claúdio Ribeiro Junior
Railana Ramos
*/

function tempo(tempoPadrao, tempoInformado){
    if (tempoInformado >= tempoPadrao && tempoInformado < tempoPadrao*2){
        console.log(`Prato pronto, bom apetite!!!`);
    }else if (tempoInformado >= tempoPadrao*2 && tempoInformado < tempoPadrao*3){
        console.log(`A comida queimou`);
    }else if (tempoInformado >= tempoPadrao*3){
        console.log(`Kabumm`);
    }else if (tempoInformado < tempoPadrao){
        console.log(`Tempo insuficiente`);
    }
}

function microondas(opcao, tempoInformado){
    switch (opcao){
        case 1:
            console.log(`Você pediu PIPOCA `);
            tempo(10, tempoInformado);
            break;
        case 2:
            console.log(`Você pediu MACARRÃO `);
            tempo(8, tempoInformado);
            break;
        case 3:
            console.log(`Você pediu CARNE `);
            tempo(15, tempoInformado);
            break;
        case 4:
            console.log(`Você pediu FEIJÃO `);
            tempo(12, tempoInformado);
            break;
        case 5:
            console.log(`Você pediu BRIGADEIRO `);
            tempo(8, tempoInformado);
            break;
        default:
            console.log(`Prato inexistente`);
    }
}

microondas(2, 8);