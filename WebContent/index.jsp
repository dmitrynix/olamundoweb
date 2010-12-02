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
              <td><%= c.getDataNascimento() %></td>
              <td><% //out.print("<a href=controle.jsp?action=excluir&cod_cliente="+c.getCod_cliente()+">Excluir</a>"); %></td>
              <td><% //out.print("<a href=atualizar.jsp?cod_cliente="+c.getCod_cliente()+">Atualizar</a>"); %></td>
            </tr>
            <% } } catch(Exception e) { out.print("Erro"); } %>
        </tbody>
      </table>
    </div>
  </body>
</html>