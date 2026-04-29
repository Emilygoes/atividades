select * from pessoas;

create table servico(
id_servico int auto_increment primary key,
problema text not null,
servico_realizado text not null,
data_entrega date not null,
placa varchar(10),

foreign key (placa) references carros (placa)
)ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;



create table funcionarios(
cpf varchar(11) primary key,
nome varchar(45) not null,
data_nascimento date not null,
endereco varchar(100) not null
);


create table pagamento(
 id_pagamento int auto_increment primary key,
 valor decimal(10,2) not null,
 forma_pagamento varchar(30) not null,
 data_pagamento date not null,
 cpf_pessoa varchar(11),
 foreign key (cpf_pessoa) references pessoas(cpf)
 )ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

create table pecas(
id_peca int primary key,
estoque int not null,
nome varchar (45) not null,
id_servico int,

foreign key(id_servico) references servico (id_servico));




INSERT INTO funcionarios VALUES
('11111111111','Carlos Souza','1990-03-12','Rua A, 120'),
('22222222222','Fernanda Lima','1995-07-20','Rua B, 85'),
('33333333333','João Pedro','1987-11-02','Rua C, 210'),
('44444444444','Mariana Alves','1998-01-18','Rua D, 56'),
('55555555555','Pedro Henrique','1989-09-30','Rua E, 77'),
('66666666666','Aline Costa','1997-05-14','Rua F, 101'),
('77777777777','Lucas Martins','1985-06-08','Rua G, 43'),
('88888888888','Bianca Rocha','1996-12-22','Rua H, 98'),
('99999999999','Rafael Gomes','1991-08-11','Rua I, 65'),
('10101010101','Juliana Silva','1993-04-25','Rua J, 140');


INSERT INTO servico 
(problema, servico_realizado, data_entrega, placa)
VALUES
('Troca de óleo','Serviço concluído','2026-04-01','AAB5Y75'),
('Freios gastos','Pastilhas trocadas','2026-04-03','AGI7P92'),
('Alinhamento','Serviço realizado','2026-04-05','BCO7G81'),
('Problema elétrico','Fiação ajustada','2026-04-07','BCU2B31'),
('Bateria fraca','Bateria trocada','2026-04-09','BEC7F45'),
('Superaquecimento','Radiador reparado','2026-04-10','BEY6T57'),
('Suspensão ruim','Amortecedores trocados','2026-04-12','CBQ3K18'),
('Pneu furado','Conserto realizado','2026-04-14','CDE7M75'),
('Troca embreagem','Concluído','2026-04-16','CNB8E80'),
('Revisão geral','Finalizado','2026-04-18','DEV1F82');

INSERT INTO pagamento 
(valor, forma_pagamento, data_pagamento, cpf_pessoa)
VALUES
(150.00,'Pix','2026-04-01','017.847.573'),
(320.00,'Cartão','2026-04-03','035.376.953'),
(100.00,'Dinheiro','2026-04-05','039.169.565'),
(480.00,'Pix','2026-04-07','048.197.318'),
(220.00,'Cartão','2026-04-09','051.741.024'),
(350.00,'Pix','2026-04-10','079.924.548'),
(600.00,'Dinheiro','2026-04-12','079.920.925'),
(90.00,'Pix','2026-04-14','133.487.387'),
(750.00,'Cartão','2026-04-16','172.811.344'),
(500.00,'Pix','2026-04-18','173.023.845');

INSERT INTO pecas VALUES
(1,15,'Filtro de óleo',1),
(2,30,'Pastilha de freio',2),
(3,10,'Pneu',3),
(4,8,'Bateria',4),
(5,20,'Radiador',5),
(6,12,'Amortecedor',6),
(7,18,'Correia dentada',7),
(8,25,'Velas',8),
(9,14,'Kit embreagem',9),
(10,40,'Filtro de ar',10);
