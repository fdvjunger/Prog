class teste{
	public static void main(String[] args){
		
		Empresa empresa = new Empresa();
		empresa.funcionario = new Funcionario[10];
		

		
		for(int i=0;i<9;i++){
			Funcionario f = new Funcionario();
			f.data=new Data("10","11","1995");
			f.setNome("teste"+i);
			f.setSalario(1000+i*134);
			empresa.add(f);
		}
		empresa.mostraTodasAsInformacoes();

	}
}