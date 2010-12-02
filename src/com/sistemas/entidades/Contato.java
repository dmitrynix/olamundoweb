package com.sistemas.entidades;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Contato extends Entidade {
	
	private String nome;
	private String email;
	private String endereco;
	private Date dataNascimento;
	
	public Contato() {}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEndereco() {
		String end_retorno = "Não informado";

		if (endereco != null) {
		  end_retorno = endereco;
		}
		return end_retorno;
	}

	public String getEnderecoFormulario() {
		String end_retorno = "";

		if (endereco != null) {
		  end_retorno = endereco;
		}
		return end_retorno;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getDataNascimentoFormulario() {
		String data_retorno = "";

		if (dataNascimento != null) {
          //data_retorno = new SimpleDateFormat("dd/MM/yyyy").parse(dataNascimento.toString());
          DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
          data_retorno = formatter.format(dataNascimento);
		}
		return data_retorno;
	}


	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.nome;
	}
}