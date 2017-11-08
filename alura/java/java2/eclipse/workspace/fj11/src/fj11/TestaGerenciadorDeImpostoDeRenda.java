package fj11;

public class TestaGerenciadorDeImpostoDeRenda {
	public static void main(String[] args) {
		GerenciadorDeImpostoDeRenda gRenda = new GerenciadorDeImpostoDeRenda();
		
		SeguroDeVida seguroDeVida = new SeguroDeVida();
		gRenda.adiciona(seguroDeVida);
		
		ContaCorrente corrente = new ContaCorrente("fjunger", 575,1000);
		gRenda.adiciona(corrente);
		
		System.out.println(gRenda.getTotal());
		
		
		
	}
}
