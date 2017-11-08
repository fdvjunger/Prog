package fj11;

public class ContaCorrente extends Conta implements Tributavel{

	public ContaCorrente(String nome, int agencia, double saldo) {
		super(nome, agencia, saldo);
	}

	public void atualiza(double taxa) {
		this.saldo += this.saldo * taxa * 0.02;
	}

	@Override
	public double calculaTributos() {
		return this.getSaldo()*0.01;
	}

}
