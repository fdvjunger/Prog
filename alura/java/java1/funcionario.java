class Funcionario{
	private String nome;
	private String departamento;
	private double salario;
	public Data data;
	private String RG;
	private static int identificador=0;
	
	public Funcionario(){
		this("");
	}
	public Funcionario(String n){
		this.nome=n;
		this.identificador++;
	}
	
	public void setNome(String name){
		this.nome=name;
	}
	public String getNome(){
		return this.nome;
	}
	
	public void setDepartamento(String depat){
		this.departamento=depat;
	}
	public String getDepartamento(){
		return this.departamento;
	}
	
	public void setSalario(double sal){
			this.salario=sal;
	}
	public double getSalario(){
		return this.salario;
	}
	
	public void setRG(String Reg){
		this.RG=Reg;
	}
	public String getRG(){
		return this.RG;
	}
	
	public void RecebeAumento(double valor){
		this.salario+=valor;
	}
	
	public void GanhoAnual(){
		System.out.println("Ganho anual = R$:"+this.salario*12);
	}
	
	public void Mudancadepartamento(String novodepart){
		this.departamento=novodepart;	
	}

	public void mostra(){
		System.out.println("Nome foncionario:"+this.nome);
		System.out.println("Departamento:"+this.departamento);
		System.out.println("Salario: R$:"+this.salario);
		System.out.println("data de registro:"+this.data.getFormatada());
		System.out.println("Registro Geral:"+this.RG);
		System.out.println("Matricula:"+this.identificador);
		this.GanhoAnual();
	}
}