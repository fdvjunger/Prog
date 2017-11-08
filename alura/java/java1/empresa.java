class Empresa{
	private String nome;
	private String CNPJ;
	public Funcionario[] funcionario;
	int vazio,t;
	
	
	
	public void SetCNPJ(String cnpj){
		this.CNPJ=cnpj;
	}
	public String getCNPJ(){
		return this.CNPJ;
	}
	
	public void add(Funcionario f){
		this.funcionario[this.vazio]=f;
		this.vazio++;
	}
	
	public void mostraTodasAsInformacoes() {
		for (int i = 0; i < this.vazio; i++) {
			System.out.println("Funcionário na posicao: " + i);
			this.funcionario[i].mostra();
		}
	}
	
	 public Funcionario getFuncionario(int posicao) {
        return this.funcionario[posicao];
    }
}