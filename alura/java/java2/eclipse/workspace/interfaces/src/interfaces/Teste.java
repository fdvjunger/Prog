package interfaces;

public class Teste {
	public static void main(String[] args) {
		AreaCalculavel retangulo =  new Retangulo(3,2);
		System.out.println(retangulo.calculaArea());
		
		AreaCalculavel circulo = new Circulo(4.5);
		System.out.println(circulo.calculaArea());
		
	}
}
