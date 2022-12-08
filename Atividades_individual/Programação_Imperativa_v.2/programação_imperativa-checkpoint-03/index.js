function aprovadoReprovado(aluno){
    if(aluno.calcularMedia() >= curso.notaAprovacao && aluno.qtdFaltas < curso.faltasMaximas){
        return true;
    }else if(aluno.calcularMedia() >= curso.notaAprovacao && aluno.qtdFaltas == curso.faltasMaximas){
        if(aluno.calcularMedia() > (curso.notaAprovacao+(curso.notaAprovacao*0.1))){
            return true;
        }
        return false;
    }
    return false;
}

class Aluno{
    constructor (nome, qtdFaltas, notas){
        this.nome = nome;
        this.qtdFaltas = qtdFaltas;
        this.notas = notas;
    }
    calcularMedia(){
        let media = 0;
        for (let nota of this.notas){
            media += nota;
        }
        return (media / this.notas.length).toFixed(1);
    }
    faltas(){
        this.qtdFaltas ++;
    }
}

const curso = {
    nomeCurso:'Engenharia da Computação',
    notaAprovacao: 70,
    faltasMaximas: 10,
    listaEstudantes: [],
    addAluno(nome, qtdFaltas, notas){
        const aluno = new Aluno(nome, qtdFaltas, notas);
        this.listaEstudantes.push(aluno);
    },
    resultadoAluno(nomeAluno){
        for (let aluno of this.listaEstudantes){
            if(aluno.nome == nomeAluno){
                return aprovadoReprovado(aluno);
            }
        }
        
    },
    resultados(){
        const alunosResultados = [];
        for (let aluno of this.listaEstudantes){
            alunosResultados.push(this.resultadoAluno(aluno.nome));
        }
        return alunosResultados;
    }
}

curso.addAluno("Claúdio Ribeiro Junior", 5, [100, 80, 90]);
curso.addAluno("João Santos Ferreira", 10, [70, 80, 70]);
curso.addAluno("Adriana Ferreira", 7, [90, 80, 40]);

console.log(curso.resultadoAluno("Claúdio Ribeiro Junior"));
console.log(curso.resultadoAluno("João Santos Ferreira"));
console.log(curso.resultadoAluno("Adriana Ferreira"));

console.log(curso.resultados());