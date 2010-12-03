<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reuniao Page</title>
  </head>
  <body>
    <p><a href="reuniao?acao=list">Todos</a>.</p>
    <p>${reuniao.id}</p>
    <p>${reuniao.local}</p>
    <p><fmt:formatDate value="${reuniao.data}" /></p>
  </body>
</html>