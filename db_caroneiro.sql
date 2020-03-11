create table T_USUARIO(
    codigo int not null auto_increment,
    nome varchar(100),
    cidade varchar(100),
    estado varchar(2),
    data_nascimento datetime,
    tipo varchar(50),
    primary key(codigo)
)


desc T_USUARIO;

create table T_VIAGEM(
    codigo int not null auto_increment,
    data_viagem datetime,
    motorista int,
    passageiro int,
    origem varchar(100),
    destino varchar(100),
    primary key(codigo),
    constraint fkmotorista foreign key (motorista) references T_USUARIO (codigo), 
    constraint fkpassageiro foreign key (passageiro) references T_USUARIO (codigo) 
)

desc T_VIAGEM;

create table T_VEICULO(
    codigo int not null auto_increment,
    modelo varchar(100),
    marca varchar(50),
    ano int,
    cor varchar(50),
    primary key(codigo)
)

desc T_VEICULO;

