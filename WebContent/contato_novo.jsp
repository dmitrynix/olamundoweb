<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Novo Contato</title>
      <link rel="stylesheet" type="text/css" href="./css/novocontato.css">
  </head>
  <body>
    
    <div id="content">
   <div id="form">  
    
    <form action="contato" method="get" id="form_contato">
      <input type="hidden" name="acao" value="salvar" />
      Nome: <input type="text" name="nome" /><br />
      E-mail: <input type="text" name="email" /><br />
      Endere&ccedil;o: <input type="text" name="endereco" /><br />
      Data Nascimento: <input type="text" name="dataNascimento" class="data" /><br />
      <input type="submit" value="Gravar" />
    </form>
   </div>
  <br/>
    <div id="button">
      <div class="list">
        <a href="contato?acao=listar">Listar Todos</a>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="javascripts/jquery.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery-ui.min.js"></script>
    <script type="text/javascript" src="javascripts/jquery.validate.min.js"></script>
    <script type="text/javascript" src="javascripts/application.js"></script>
  </body>
</html>