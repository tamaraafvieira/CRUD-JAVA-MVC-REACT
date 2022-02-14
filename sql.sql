USE projetorecode4;

CREATE TABLE clientes (
	codigoCliente int not null primary key auto_increment,
    nome varchar(40),
    cpf char (11),
    email varchar(40),
    rua varchar(30),
    numero varchar(10),
    complemento varchar(40),
    cep char (8),
    situacao char(10)
);