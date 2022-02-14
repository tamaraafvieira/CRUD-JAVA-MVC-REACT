package crud;

public class Cliente {
	private int codigoCliente;
	private String nome;
	private String cpf;
	private String email;
	private String rua;
	private String numero;
	private String complemento;
	private String cep;
	private String situacao;
	
	
	public int getCodigoCliente() {
		return codigoCliente;
	}
	public void setCodigoCliente(int codigoCliente) {
		this.codigoCliente = codigoCliente;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getComplemento() {
		return complemento;
	}
	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getSituacao() {
		return situacao;
	}
	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
	
	@Override
	public String toString() {
		return "Cliente [codigoCliente=" + codigoCliente + ", nome=" + nome + ", cpf=" + cpf + ", email=" + email
				+ ", rua=" + rua + ", numero=" + numero + ", complemento=" + complemento + ", cep=" + cep
				+ ", situacao=" + situacao + "]";
	}
	
	
	
}
