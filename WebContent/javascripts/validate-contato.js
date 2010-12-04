jQuery(function($){
  $(".formulario").validate({
    rules: {
	  nome: "required",
	  endereco: "required",
	  dataNascimento: "required",
	  email: {
	    required: true,
	    email: true
	  }
    },
	messages: {
	  nome: "Entre com o nome",
	  endereco: "Entre com o endereço da pessoa",
	  email: "Favor entre com um endereço de e-mail válido",
	  dataNascimento: "Favor entre com uma data"
	}
  });
});