package com.sistemas.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/contato")
public class ContatoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pagina = "";
		
		try {
			String acao = request.getParameter("acao");

			if (acao.equals("novo")) {
				pagina = "novoContato.jsp";
			} else if (acao.equals("ver")) {
				pagina = "verContato.jsp";
			} else if (acao.equals("editar")) {
				pagina = "editarContato.jsp";
			}
			
		} catch (Exception e) {
			request.setAttribute("excecao", e);
			pagina = "erro.jsp";
		}

		request.getRequestDispatcher(pagina).forward(request, response);
	}
}
