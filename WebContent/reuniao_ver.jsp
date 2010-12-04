<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reuniao Page</title>
  	  <link rel="stylesheet" type="text/css" href="./css/corpo.css">
  </head>
  <body>
   <div id="content">
    <div id="button6"><a href="reuniao?acao=list">Todos</a></div>
    <div id="button7"><a href="reuniao?acao=adiciona_contato&id=${reuniao.id}">Adiciona Contato</a></div>
    <p>${reuniao.id}</p>
    <p>${reuniao.local}</p>
    <p><fmt:formatDate value="${reuniao.data}" /></p>
    <p>Convidados:</p>
    <ul>
      <c:forEach var="contato" items="${reuniao.contatos}">
         <li>
           <a href="contato?acao=ver&id=${contato.id}">${contato.nome}</a>
           <a href="reuniao?acao=remover_contato&id=${reuniao.id}&contato_id=${contato.id}">Remover</a>
         ;</li>
      </c:forEach>
      </ul>
    </div>
  </body>
</html>