<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Página de Reuniões</title>
    <link rel="stylesheet" type="text/css" href="./css/reuniao.css">
    <link rel="stylesheet" type="text/css" href="./css/default.css">
  </head>
  <body>
	<div id="content">
    <div class="menu">
      <a href="." class="button_link">Home Page</a>
      <a href="contato?acao=listar" class="button_link">Contato</a>
      <a href="reuniao?acao=novo" class="button_link">Criar reunião</a>
    </div>
	<div id="lista2">
	  <table border="1">
	    <thead>
	      <tr>
            <th>Código</th>
            <th>Local</th>
            <th>Data</th>
            <th colspan="2">Modificações</th>
          </tr>
        </thead>
        <tbody>
         <c:forEach var="reuniao" items="${reunioes}"> 
              <tr id="${ reuniao.id }">
              <td><a href="reuniao?acao=ver&id=${reuniao.id}">${reuniao.id}</a></td>
              <td>${reuniao.local}</td>
              <td><fmt:formatDate value="${reuniao.data}" /></td>
              <td><a href="reuniao?acao=editar&id=${reuniao.id}">Editar</a></td>
              <td><a href="reuniao?acao=apagar&id=${reuniao.id}">Apagar</a></td>
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