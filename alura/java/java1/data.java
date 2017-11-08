class Data{
	private String dia;
	private String mes;
	private String ano;
	
	public Data(String d,String m,String a){
		this.setDATA(d,m,a);
	}
	
	public void setDATA(String d, String m, String a){
		this.dia=d;
		this.mes=m;
		this.ano=a;
	}
	
	public String getFormatada(){
		return this.dia+"/"+this.mes+"/"+this.ano;
	}
}