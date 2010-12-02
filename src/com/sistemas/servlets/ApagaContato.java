package com.sistemas.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sistemas.dao.ContatoDAO;
import com.sistemas.entidades.Contato;

@WebServlet(value="/apagaContato")
public class ApagaContato extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		Long contato_id = Long.parseLong(req.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(contato_id);

		ContatoDAO dao = new ContatoDAO();
		try {
			dao.excluir(contato);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		out.println("<html>");
		out.println("<body>");
		out.println("Contato apagado com sucesso<br/>");
		out.println("<a href='.'>Retornar</a>");
		out.println("</body>");
		out.println("</html>");	
	}
}