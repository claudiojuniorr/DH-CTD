function adicionar(valor1, valor2){
    return valor1 + valor2;
}

function subtracao(valor1, valor2){
    return valor1 - valor2;
}

function multiplicacao(valor1, valor2){
    return valor1 * valor2;
}

function divisao(valor1, valor2){
    return valor1 / valor2;
}
console.log("------Adição / Calculadora------");
console.log(adicionar(2,2));
console.log("------Subtração / Calculadora------");
console.log(subtracao(2,2));
console.log("------Multiplicação / Calculadora------");
console.log(multiplicacao(2,2));
console.log("------Divisão / Calculadora------");
console.log(divisao(2,2));
console.log("------Divisão / Calculadora------");
console.log(divisao(0,10));

function quadradoDoNumero(valor){
    return multiplicacao(valor, valor);
}
console.log("------Valor Elevado ao Quadrado / Calculadora------");
console.log(quadradoDoNumero(5));

function mediaDeTresNumeros(nota1, nota2, nota3){
    let total = adicionar(nota1,nota2);
    total = adicionar(total, nota3);
    const media = divisao(total, 3);
    return media;
}
console.log("------Média de Três Números / Calculadora------");
console.log(mediaDeTresNumeros(10, 10, 10));

function calculaPorcentagem(valor1, valor2){
    return `${divisao(valor1, 100)*valor2}%`;
}

console.log("------Calculadora de Porcentagem / Calculadora------");
console.log(calculaPorcentagem(300, 15));

function geradorDePorcentagem(valor1, valor2){
    return `${(valor1*100)/valor2}%`;
}

console.log("------Gerador de Porcentagem / Calculadora------");
console.log(geradorDePorcentagem(2, 200));

