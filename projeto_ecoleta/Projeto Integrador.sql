CRIAR TABELA `Usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar (255) NÃO NULO,
	`e-mail` varchar (255) NÃO NULO,
	`senha` varchar (500) NÃO NULO,
	`Coletor` BOOLEAN NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `Temas` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`Disponibilizacao de material` varchar (255) NÃO NULO,
	`Disponibilizacao de coleta` varchar (255) NOT NULL,
	`Experiencias` varchar (255) NÃO NULO,
	`Compra e venda` varchar (400) NÃO NULO,
	CHAVE PRIMÁRIA (`id`)
);

CRIAR TABELA `Postagem` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`título` varchar (255) NÃO NULO,
	`texto` varchar (5000) NÃO NULO,
	`localizacao` varchar (255) NÃO NULO,
	`data` TIMESTAMP NOT NULL,
	`tema_id` bigint NÃO NULO,
	`usuario_id` bigint NOT NULL,
	CHAVE PRIMÁRIA (`id`)
);

ALTER TABLE `Post` ADD CONSTRAINT` Post_fk0` FOREIGN KEY (`tema_id`) REFERÊNCIAS` Temas` (`id`);

ALTER TABLE `Post` ADD CONSTRAINT` Post_fk1` FOREIGN KEY (`usuario_id`) REFERÊNCIAS` Usuario` (`id`);




