package com.sistemas.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/reuniao")
public class ReuniaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pagina = "";
		
		try {
			String acao = request.getParameter("acao");

			if (acao.equals("novo")) {
				pagina = "reuniao_novo.jsp";
			} else if (acao.equals("ver")) {
				pagina = AcoesReuniao.ver(request, response);
			} else if (acao.equals("editar")) {
				pagina = AcoesReuniao.editar(request, response);
			} else if (acao.equals("salvar")){
				pagina = AcoesReuniao.salvar(request, response);
			} else if (acao.equals("atualizar")){
				pagina = AcoesReuniao.atualizar(request, response);
			} else if (acao.equals("apagar")){
				pagina = AcoesReuniao.apagar(request, response);
			} else if (acao.equals("adiciona_contato")){
				pagina = AcoesReuniao.adiciona_contato(request, response);
			} else if (acao.equals("adicionar_contato")){
				pagina = AcoesReuniao.adicionar_contato(request, response);
			} else if (acao.equals("remover_contato")){
				pagina = AcoesReuniao.remover_contato(request, response);
			} else {
				pagina = AcoesReuniao.listar(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("excecao", e);
			pagina = "erro.jsp";
		}

		request.getRequestDispatcher(pagina).forward(request, response);
	}
}
