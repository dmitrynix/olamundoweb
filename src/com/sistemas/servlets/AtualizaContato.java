package com.sistemas.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sistemas.dao.ContatoDAO;
import com.sistemas.entidades.Contato;

@WebServlet(value="/atualizaContato")
public class AtualizaContato extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		Long contato_id = Long.parseLong(req.getParameter("id"));
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String dataNascimentoStr = req.getParameter("dataNascimento");
		String endereco = req.getParameter("endereco");
		Date dataNascimento = null;
		try {
			 dataNascimento = new SimpleDateFormat("dd/MM/yyyy").parse(dataNascimentoStr);
		} catch (ParseException e) {
			out.println("erro de conversão");
			return;
		}

		Contato contato = new Contato();
		contato.setId(contato_id);
		contato.setNome(nome);
		contato.setDataNascimento(dataNascimento);
		contato.setEndereco(endereco);
		contato.setEmail(email);

		ContatoDAO dao = new ContatoDAO();
		try {
			dao.update(contato);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		out.println("<html>");
		out.println("<body>");
		out.println("Contato " + contato.getNome() + " atualizado com sucesso<br/>");
		out.println("<a href='.'>Retornar</a>");
		out.println("</body>");
		out.println("</html>");	
	}
}