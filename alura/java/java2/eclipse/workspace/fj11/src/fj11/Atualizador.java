package fj11;

public class Atualizador {
	private double saldoTotal = 0;
	private double selic;

	public Atualizador(double selic) {
		this.selic = selic;
	}

	public void roda(Conta c) {
		System.out.println("===============================");
		System.out.println("Nome titular:"+c.getNome());
		System.out.println("numero agencia - conta : "+c.getAgencia()+"-"+c.getnumeroConta());
		System.out.printf("Saldo anterior: R$ %.2f \n", c.getSaldo());
		c.atualiza(this.selic);
		System.out.printf("Saldo atualizado: R$ %.2f \n", c.getSaldo());
		this.saldoTotal += c.getSaldo();
	}

	public double getSaldototal() {
		return this.saldoTotal;
	}
}
