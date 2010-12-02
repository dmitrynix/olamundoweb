# SQL

    create table contatos(
      id serial primary key,
      nome varchar(255),
      endereco varchar(255),
      datanascimento date,
      email varchar(255)
    );