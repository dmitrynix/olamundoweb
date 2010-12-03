package com.sistemas.entidades;

import java.util.Date;

public class Reuniao extends Entidade {
	
	private Contato[] contatos;
	private Date data;
	private String local;
	
	public Reuniao() {}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Contato[] getContatos() {
		return contatos;
	}

	public void setContato(Contato contatos[]) {
		this.contatos = contatos;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}
}