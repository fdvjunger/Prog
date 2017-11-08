class teste{
	public static void main(String[] args){
        Conta c = new Conta();
        Conta cc = new ContaCorrente();
        Conta cp = new ContaPoupanca();

        c.Deposito(1000); 
        cc.Deposito(1000); 
        cp.Deposito(1000);

        System.out.println(c.getSaldo());
        System.out.println(cc.getSaldo());
        System.out.println(cp.getSaldo());
		
		AtualizadorDeContas a = new AtualizadorDeContas(0.01);
		a.roda(c);
		a.roda(cc);
		a.roda(cp);
		
		System.out.println("Saldo total = "+a.getSaldototal());
	}
}