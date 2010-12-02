<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Novo Contato</title>
  </head>
  </body>
	<form action="adicionaContato" method="get">
		<input type="hidden" name="acao" value="salvar">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endere&ccedil;o: <input type="text" name="endereco" /><br />
		Data Nascimento: <input type="text" name="dataNascimento" class="data" /><br />
		<input type="submit" value="Gravar" />
	</form>
	
	<br/>
	<a href="contato?acao=listar">Listar Todos</a>
	<script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>