class Conta{
	protected double saldo;
	
	
	public double getSaldo(){
		return this.saldo;
	}
	
	public void Deposito(double valor){
		this.saldo+=valor;
	}
	
	public void saca(double valor){
		if(this.saldo<valor){
			System.out.println("VALOR ACIMA DO SALDO!!!");
		}else{
			this.saldo-=valor;
		}
	}
	
		public void atualiza(double taxa){
		this.saldo+=this.saldo*taxa;
	}
	
}