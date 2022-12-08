function conta(numeroConta, tipoConta, saldo, titularConta){
    this.numeroConta = numeroConta;
    this.tipoConta = tipoConta;
    this.saldo = saldo;
    this.titularConta = titularConta;
}

const banco = {
    contas: [],
    criarConta(numeroConta, tipoConta, saldo, titularConta){
        const novaConta = new conta(numeroConta, tipoConta, saldo, titularConta);
        this.contas.push(novaConta);
    },
    consultarCliente(cliente){
        for(let conta of this.contas){
            if(conta.titularConta == cliente){
                return conta;
            }
        }
    },
    depositar(cliente, saldo){
        for(let conta of this.contas){
            if(conta.titularConta == cliente){
                conta.saldo += saldo
                return conta;
            }
        }
    }
}
banco.criarConta(5486273622, "Conta Corrente", 27771, "Abigael Natte");
banco.criarConta(1183971869, "Conta Poupança", 8675, "Ramon Connell");

banco.criarConta(9582019689, "Conta Poupança", 27363, "Jarret Lafuente");
banco.criarConta(1761924656, "Conta Poupança", 32415, "Ansel Ardley");

banco.criarConta(7401971607, "Conta Poupança", 18789, "Jacki Shurmer");
banco.criarConta(630841470, "Conta Corrente", 28776, "Jobi Mawtus");

banco.criarConta(4223508636, "Conta Corrente", 2177, "Thomasin Latour");
banco.criarConta(185979521, "Conta Poupança", 25994, "Lonnie Verheijden");

banco.criarConta(3151956165, "Conta Corrente", 7601, "Alonso Wannan");
banco.criarConta(2138105881, "Conta Poupança", 33196, "Bendite Huggett");

console.log(banco.consultarCliente("Alonso Wannan"));

console.log(banco.depositar("Alonso Wannan", 1545));
