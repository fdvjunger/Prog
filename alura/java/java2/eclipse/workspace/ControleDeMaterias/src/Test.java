
public class Test {
	public static void main(String[] args) {
		Materia calc1 = new Materia();
		
		calc1.setNome("CALCULO 1");
		calc1.setCodigo(1118);
		calc1.setCH(80);
		calc1.setCredito(4);
		calc1.setN1(9.3);
		calc1.setN2(7.3);
		calc1.setMedia();
		
		calc1.imprime();
		
	}
}
