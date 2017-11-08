package testeerro;

public class TesteErro {
	public static void main(String[] args) {
		try {
			System.out.println("inicio main");
			metodo1();
		}catch(ArrayIndexOutOfBoundsException e) {
	        System.out.println("\n==============================================================");
	        System.out.println("Problema! :"+ e);
	        System.out.println("==============================================================\n");
	    }
		System.out.println("fim do main");
	}

	private static void metodo1() {
		System.out.println("inicio metodo1");
		metodo2();
		System.out.println("fim metodo1");
		
	}

	
		private static void metodo2() {
			
				System.out.println("incio metodo2");
				int[] array = new int[10];
				
				
					for (int i=0; i<=15;i++){
						
						array[i]=i;
						System.out.println(i);
					}
					System.out.println("fim metodo2");			
		}
}

