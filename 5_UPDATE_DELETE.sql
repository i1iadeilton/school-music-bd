-- 1. Musico portador do cpf 123.111.258-97 cadastrou email errado, atualize--
update musico set email = "ronaldinho@gmail.com" where cpf = "123.111.258-97";

-- 2. O musico portador do cpf 124.862.258-11 trocou de número, atualize --
update musico set telefonePrinc = "81999693333" where cpf = "124.862.258-11";

-- 3. O musico portador do cpf '563.704.002-97' ganhou um aumento de R$ 250,00 --
UPDATE Musico SET Salario = Salario + 250 WHERE cpf = "563.704.002-97";

-- 4. O musico portador do cpf '908.111.560-97' trocou de endereço --
UPDATE endereco
SET 
rua = 'Rua dos anjos',
numero = '777',
cep = '51231-111',
complemento = "Casa nº 38"
WHERE endereco.Musico_Cpf = '908.111.560-97';

-- 5. A sinfonia 'Sexta Feira 13' mudou a data de apresentação para 2022-04-13 --
UPDATE apresentacao
SET apresentacao.data = "2022-04-13"
WHERE apresentacao.Sinfonia_idSinfonia = 1;

-- 6. O musico portador do CPF 865.704.002-97 vai apresentar a sinfonia 'O sete a um mais sofrido' como Maestro --
UPDATE apresentacao
SET apresentacao.Funcao_idFuncao = 11, apresentacao.Sinfonia_idSinfonia = 2
WHERE apresentacao.Musico_Cpf = "865.704.002-97";

-- 7. O musico portado do CPF 987.704.002-97 solicitou para registrar um nome social --
update musico set nomeSocial = "Carlinhos Baterista" where cpf = "987.704.002-97";


-- 8. A orquestra 'Imortais' agora está executando a sinfonia 'Aquarela' --
update execucao set Sinfonia_idSinfonia = 8 where Orquestra_idOrquestra = 1;

-- 9. A sinfonia 'anunciação' atualizou  a data de criação para 1995-08-22 --
UPDATE sinfonia
SET dataCriacao = "1995-08-22"
WHERE sinfonia.idSinfonia = 7;

-- 10. A sinfonia 'Bum-para-bum' atualizou o nome do compozitor para domiguinhos --
UPDATE sinfonia SET compositor = "Domiguinhos" WHERE idSinfonia = "5";

-- 11. A data de apresentação da sinfonia aquarela adiou para o dia 2023-09-29 --
update apresentacao set apresentacao.data = "2023-09-29" where apresentacao.Sinfonia_idSinfonia = 8;

-- 12. a orquestra imortais ataulizou sua cidade para nova iorque--
update orquestra 
set cidade = "nova iorque", pais = "EUA" 
where idOrquestra = "1" ;

-- 13. a orquestra digital ataulizou seu nome para pousada do amor --
update orquestra set nome = "pousada do amor" where idOrquestra = "7" ;

-- 14. A orquestra 'Symphony of Code' não faz mais parte da escola de música --
DELETE FROM orquestra WHERE orquestra.nome = "Symphony of Code";

-- 15. A sinfonia 'O sete a um mais sofrido' não faz mais parte do reportorio -- 
DELETE FROM execucao WHERE Sinfonia_idSinfonia = 2;

-- 16. O musico Robinho pedalada saiu da escola de música --
DELETE FROM constitui WHERE Musico_Cpf = "963.521.258-98";

--  17. A sinfonia 'Atirei o pau no gato' foi cadastrado com compositor errado --
UPDATE sinfonia set sinfonia.compositor = "Fábio Aurélio" WHERE sinfonia.idSinfonia = 3;

--  18. A orquestra 'Symphony of Code' foi registrada no local errado --
UPDATE orquestra 
SET cidade = "Piaui", pais = "Brasil" 
where idOrquestra = "5";

--  19. Um determinado músico não ta exercendo mais sua função na apresentação da sinfonia --
DELETE FROM apresentacao WHERE Funcao_idFuncao = 9;

-- 20. Um determinado músico TROCOU sua função na apresentação da sinfonia --
UPDATE apresentacao set Funcao_idFuncao = 6 WHERE Musico_Cpf = "596.704.002-97";
