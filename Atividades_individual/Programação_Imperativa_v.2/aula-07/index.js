
var readlineSync = require('readline-sync');


console.log(`Bem-vindo ao nosso cardápio digital: 
Temos as seguintes opções: 
1 - Pizza 
2 - Hamburguer 
7 - Tapioca Recheada \n`); 

var opcao = readlineSync.question('Informesuaopção: ');

if(opcao == 1){
    console.log(`Pizza`);
}else if (opcao == 2){
    console.log(`Hamburguer`)
}else if (opcao == 7){
    console.log(`Tapioca Recheada`)
}else {
    console.log(`Opção Invalida`)
}