create database cosultoriomedico;

use consultoriomedico;

create table paciente (
    id int auto_increment,
    cpf char(11) not null,
    rg varchar(30) not null,
    nome varchar(255) not null,
    convenio varchar(20) not null,
     primary key (id)    
);

create table enfermeiro(
    id int auto_increment,
    cpf char(11) not null,
    Coren varchar(20) not null,
    nome varchar(255) not null,
    primary key(id)
);

create table triagem(
    id int auto_increment,
    data_triagem timestamp default current_timestamp, 
    peso double not null,
    pressao varchar(10) not null,
    tempertura double not null,
    id_paciente int not null,
    id_enfermeiro int not null,
    foreign key (id_paciente) references paciente(id), 
	foreign key (id_enfermeiro) references enfermeiro(id), 
    primary key (id)
);

create table especialidades (
    id int auto_increment,
    descricao varchar(150) not null,
    primary key (id)
);

create table medico (
    id int auto_increment,
    crm varchar(20) not null,
    cpf char(11) not null,
    nome varchar(255) not null,
    primary key (id)
);  

create table medico_especialidade (
    id_medico int not null,
    id_especialidade int not null,
    foreign key (id_medico) references medico(id),
    foreign key (id_especialidade) references especialidade(id),
    primary key (id_medico, id_especialidade)
);                     

create table consulta(
    id int auto_increment,
    data_consulta timestamp not null default current_timestamp,
    id_medico int not null,
    id_triagem int not null,
	foreign key (id_medico) references medico(id),
    foreign key (id_triagem) references triagem(id),
    primary key (id)
);                     

create table farmaceutico (
   id int auto_increment,
   nome varchar(255) not null,
   cpf char(11) not null,
   crf varchar(30) not null,
   primary key (id)
);

create table remedio (
   id int auto_increment,
   descricao varchar(150) not null,
   dosagem varchar(15) not null,
   apresentacao varchar(150) not null,
   primary key (id)
);

create table quarto(
   id int auto_increment,
   numero int not null,
   primary key (id)
);
create table internacao (
   id int auto_increment,
   data_entrada datetime not null default now(),
   data_saida date,
   id_quarto int not null,
   id_consulta int not null,
   primary key (id)
);

create table evolucao (
   id int auto_increment,
    descricao text not null,
    data_evolucao timestamp not null default current_timestamp,
    id_internacao int not null,
    id_medico int not null,
    foreign key (id_internacao) references internacao(id),
    foreign key (id_medico) references medico(id),
    primary key (id)
);


create table receita (
   id int auto_increment,
   data_receita timestamp not null default current_timestamp,
   id_enfermeiro int,
   id_consulta int not null,
   id_farmaceutico int,
   id_evolucao int,
   foreign key (id_enfermeiro) references enfermeiro(id),
   foreign key (id_consulta) references consulta(id),
   foreign key (id_farmaceutico) references farmaceutico(id),
   foreign key (id_evolucao) references evolucao(id),
   primary key (id)
);

create table receita_remedio (
    id_receita int not null,
    id_remedio int not null,
    como_tomar varchar(255) not null,
    foreign key (id_receita) references receita(id),
    foreign key (id_remedio) references remedio(id),
    primary key (id_receita, id_remedio)
);          


