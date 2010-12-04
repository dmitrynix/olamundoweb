<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Reuniao Page</title>
    	<link rel="stylesheet" type="text/css" href="./css/reunieditar.css">
  </head>
  <body>
   <div id="content">
    <div id="button"><a href="reuniao?acao=list" id="form_reuniao">Todas</a></div>
    <div id="button2"><a href="reuniao?acao=ver&id=${reuniao.id}">Ver Contato</a></div>
      <form action="reuniao" method="get">
        <input type="hidden" name="id" value="${reuniao.id}">
        <input type="hidden" name="acao" value="atualizar">
        Local: <input type="text" name="local" value="${reuniao.local}" /><br />
        Data: <input type="text" name="data" value="<fmt:formatDate value="${reuniao.data}" />" class="data" /><br />
        <input type="submit" value="Gravar" />
    </form>
    </div>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.validate.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>