CREATE TABLE IF NOT EXISTS Produtos (
    idproduto INT PRIMARY KEY AUTO_INCREMENT,
    skuProduto INT(7) NOT NULL,
    descricaoProduto VARCHAR(45) NOT NULL,
    caracteProduto VARCHAR(45) NOT NULL,
    custoProduto DECIMAL(10 , 2 ) NOT NULL,
    valorProduto DECIMAL(10 , 2 ) NOT NULL,
    fornecedorProduto BIGINT(14) NOT NULL,
    pesoProduto NUMERIC(30 , 2 ) NOT NULL
);

CREATE TABLE IF NOT EXISTS Clientes (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(60) NOT NULL,
    cpf BIGINT(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS Avaliacao (
    idAvaliacao INT PRIMARY KEY AUTO_INCREMENT,
    notaAvaliacao INT NOT NULL,
    idCliente INT(100) NOT NULL,
    idProduto INT(100) NOT NULL,
    tituloAvaliacao VARCHAR(60) NOT NULL,
    dataAvaliacao DATE NOT NULL,
    comentarioAvaliacao VARCHAR(100) NOT NULL,
    CONSTRAINT fk_ProdAval FOREIGN KEY (idProduto)
        REFERENCES Produtos (idproduto),
    CONSTRAINT fk_cliAval FOREIGN KEY (idCliente)
        REFERENCES Clientes (idCliente)
);



insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542896,'Mini Projetor Portátil','Sistema de projeção',100.25,250.65,13236697000146,5);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542897,'Galaxy Tab A7','Tablet SAMSUNG',500.85,700.65,13236697000146,0.4);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542898,'ACER Notebook Gamer Nitro 5','Notebook Gamer',2000.25,4050.65,13236697000146,2.6);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542899,'Cadeira Gamer Acer','Gadeira Super confort',900.05,2500.75,13236697000146,15.9);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542791,'Drone Portátil','Drone alta Duração',900.60,1250.65,13236697000146,0.2);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542792,'Headset Gamer Sem Fio Logitech','Headset Gamer',900.60,2050.65,13236697000146,0.4);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542793,'Mouse Gamer Sem Fio Logitech','Mouse Gamer',1000.15,1250.65,13236697000146,0.7);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542794,'Mouse Pad Rígido','MOUSE PAD',25.25,50.65,13236697000146,0.1);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5542795,'Console XboX','XBOX ONE',1000.50,2050.65,13236697000146,5);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5541234,'PLAYSTATION 5','PS5',1000.05,2500.65,13236697000146,5);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (1232896,'XIOMI POCO F4','SMARTPHONE 1TB ',900.25,2500.65,13236697000146,0.25);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5512396,'EchoDot 4 ','Sistema Alexa',800.25,1250.65,13236697000146,2.5);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5585296,'Impressora HP','Multifuncional',500.25,950.65,13236697000146,5.3);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5596396,'SmartTV Led','42 Polegadas',1000.25,2050.65,13236697000146,7.5);

insert into produtos (skuproduto,
descricaoProduto,caracteProduto,
custoProduto,valorProduto,
fornecedorProduto,pesoProduto) 
values (5574196,'Aspirador robo','Robo aspirador de pó',100.25,250.65,13236697000146,3.5);


insert into clientes (nomeCliente,cpf) values ("Sophie Vera Dias",26642691199);
insert into clientes (nomeCliente,cpf) values ("Kevin Fábio Benjamin Alves",95090540381);
insert into clientes (nomeCliente,cpf) values ("Letícia Ana Sônia Porto",22587142571);
insert into clientes (nomeCliente,cpf) values ("Luana Raquel Natália Corte Real",92806663806);
insert into clientes (nomeCliente,cpf) values ("Vinicius Ian Tomás Almeida",69444289893);
insert into clientes (nomeCliente,cpf) values ("Arthur Vicente Iago da Silva",19040379254);
insert into clientes (nomeCliente,cpf) values ("Eliane Carolina Agatha Brito",94334369626);
insert into clientes (nomeCliente,cpf) values ("Yuri Pedro Castro",55805398192);
insert into clientes (nomeCliente,cpf) values ("Vicente Luiz Gomes",35703916631);
insert into clientes (nomeCliente,cpf) values ("Joana Brito Dias",21460642694);

insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2020-12-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",1,4,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2021-10-15',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",2,4,1);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2018-06-20',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",3,2,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente)  
values ("Bom Produto",'2017-02-21',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",4,4,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2016-05-30',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",5,5,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente)  
values ("Produto bom",'2021-10-09',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",6,4,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2018-11-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",7,1,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Bom Produto",'2021-07-07',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",8,4,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2018-02-02',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",9,4,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2020-03-06',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",10,3,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2022-03-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",11,2,1);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente)  
values ("Bom Produto",'2021-08-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",12,5,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2022-01-01',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",13,5,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2019-12-06',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",14,4,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2021-10-13',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",15,2,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Bom Produto",'2021-10-15',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",1,4,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2022-05-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",2,4,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2019-10-07',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",3,1,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Bom Produto",'2021-10-21',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",4,4,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2021-10-11',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",5,4,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2021-09-11',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",6,5,10);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2010-10-11',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",7,3,9);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Bom Produto",'2019-11-01',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",8,4,8);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2021-11-05',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",9,4,7);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Produto bom",'2021-06-11',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",10,5,6);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2020-05-20',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",11,2,5);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Bom Produto",'2021-10-11',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",12,4,4);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Otimo Produto",'2022-02-02',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",13,5,3);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente)  
values ("Produto bom",'2021-10-15',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",14,5,2);
insert into avaliacao(tituloAvaliacao, dataAvaliacao, comentarioAvaliacao,idproduto,notaAvaliacao,idCliente) 
values ("Péssimo Produto",'2019-09-12',"Lorem Ipsum is simply dummy text of the printing and typesetting industry.",15,1,2);
