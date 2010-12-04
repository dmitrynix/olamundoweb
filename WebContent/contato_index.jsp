<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Página de Contatos</title>
    <link rel="stylesheet" type="text/css" href="./css/corpo.css">
    <link rel="stylesheet" type="text/css" href="./css/default.css">
  </head>
  <body>
	<div id="content">
    <div class="menu">
      <a href="." class="button_link">Home Page</a>
      <a href="reuniao?acao=listar" class="button_link">Reunião</a>
      <a href="contato?acao=novo" class="button_link">Criar contato</a>
    </div>
    <div id="lista2">
      <table border="1">
        <thead>
          <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Endereço</th>
            <th>Data Nascimento</th>
            <th colspan="2">Modificações</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="contato" items="${contatos}"> 
           <tr id="${ contato.id }">
             <td><a href="contato?acao=ver&id=${contato.id}">${contato.id}</a></td>
             <td><a href="contato?acao=ver&id=${contato.id}">${contato.nome}</a></td>
             <td>${contato.endereco}</td>
             <td><fmt:formatDate value="${contato.dataNascimento}" /></td>
             <td><a href="contato?acao=editar&id=${contato.id}">Editar</a></td>
             <td><a href="contato?acao=apagar&id=${contato.id}">Apagar</a></td>
           </tr>
         </c:forEach>
        </tbody>
      </table>
     </div>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>