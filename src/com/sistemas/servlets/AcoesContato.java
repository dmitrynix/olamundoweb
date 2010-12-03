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

	private static ContatoDAO contatoDao = new ContatoDAO();

	public static String salvar(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Contato contato = mapContato(request);

		contatoDao.salvar(contato);

		return listar(request, response);
	}

	public static String atualizar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Contato contato = mapContato(request);

		contatoDao.update(contato);

		return ver(request, response);
	}

	public static String apagar(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		Contato contato = findContato(request);

		contatoDao.excluir(contato);

		return listar(request, response);
	}

	public static String listar(HttpServletRequest request,
			HttpServletResponse response) {

		List<Contato> contatos = contatoDao.getAll();

		request.setAttribute("contatos", contatos);

		return "contato_index.jsp";
	}

	public static String ver(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Contato contato = findContato(request);

		request.setAttribute("contato", contato);

		return "contato_ver.jsp";
	}

	public static String editar(HttpServletRequest request,
			HttpServletResponse response) throws ParseException {

		Contato contato = findContato(request);

		request.setAttribute("contato", contato);

		return "contato_editar.jsp";
	}
	
    private static Contato findContato(HttpServletRequest request)
              throws ParseException {
      Contato contato = contatoDao.getById(Integer.parseInt(request.getParameter("id")));
      return contato;
    }

	private static Contato mapContato(HttpServletRequest request)
			throws ParseException {
		Contato contato = new Contato();
		// Start here
		String contato_id = null;
		if (request.getParameter("id") != null) {
			contato_id = request.getParameter("id");
		}
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String dataNascimentoStr = request.getParameter("dataNascimento");
		String endereco = request.getParameter("endereco");

		Date dataNascimento = null;
		dataNascimento = new SimpleDateFormat("dd/MM/yyyy")
				.parse(dataNascimentoStr);

		if (contato_id != null) {
			contato.setId(Long.parseLong(contato_id));
		}
		contato.setNome(nome);
		contato.setDataNascimento(dataNascimento);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		// end here
		return contato;
	}
}