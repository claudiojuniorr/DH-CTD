let imc = function(nome, idade, peso, altura, plano){
    const imc = peso/(altura**2);
    console.log(`${nome} tem ${idade} anos e seu índice de massa corporal é de ${imc.toFixed(1)}`);
    console.log(`Plano: ${plano} \n`);
}

imc("José da Silva", 27, 83.5, 1.70, "Ouro");
imc("Carlos de Souza", 28, 80.1, 1.76, "Diamante");
imc("José da Silva", 33, 63.7, 1.53, "Não Possui");
imc("José da Silva", 26, 55.0, 1.62, "Prata");