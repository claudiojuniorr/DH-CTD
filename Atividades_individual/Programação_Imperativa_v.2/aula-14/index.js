/*
const alicia = [23, 69, 32];
const bob = [12, 67, 43];

function encontrarGanhador (a, b) {
    let participanteA = 0;
    let participanteB = 0;
    for (let x= 0; x < a.length; x++){
        if(a[x]>b[x]){
            participanteA += 1;
        }else if(a[x]<b[x]){
            participanteB +=1;
        }
    }
    return `
    Participante A: ${participanteA}
    Participante B: ${participanteB}`;
}

console.log(encontrarGanhador(alicia, bob));
*/

/*
function digitalHouse(num1, num2){
    let moduloNum1;
    let moduloNum2;
    for(let valor = 1; valor < 101; valor++){
        moduloNum1 = valor%num1;
        moduloNum2 = valor%num2;
        if(moduloNum1 == 0 && moduloNum2==0){
            console.log(`Digital House`);
        }else if(moduloNum1==0){
            console.log(`Digital`);
        }else if (moduloNum2==0){
            console.log(`House`);
        }else{
            console.log(valor);
        }
    }
}

digitalHouse(5, 2);
*/

const nome = ['c','l','a','u','d','i','o'];

function arrayJoin(array){
    var arrayConcatenado = '';
    for (let valor = 0; valor < array.lenght; valor++){
        arrayConcatenado += array[valor];
    }
    return arrayConcatenado;
}
console.log(arrayJoin(nome));
