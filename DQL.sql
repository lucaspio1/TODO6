select * from produtos order by valorProduto desc limit 3;
select idCliente, count(idCliente) from avaliacao group by idCliente;
select idProduto, avg(notaAvaliacao) from avaliacao group by idProduto;
select idProduto, dataAvaliacao from avaliacao order by dataAvaliacao desc;
select * from clientes where nomeCliente like 'Joana%';
select idProduto, avg(notaAvaliacao) as aval from avaliacao group by idProduto order by aval limit 1;
select idProduto as Avaliação_desatualizada from avaliacao where dataAvaliacao <= now()- interval 30 day;

select * from avaliacao