-- 1. Cria uma view para listar as mulheres que constitui orquestras que não são do Brasil--
create view orquestra_estrangeira
	as select orq.nome "Orquestra", orq.cidade "País", mus.cpf "CPF",  mus.nome "Musico", mus.sexo "Sexo"
	from constitui const
		inner join orquestra orq on const.orquestra_idOrquestra = orq.idOrquestra
        inner join musico mus on const.musico_cpf = mus.cpf
			where mus.sexo = 'F' && orq.pais != "Brasil"
			order by mus.nome;
            
-- 2. Create Views das datas que as orquestras vão apresentar as sinfonias--
create view Apresentacao_das_Orquestras as 
	select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", apr.data "Data Apresentação" 
		from execucao exec
			inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
			inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
			inner join apresentacao apr on apr.Sinfonia_idSinfonia = sinf.idSinfonia
				order by orq.idOrquestra;
                
-- 3. Create Views das datas de apresentação dos musicos e a sinfonia tocada--
create view Data_Apresentacao_Musicos as 
	select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", mus.nome "Nome do Musico",apr.data "Data Apresentação" 
			from execucao exec
				inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
				inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
				inner join apresentacao apr on apr.Sinfonia_idSinfonia = sinf.idSinfonia
				inner join musico mus on mus.cpf = apr.Musico_Cpf
					order by orq.idOrquestra;
                
                
-- 4. Create Views das datas de apresentação dos musicos, função desempenhada e a sinfonia tocada--
create view Data_FuncaoDos_Musicos as 
	select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", mus.nome "Musico", fun.nome "Função", apr.data "Data Apresentação" 
			from execucao exec
				inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
				inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
				inner join apresentacao apr on apr.Sinfonia_idSinfonia = sinf.idSinfonia
				inner join musico mus on mus.cpf = apr.Musico_Cpf
				inner join apresentacao aprM on aprM.Musico_Cpf = mus.cpf
				inner join funcao fun on fun.idFuncao = apr.Funcao_idFuncao
					order by orq.idOrquestra;
                    
-- 5. Create Views das datas que os musicos vão se apresentar, qual sinfonia tocam, sua funcao e instrumento que vão tocar.--
create view Uso_de_Instrumento as 
	select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", mus.nome "Musico", fun.nome "Função", inst.nome "Instrumento", apr.data "Data Apresentação" 
			from execucao exec
				inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
				inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
				inner join apresentacao apr on apr.Sinfonia_idSinfonia = sinf.idSinfonia
				inner join musico mus on mus.cpf = apr.Musico_Cpf
				inner join apresentacao aprM on aprM.Musico_Cpf = mus.cpf
				inner join funcao fun on fun.idFuncao = apr.Funcao_idFuncao
                right join instrumento inst on inst.idInstrumento = fun.Instrumento_idInstrumento
					order by orq.idOrquestra;
                    

-- 6. Create Views em relação as orquestras quais tipos de instrumento vão ser utilizado na apresentação de cada sinfonia em suas respectivas data--
create view Tipos_de_Instrumentos as 
select orq.idOrquestra as "ID", orq.nome "Orquestra", orq.cidade "Cidade", sinf.nome "Sinfonia", inst.tipo "Tipo de Instrumento", apr.data "Data Apresentação" 
			from execucao exec
				inner join orquestra orq on exec.orquestra_idOrquestra = orq.idOrquestra
				inner join sinfonia sinf on exec.sinfonia_idSinfonia = sinf.idSinfonia
				inner join apresentacao apr on apr.Sinfonia_idSinfonia = sinf.idSinfonia
				inner join funcao fun on fun.idFuncao = apr.Funcao_idFuncao
                right join instrumento inst on inst.idInstrumento = fun.Instrumento_idInstrumento
					order by orq.idOrquestra;
                    
-- 7. Create Views em relação as orquestras quais musicos tem número de telefone com dd 98--
create view Telefone_Musicos as 
select orq.idOrquestra as "ID", orq.nome "Orquestra", mus.nome "Musico", mus.telefonePrinc "Telefone" 
			from constitui const
				inner join orquestra orq on orq.idOrquestra = const.Orquestra_idOrquestra
				inner join musico mus on mus.cpf = const.Musico_Cpf
					where mus.telefonePrinc like "98%"
					order by orq.idOrquestra;
                    
-- 8. Create Views dos maestros das orquestras--
create view  Maestro_das_Orquestras as 
select orq.idOrquestra as "ID", orq.nome "Orquestra", mus.nome "Musico", fun.nome "Função"
			from constitui const
				inner join orquestra orq on orq.idOrquestra = const.Orquestra_idOrquestra
				inner join musico mus on mus.cpf = const.Musico_Cpf
                inner join funcao fun on fun.idFuncao = const.Funcao_idFuncao
					where fun.nome like "Maestro"
						order by orq.idOrquestra;
                        
-- 9. Create Views dos emails dos musicos de cada orquestra--
create view Email_Musicos as
select orq.idOrquestra as "ID", orq.nome "Orquestra", mus.nome "Musico", mus.email "Email"
			from constitui const
				inner join orquestra orq on orq.idOrquestra = const.Orquestra_idOrquestra
				inner join musico mus on mus.cpf = const.Musico_Cpf
						order by orq.idOrquestra;
                        
-- 10. Create Views das orquestras que executam sinfonias criadas em '2012-03-13' --
create view Sinfonia_Atuais as
	select orq.idOrquestra as "ID", orq.nome "Orquestra", sin.nome "Sinfonia", sin.dataCriacao "Data de Criação"
		from execucao exe
			inner join orquestra orq on orq.idOrquestra = exe.Orquestra_idOrquestra
			inner join sinfonia sin on sin.idSinfonia = exe.Sinfonia_idSinfonia
				where sin.dataCriacao > "2012-03-13"
					order by orq.idOrquestra;