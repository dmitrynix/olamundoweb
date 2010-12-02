<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contato Page</title>
  </head>
  <body>
    <p><a href="contato?acao=list">Todos</a>.</p>
    <p>${contato.id}</p>
    <p>${contato.nome}</p>
    <p>${contato.endereco}</p>
    <p>${contato.email}</p>
    <p><fmt:formatDate value="${contato.dataNascimento}" /></p>
  </body>
</html>