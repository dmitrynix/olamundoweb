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
	<p><a href=".">Todos</a>.</p>
	<% Integer id = Integer.parseInt(request.getParameter("id")); %>
	<% try { ContatoDAO dao = new ContatoDAO(); Contato c = dao.getById(id); %>
      <p><%= c.getId() %></p>
      <p><%= c.getNome() %></p>
      <p><%= c.getEndereco() %></p>
      <p><%= c.getDataNascimento() %></p>
    <% } catch(Exception e) { out.print("Erro"); } %>
  </body>
</html>