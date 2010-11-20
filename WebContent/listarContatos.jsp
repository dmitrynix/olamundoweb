<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Contatos</title>
</head>
<body>

<a href="contato?acao=novo">Novo Contato</a>
<br /><br />
<table border="1">
	<c:forEach var="contato" items="${contatos}">	
		<tr>
			<td>${contato.nome}</td>
			<td>${contato.email}</td>
		</tr>	
	</c:forEach>
</table>


</body>
</html>