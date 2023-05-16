-- 1. Em orquestra adiciona o atributo 'dataCriacao' --
ALTER TABLE orquestra ADD `dataCriacao` date NOT NULL;

-- 2. Em intrumento adicione o atributo para descrição --
ALTER TABLE instrumento add `descricao` VARCHAR(230);

-- 3. Remova a 'data de criação' das sinfonias --
ALTER TABLE sinfonia DROP COLUMN dataCriacao; 

-- 4. Troque o atributo 'data' na tabela 'apresentacao' por 'dataApre' --
ALTER TABLE apresentacao RENAME COLUMN data to dataApre;

-- 5. Altere o atriuto 'cidade' na tabela de 'endereco' para varchar(60) --
ALTER TABLE endereco MODIFY COLUMN cidade VARCHAR(60);
