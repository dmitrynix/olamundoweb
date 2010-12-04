<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Nova Reuni&atilde;o</title>
    	<link rel="stylesheet" type="text/css" href="./css/corpo.css">
  </head>
  <body>
	<div id="content">
	<form action="reuniao" method="get" id="form_reuniao">
		<input type="hidden" name="acao" value="salvar" />
		Local: <input type="text" name="local" /><br />
		Data: <input type="text" name="data" class="data" /><br />
		<input type="submit" value="Gravar" />
	</form>
	
	<br/>
	<div id="button8"><a href="reuniao?acao=listar">Listar Todos</a></div>
	</div>
	<script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.validate.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>