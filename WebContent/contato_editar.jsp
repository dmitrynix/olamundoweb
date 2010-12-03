<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Contato Page</title>
  </head>
  <body>
    <p><a href=".">Todos</a>.</p>
    <p><a href="contato?acao=ver&id=${contato.id}">Ver Contato</a></p>
      <form action="contato" method="get">
        <input type="hidden" name="id" value="${contato.id}">
        <input type="hidden" name="acao" value="atualizar">
        Nome: <input type="text" name="nome" value="${contato.nome}" /><br />
        E-mail: <input type="text" name="email" value="${contato.email}"/><br />
        Endere&ccedil;o: <input type="text" name="endereco" value="${contato.endereco}" /><br />
        Data Nascimento: <input type="text" name="dataNascimento" value="<fmt:formatDate value="${contato.dataNascimento}" />" class="data" /><br />
        <input type="submit" value="Gravar" />
    </form>
    <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>