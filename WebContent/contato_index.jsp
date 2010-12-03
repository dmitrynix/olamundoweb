<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
         <c:forEach var="contato" items="${contatos}"> 
              <tr id="${ contato.id }">
              <td><a href="contato?acao=ver&id=${contato.id}">${contato.id}</a></td>
              <td>${contato.nome}</td>
              <td>${contato.endereco}</td>
              <td><fmt:formatDate value="${contato.dataNascimento}" /></td>
              <td><a href="contato?acao=editar&id=${contato.id}">Editar</a></td>
              <td><a href="contato?acao=apagar&id=${contato.id}">Apagar</a></td>
            </tr>
         </c:forEach>
       </tbody>
       <jsp:useBean id="agora" class="java.util.Date"/>
      </table>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>