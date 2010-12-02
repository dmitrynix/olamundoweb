<%@page import="com.sistemas.dao.ContatoDAO" %>
<%@page import="com.sistemas.entidades.Contato" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contato Page</title>
  </head>
  <body>
  	<% Integer id = Integer.parseInt(request.getParameter("id")); %>
	<% try { ContatoDAO dao = new ContatoDAO(); Contato c = dao.getById(id); %>
  	<p><a href=".">Todos</a>.</p>
    <p><a href="contato?acao=ver&id=<%= c.getId() %>">Ver Contato</a></p>
		<form action="atualizaContato" method="get">
		<input type="hidden" name="id" value="<%= c.getId() %>">
		<input type="hidden" name="acao" value="salvar">
		Nome: <input type="text" name="nome" value="<%= c.getNome() %>" /><br />
		E-mail: <input type="text" name="email" value="<%= c.getEmail() %>"/><br />
		Endere&ccedil;o: <input type="text" name="endereco" value="<%= c.getEnderecoFormulario() %>" /><br />
		Data Nascimento: <input type="text" name="dataNascimento" value="<%= c.getDataNascimentoFormulario() %>" class="data" /><br />
		<input type="submit" value="Gravar" />
	</form>
    <% } catch(Exception e) { out.print("Erro"); } %>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>