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
	<p><a href="reuniao?acao=novo">Criar reuniao</a>.</p>
	<div id="lista2">
	  <table>
	    <thead>
	      <tr>
            <th>Código</th>
            <th>Local</th>
            <th>Data</th>
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
       <jsp:useBean id="agora" class="java.util.Date"/>
      </table>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>