<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reuniao Page</title>
    	<link rel="stylesheet" type="text/css" href="./css/corpo.css">
  </head>
  <body>
   <div id="content">
   <div id="button8"><a href="reuniao?acao=list">Todas</a></div>
    <div id="button9"><a href="reuniao?acao=ver&id=${reuniao.id}">Ver Reuniao</a></div>
      <form action="reuniao" method="get">
        <input type="hidden" name="id" value="${reuniao.id}">
        <input type="hidden" name="acao" value="adicionar_contato">
        Local: ${reuniao.local}<br />
        Data: <fmt:formatDate value="${reuniao.data}" /><br />
        <select id="contato_id" name="contato_id">
          <option value=""></option>
            <c:forEach var="contato" items="${contatos}"> 
            <option value="${ contato.id }">${ contato.nome }</option>
          </c:forEach>
        </select>
        <input type="submit" value="Gravar" />
    </form>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>