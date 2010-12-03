# Criar Banco de dados

## Tabela de Contatos
    create table contatos(
      id serial primary key,
      nome varchar(255),
      endereco varchar(255),
      datanascimento date,
      email varchar(255)
    );

## Tabela de Reunioes

    create table reunioes(id serial primary key, local varchar(255), data date);

## Tabela intermediária entre Reuniões e Contatos:

    create table contatos_reunioes(id serial primary key, contato_id integer, reuniao_id integer);
