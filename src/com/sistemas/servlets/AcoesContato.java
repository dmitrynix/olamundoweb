package com.sistemas.servlets;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sistemas.dao.ContatoDAO;
import com.sistemas.entidades.Contato;

public class AcoesContato {
	
	private static ContatoDAO contatoDao= new ContatoDAO();
	
	public static String salvar(HttpServletRequest request, HttpServletResponse response){
		
		Contato contato = mapContato(request);
		
		contatoDao.salvar(contato);
		
		return listarTodos(request,response);
		
		
	}
	
	public static String listarTodos(HttpServletRequest request,
			HttpServletResponse response) {
		
		List<Contato> contatos = contatoDao.getAll();
		request.setAttribute("contatos", contatos);
		
		return "listarContatos.jsp";
		
	}

	private static Contato mapContato(HttpServletRequest request){
		Contato contato = new Contato();
		
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String dataNascimentoStr = request.getParameter("dataNascimento");
		String endereco = request.getParameter("endereco");
		Date dataNascimento = null;
		try {
			 dataNascimento = new SimpleDateFormat("dd/MM/yyyy").parse(dataNascimentoStr);
		} catch (ParseException e) {
			//out.println("erro de conversão");
			return null;
		}
		
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);
		contato.setEndereco(endereco);
		
		return contato;
	}
}
