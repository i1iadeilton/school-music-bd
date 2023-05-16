-- 1. relatorio dos musicos trazendo seu cpf, nome, sexo , salário e data de adimissão junto com a cidade e o bairro. –

select mus.cpf as "CPF", mus.nome "Nome", mus.sexo "Sexo", mus.salario "Salário", mus.dataAdm "Data de Admissão",
	en.cidade "Cidade", en.bairro "Bairro"
	from musico mus 
		inner join endereco en
			on mus.cpf = en.musico_cpf
				order by mus.salario;

-- 2. relatorio da função trazendo o id e nome da função, trazendo também o  nome e id do instrumento. --          
  
select fun.idFuncao as "ID", fun.nome "Função", inst.nome "Instrumento", inst.idInstrumento
	from funcao fun
		left join instrumento inst
			on fun.idFuncao = inst.idInstrumento
				order by fun.idFuncao;
  
        

-- 3. relatorio dos musicos e as sinfonias que apresentam--
select mus.cpf as "CPF", mus.nome "Nome", mus.sexo "Sexo", sinf.nome "Sinfonia"
	from apresentacao apre
		inner join musico mus on apre.musico_cpf = mus.cpf
        left join sinfonia sinf on apre.sinfonia_idSinfonia = sinf.idSinfonia
			order by mus.nome;
            
-- 4. relatorio dos musics que tocam sinfonias criadas antes de 2012--
select mus.cpf as "CPF", mus.nome "Nome", mus.sexo "Sexo", sinf.nome "Sinfonia", sinf.dataCriacao "Data criacao sinfonia"
	from apresentacao apre
		inner join musico mus on apre.musico_cpf = mus.cpf
        left join sinfonia sinf on apre.sinfonia_idSinfonia = sinf.idSinfonia
			where sinf.dataCriacao < '2012-03-13'
			order by sinf.dataCriacao;
            
			
-- 5. relatorio das orquestras e as sinfonias que executam--
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", sinf.compositor "Compositor"
	from execucao exec
		inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
        inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
			order by orq.idOrquestra;
            



-- 6.  relatorio das orquestras e as musico que fazem parte--
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", mus.cpf "CPF", mus.sexo "Sexo", mus.nome "Musico"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			order by orq.idOrquestra;
            
-- 7. relatorio das orquestras e o salário dos musicos que fazem parte--
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", mus.cpf "CPF", mus.nome "Musico", mus.sexo "Sexo", mus.salario "Salário"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			order by mus.salario desc;
            
-- 8. relatorio em quais orquestras estão os musicos que recebem mais que 1500--
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", mus.cpf "CPF", mus.nome "Musico", mus.sexo "Sexo", mus.salario "Salário"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			where mus.salario > 1500
				order by mus.salario desc;
                
-- 9. relatorio dos musicos que recebem valor igual ou maior que média de salario--
select orq.idOrquestra as "ID", orq.nome "Orquestra", mus.dataAdm "Data adimissão", mus.cpf "CPF", mus.nome "Musico", mus.sexo "Sexo", round(mus.salario, 2)  "Salário"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			where mus.salario >= (SELECT AVG(salario) FROM musico)
				order by mus.salario desc;
                
-- 10. relatorio dos musicos que foram adimitidos de 2006-05-12 e quais sinfonia tocam --
select mus.cpf as "CPF", mus.dataAdm "Data adimissão", mus.nome "Nome", mus.sexo "Sexo", sinf.nome "Sinfonia"
	from apresentacao apre
		inner join musico mus on apre.musico_cpf = mus.cpf
        inner join sinfonia sinf on apre.sinfonia_idSinfonia = sinf.idSinfonia
			where mus.dataAdm > "2006-05-12"
			order by mus.nome;
            
-- 11. Quais musicos de pernambuco que tocam a sinfonia sexta feira 13 --
select mus.cpf as "CPF", mus.nome "Nome", mus.sexo "Sexo", sinf.nome "Sinfonia Tocada"
	from apresentacao apre
		inner join musico mus on apre.musico_cpf = mus.cpf
        inner join endereco ende on ende.musico_cpf = mus.cpf
        inner join sinfonia sinf on apre.sinfonia_idSinfonia = sinf.idSinfonia
			where ende.uf = "PE" && sinf.nome = 'Sexta Feira 13'
			order by mus.nome;
            
-- 12. relatorio das orquestras e as mulheres que fazem parte--
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", mus.cpf "CPF", mus.sexo "Sexo", mus.nome "Musico"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			where mus.sexo = 'F'
			order by orq.idOrquestra;



-- 13. relatorio das orquestras que tem musicos com endereço em pernambuco--
select orq.idOrquestra as "ID", orq.nome "Orquestra", mus.cpf "CPF",  mus.sexo "Sexo", mus.nome "Musico", ende.uf "Estado do musico"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
        inner join endereco ende on ende.Musico_Cpf = mus.cpf
			where ende.uf = 'PE'
			order by orq.idOrquestra;
            
-- 14. relatorio das orquestras e das funcções e instrumentos que possuem --
select orq.idOrquestra as "ID", orq.nome "Nome", fun.nome "Funções", inst.nome "Instrumento"
	from constitui const
		inner join orquestra orq on orq.idOrquestra = const.Orquestra_idOrquestra
        inner join funcao fun on fun.idFuncao =const.Funcao_idFuncao
        right join instrumento inst on inst.idInstrumento = fun.Instrumento_idInstrumento
			order by orq.idOrquestra;

-- 15. relatorio das orquestras e quantos instrumento do TIPO Corda tem em cada uma. –

select orq.idOrquestra as "ID", orq.nome "Nome", count(inst.tipo) "Instrumentos tipo corda"
	from constitui const
		inner join orquestra orq on orq.idOrquestra = const.Orquestra_idOrquestra
        inner join funcao fun on fun.idFuncao =const.Funcao_idFuncao
        right join instrumento inst on inst.idInstrumento = fun.Instrumento_idInstrumento
			where inst.tipo = "corda"
				group by orq.idOrquestra
					order by orq.idOrquestra;
      
--  16. relatorio das cidades e bairros dos musicos--
select mus.cpf as "CPF", mus.nome "Nome", mus.sexo "Sexo", ende.cidade "Cidade", ende.bairro "Bairro"
	from musico mus
		inner join endereco ende on ende.musico_cpf = mus.cpf
        	order by mus.nome;