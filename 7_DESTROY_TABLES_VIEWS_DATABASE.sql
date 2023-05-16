ALTER TABLE `escolademusica`.`constitui` 
DROP FOREIGN KEY `fk_Constitui_Funcao1`,
DROP FOREIGN KEY `fk_Constitui_Orquestra1`,
DROP FOREIGN KEY `fk_Constitui_Musico1`;

ALTER TABLE `escolademusica`.`execucao` 
DROP FOREIGN KEY `fk_Execucao_Sinfonia1`,
DROP FOREIGN KEY `fk_Execucao_Orquestra1`;

ALTER TABLE `escolademusica`.`apresentacao` 
DROP FOREIGN KEY `fk_Apresentacao_Musico1`,
DROP FOREIGN KEY `fk_Apresentacao_Sinfonia1`;

DROP TABLE
	`escolademusica`.`endereco`,
    `escolademusica`.`musico`,
    `escolademusica`.`constitui`,
    `escolademusica`.`orquestra`,
    `escolademusica`.`execucao`,
    `escolademusica`.`sinfonia`,
    `escolademusica`.`apresentacao`,
    `escolademusica`.`funcao`,
    `escolademusica`.`instrumento`;
    
DROP VIEW	`escolademusica`.`apresentacao_das_orquestras`;
DROP VIEW    `escolademusica`.`data_funcaodos_musicos`;
DROP VIEW    `escolademusica`.`Data_Apresentacao_Musicos`;
DROP VIEW    `escolademusica`.`email_musicos`;
DROP VIEW    `escolademusica`.`maestro_das_orquestras`;
DROP VIEW    `escolademusica`.`orquestra_estrangeira`;
DROP VIEW    `escolademusica`.`sinfonia_atuais`;
DROP VIEW   `escolademusica`.`telefone_musicos`;
DROP VIEW    `escolademusica`.`tipos_de_instrumentos`;
DROP VIEW   `escolademusica`.`uso_de_instrumento`;

-- DESTROY DATABASE --
DROP DATABASE `escolademusica`;
