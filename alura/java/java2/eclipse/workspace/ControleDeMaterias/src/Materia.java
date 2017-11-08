
public class Materia {
	
	private int codigo;
	private String nome;
	private String situacao;
	private double n1;
	private double n2;
	private double n3;
	private double vf;
	private double media;
	private int CH;
	private int credito;
	
	
	public double getMedia() {
		this.setMedia();
		return media;
	}
	public void setMedia() {
		this.media = (this.n1+this.n2)/2;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSituacao() {
		if(this.getMedia()<6){
			this.situacao="Reprovado";
			return "Reprovado";
		}else{
			this.situacao="Aprovado";
			return "Aprovado";
		}
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	public double getN1() {
		return n1;
	}
	public void setN1(double n1) {
		this.n1 = n1;
	}
	public double getN2() {
		return n2;
	}
	public void setN2(double n2) {
		this.n2 = n2;
	}
	public double getN3() {
		return n3;
	}
	public void setN3(double n3) {
		this.n3 = n3;
	}
	public double getVf() {
		return vf;
	}
	public void setVf(double vf) {
		this.vf = vf;
	}
	public int getCH() {
		return CH;
	}
	public void setCH(int cH) {
		CH = cH;
	}
	public int getCredito() {
		return credito;
	}
	public void setCredito(int credito) {
		this.credito = credito;
	}
	
	public void imprime(){
		System.out.println("==============================================");
		System.out.println("\t\t("+this.codigo+")\t"+this.nome);
		System.out.println("Situa��o: "+this.getSituacao()+"\t CH: "+this.CH+"\t Cr�ditos: "+this.credito);
		System.out.println("P1: "+this.n1+"\t P2: "+this.n2+"  P3: "+this.n3+"  VF: "+ this.vf+"  Media: "+this.getMedia());
	}
	
	
}
