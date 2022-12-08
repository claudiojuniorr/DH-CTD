const participanteA =  [5, 8, 4, 9, 5];
const participanteB =  [8, 7, 8, 6, 8];
const participanteC =  [7, 5, 10, 8, 3];

// Questão 2
function pontuacaoMedia(participante = []){
    let media = 0;
    for(let nota = 0; nota < participante.length; nota++){
        media += participante[nota];
    }
    return media / participante.length;
}
console.log(pontuacaoMedia(participanteB));

// Questão 3
function pontuacaoMaior (participante = []){
    const maiorNota = participante.sort();
    maiorNota.reverse();
    return maiorNota[0];
}
console.log(pontuacaoMaior(participanteB));

// Questão 4
function participante(participante = []){
    this.media = pontuacaoMedia(participante);
    this.maiorNota = pontuacaoMaior(participante);
}

function competicao(participanteA = [], participanteB = [], participanteC = []){
    let ParticipanteA = new participante(participanteA);
    let ParticipanteB = new participante(participanteB);
    let ParticipanteC = new participante(participanteC);

    if (ParticipanteA.media > ParticipanteB.media && ParticipanteA.media > ParticipanteC.media){
        return `O participante A ganhou! Sua média é ${ParticipanteA.media} e sua maior nota é ${ParticipanteA.maiorNota}.`;
    }else if (ParticipanteB.media > ParticipanteA.media && ParticipanteB.media > ParticipanteC.media){
        return `O participante B ganhou! Sua média é ${ParticipanteB.media} e sua maior nota é ${ParticipanteB.maiorNota}.`;
    }else{
        return `O participante C ganhou! Sua média é ${ParticipanteC.media} e sua maior nota é ${ParticipanteC.maiorNota}.`;
    }
}

console.log(competicao(participanteA, participanteB, participanteC));