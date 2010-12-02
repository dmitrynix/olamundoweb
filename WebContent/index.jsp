<%@page import="com.sistemas.dao.ContatoDAO" %>
<%@page import="com.sistemas.entidades.Contato" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home Page</title>
  </head>
  <body>
	<p><a href="contato?acao=novo">Criar contato</a>.</p>
	<div id="lista2">
	  <table>
	    <thead>
	      <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Endereço</th>
            <th>Data Nascimento</th>
          </tr>
        </thead>
        <tbody>
          <% try { ContatoDAO dao = new ContatoDAO(); List<Contato> lista = dao.getAll(); for(Contato c : lista) { %>
            <tr id="<%= c.getId() %>">
              <td><a href="contato?acao=ver&id=<%= c.getId() %>"><%= c.getId() %></a></td>
              <td><%= c.getNome() %></td>
              <td><%= c.getEndereco() %></td>
              <td><%= c.getDataNascimentoFormulario() %></td>
              <td><a href="contato?acao=editar&id=<%= c.getId() %>">Editar</a></td>
              <td><a href="apagaContato?&id=<%= c.getId() %>">Apagar</a></td>
            </tr>
            <% } } catch(Exception e) { out.print("Erro"); } %>
        </tbody>
      </table>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>