<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Novo Contato</title>
</head>

	<form action="contato" method="get">
		<input type="hidden" name="acao" value="salvar">
		Nome: <input type="text" name="nome" /><br />
		E-mail: <input type="text" name="email" /><br />
		Endereço: <input type="text" name="endereco" /><br />
		Data Nascimento: <input type="text" name="dataNascimento" /><br />
			
		<input type="submit" value="Gravar" />
	</form>
	
	<br/>
	<a href="contato?acao=listar">Listar Todos</a>
<body>

</body>
</html>