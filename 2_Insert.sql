insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("123.111.258-97", "Ronaldinho Gaucho", 1852.312, "Brasileiro", 'M', '1986-01-07', '2002-08-22', 
    "ronaldinhogaucho@gmail.com", "986532741", 1400.200);
 
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario )    
	value ("124.862.258-11", "Roberto Carlos", 1852.413, "Brasileiro", 'M', '1962-02-11', '2008-02-06', 
    "robertocarlos@gmail.com", "986924741", 1200);

insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario )    
	value ("963.521.258-98", "Robinho pedalada", 1852.514, "Brasileiro", 'M', '1942-03-04', '2006-03-07', 
    "robinhopedalada@gmail.com", "982232741", 3000.00);

insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("908.111.560-97", "Gabriel Jesus", 1852.615, "Brasileiro", 'M', '1992-10-16', '2013-11-06', 
    "gabrieljesus@gmail.com", "986535593", 1350.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("141.405.298-98", "Neymar Junior", 3518.444, "Brasileiro", 'M', '1988-12-06', '2015-03-07', 
    "neymarjr@hotmail.com", "986538766", 1430.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("596.704.002-97", "Marta Maria", 1852.615, "Fracesa", 'F', '1977-02-06', '2007-08-07', 
    "martachuteira@hotmail.com", "986532118", 2000.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("111.704.002-97", "Joquebede Moises", 2563.615, "Chinesa", 'F', '1963-10-10', '2016-10-07', 
    "moisesjo@hotmail.com", "963852424", 1560.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("987.704.002-97", "Sara Albuquerque", 7541.785, "Italiana", 'F', '2000-02-06', '2013-08-07', 
    "sarinhaal@hotmail.com", "968685253", 1600.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("563.704.002-97", "Abigaiu Pereira", 1852.965, "Japonesa", 'F', '1963-02-10', '2007-08-07', 
    "abigaiupereira@hotmail.com", "984958586", 1300.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("865.704.002-97", "Adna Yasmim", 1458.145, "Portuguesa", 'F', '1985-10-06', '2004-10-07', 
    "adna123@hotmail.com", "986955593", 1300.00);
    
insert into musico (cpf, nome, identidade, nacionalidade, sexo, dataNasc, dataAdm, email, telefonePrinc, salario)    
	value ("811.704.002-97", "Suaeli Yasmim", 1158.145, "Portuguesa", 'F', '1985-10-07', '2004-10-07', 
    "sueli@hotmail.com", "819955593", 1300.00);
    
    
-- Instrumentos --

insert into instrumento (nome, tipo)
	value("violino", "corda");

insert into instrumento (nome, tipo)
	value("bateria", "percussão");
    
insert into instrumento (nome, tipo)
	value("Saxofone", "sopro" );

insert into instrumento (nome, tipo)
	value("viola", "corda");
    
insert into instrumento (nome, tipo)
	value("contra-baixo", "corda");

insert into instrumento (nome, tipo)
	value("harpa", "corda");
    
insert into instrumento (nome, tipo)
	value("piano", "corda");

insert into instrumento (nome, tipo)
	value("flauta", "sopro");
    
insert into instrumento (nome, tipo)
	value("clarinete", "sopro");

insert into instrumento (nome, tipo)
	value("oboé", "sopro");
 
    
-- Funcoes --

insert into funcao (nome, Instrumento_idInstrumento)
	value("violinista", 1);

insert into funcao (nome, Instrumento_idInstrumento)
	value("baterista", 2);
    
insert into funcao (nome, Instrumento_idInstrumento)
	value("Saxofonista",  3);

insert into funcao (nome, Instrumento_idInstrumento)
	value("violeiro", 4);

insert into funcao (nome, Instrumento_idInstrumento)
	value("baixista",  5);
    
insert into funcao (nome, Instrumento_idInstrumento)
	value("harpista",  6);

insert into funcao (nome, Instrumento_idInstrumento)
	value("pianista",  7);

insert into funcao (nome, Instrumento_idInstrumento)
	value("flautista",  8);

insert into funcao (nome, Instrumento_idInstrumento)
	value("clarinetista",  9); 

insert into funcao (nome, Instrumento_idInstrumento)
	value("oboísta",  10);
    
insert into funcao (nome)
	value("Maestro");


-- Sinfonia --
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Sexta Feira 13", "Jason", '2013-03-13');

insert into sinfonia(nome, compositor, dataCriacao)
	value ("O sete a um mais sofrido", "Brazil e Alemanha", '2016-03-13');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Atirei o pau no gato", "Dona Chica", '2012-03-13');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Sorriso respladecente", "Dragon ball GT", '2014-06-22');

insert into sinfonia(nome, compositor, dataCriacao)
	value ("Bum-para-bum", "Irmãos bum-para", '2016-06-13');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Alecrim dourado", "Meu Amor", '2010-05-13');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Anunciação", "Alceu Valença", '2022-03-13');

insert into sinfonia(nome, compositor, dataCriacao)
	value ("Aquarela", "Toquinho", '2004-08-14');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("O caderno", "Toquinho", '2005-02-11');
    
insert into sinfonia(nome, compositor, dataCriacao)
	value ("Esse cara sou eu", "Roberto Carlos", '2012-03-17');


-- Apresentacao --
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (1, "123.111.258-97", '2022-03-13', 1); 

insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (1, "124.862.258-11", '2022-03-13', 2);


insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (2, "963.521.258-98", '2022-03-13',3);

insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (3, "908.111.560-97", '2022-03-13',4);
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (3, "141.405.298-98", '2022-03-13',5);
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (4, "596.704.002-97", '2022-03-13',6);
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (5, "111.704.002-97", '2022-03-13',7);    
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (6, "987.704.002-97", '2022-03-13',8);
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (7, "563.704.002-97", '2022-03-13',9);
    
insert into Apresentacao (Sinfonia_idSinfonia, Musico_Cpf, data, Funcao_idFuncao)
	value (3, "865.704.002-97", '2022-03-13',10);
    
-- Orquestra --
    
insert into orquestra (nome, cidade, pais)
	value ("Imortais", "Recife", "Brasil");

insert into orquestra (nome, cidade, pais)
	value ("Accenture", "Recife", "Brasil");
    
insert into orquestra (nome, cidade, pais)
	value ("Código Sinfônico", "São Paulo", "Brasil");
    
insert into orquestra (nome, cidade, pais)
	value ("DevMelody", "São Paulo", "Brasil");
    
insert into orquestra (nome, cidade, pais)
	value ("Symphony of Code", "Acré", "Brasil");
    
insert into orquestra (nome, cidade, pais)
	value ("CodeWave Orchestra", "Londres", "Inglaterra");
    
insert into orquestra (nome, cidade, pais)
	value ("Orquestra Digital", "Seul ", "Coreia do Sul");
    
insert into orquestra (nome, cidade, pais)
	value ("Symphony of Solutions", "Cancún ", "México");
    
insert into orquestra (nome, cidade, pais)
	value ("Bits e Bytes", "Moscou ", "Rússia");
    
insert into orquestra (nome, cidade, pais)
	value ("The DevConductors", "Veneza ", "Itália");
    
 -- Constitui --
 
 insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (1, "123.111.258-97", 1);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (1, "124.862.258-11", 2);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (2, "963.521.258-98", 3);

insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (2, "908.111.560-97", 4);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (3, "141.405.298-98", 5);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (3, "596.704.002-97", 6);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (4, "111.704.002-97", 7);    
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (4, "987.704.002-97", 8);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (5, "563.704.002-97", 9);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (6, "865.704.002-97", 10);
    
insert into constitui (Orquestra_idOrquestra, Musico_Cpf, Funcao_idFuncao)
	value (6, "811.704.002-97", 11);
    
 -- EXECUCAO --
 
 insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (1, 1);
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (1, 2);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (2, 3);

insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (2, 4);

insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (10, 5);

insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (10, 6);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (4, 7);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (5, 8);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (6, 9);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (7, 10);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (8, 3);
    
insert into execucao (Orquestra_idOrquestra, Sinfonia_idSinfonia)
	value (9, 2);

 
 insert into endereco (uf, cidade, bairro, rua, numero, complemento, cep, Musico_Cpf)
	values ("PE", "Recife", "Rosa e Silva", "Rua quinze", 51, "Ap 1803", "51020-170", "123.111.258-97"),
		("PE", "Recife", "Campos Dourado", "Rua Cordeiro", 1345, "Ap 357", "51111-000", "124.862.258-11"),
        ("AC", "Rio Branco", "Dino City", "Rua Ti Rex", 1345, "Ap 357", "51111-000", "596.704.002-97"),
		("SP", "Santos", "Prado", "Rua Capitão Zuera", 453, "Ap 56", "38888-058", "141.405.298-98"),
		("SP", "Ribeirão Preto", "Madalena", "Rua Ricardo Salazar", 45, "Ap 501-A", "50720-123", "908.111.560-97"),
        ("BH", "Londres", "Campo Grande", "Rua Faz Chover", 1000, "Casa 02", "50887-170", "111.704.002-97"),
		("SP", "Seul", "Cha Grande", "Rua Desce e Sobe", 1, "Primeiro Andar", "51227-170","987.704.002-97"),
		("SP", "Mexico", "Bairro Novo", "Rua Faz Chover", 40, "Apto 15", "50087-170", "563.704.002-97"),
		("PE", "Recife", "Hipódromo", 'Rua Fulano de Tal', 100, "casa", "51041-500", "865.704.002-97"),
		("PE", "São Lourenço da mata", "Centro", "Rua Holanda", 08, "Quadra E", "54735-110", "963.521.258-98");
