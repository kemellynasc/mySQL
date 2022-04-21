select @@version;
create database db_rh;

#Iniciando o banco de dados
use db_rh;

#Criando a tabela colaboradores + 5 atributos
create table tb_colaboradores(
id bigint auto_increment,
nome char(255) not null,
sobrenome char(255) not null,
idade int not null,
nAcesso int not null,
funcao varchar(255) not null,
descricao varchar(255),
primary key (id)
);

#Adicionando 5 dados
insert into tb_colaboradores (nome,sobrenome,idade,nAcesso,funcao,salario,descricao)
values ("Claudio","Santos",19,007,"Funcionário",5000,"Pedido de demissão");

insert into tb_colaboradores (nome,sobrenome,idade,nAcesso,funcao,salario,descricao)
values ("Pietra","Silva",28,001,"Estagiária",5000,"Aumento do salario");

insert into tb_colaboradores (nome,sobrenome,idade,nAcesso,funcao,salario,descricao)
values ("Flavia","Oliveira",26,002,"Estagiária",5000,"Entrega de tarefas");

insert into tb_colaboradores (nome,sobrenome,idade,nAcesso,funcao,salario,descricao)
values ("Angela","Maria",18,003,"Funcionária",5000,"Atualização de dados");

insert into tb_colaboradores (nome,sobrenome,idade,nAcesso,funcao,salario,descricao)
values ("Justin","Bieber",27,004,"Estagiário",5000,"Funcionária destaque do mês");

alter table tb_colaboradores add salario double not null;

#Acessando a tabela
select * from tb_colaboradores;

#Pesquisando por salarios maior que 2000
select * from tb_colaboradores where salario > 2000;
#Pesquisando salarios menor que 2000
select * from tb_colaboradores where salario < 200;

#Atualizando um registro
update tb_colaboradores set salario =  5300 where id = 5;