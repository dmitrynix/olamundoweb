package com.sistemas.entidades;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Reuniao extends Entidade {
	
	private List<Contato> contatos = new ArrayList<Contato>();

	private Date data;
	private String local;
	
	public Reuniao() {}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public List<Contato> getContatos() {
		return contatos;
	}

	public void addContato(Contato contato) {
		this.contatos.add(contato);
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}
}