CREATE TABLE clientes 
(id INTEGER PRIMARY KEY,
nome TEXT NOT NULL,
email TEXT NOT NULL UNIQUE,
empresa TEXT NOT NULL);



CREATE TABLE chamados 
(id INTEGER PRIMARY KEY,
titulo TEXT NOT NULL,
descricao TEXT NOT NULL,
status TEXT DEFAULT 'Aberto' CHECK (status IN ('Aberto','Em andamento','Resolvido')),
cliente_id INTEGER NOT NULL,
FOREIGN KEY (cliente_id)
REFERENCES clientes(id)
ON DELETE CASCADE


);

INSERT INTO clientes (nome,email,empresa) VALUES
('Rafael', 'Rafael1@email.com', 'Twitter'),
('Gabriel', 'Gabriel1@email.com', 'Youtube'),
('Vinicius', 'Vinicius1@email.com', 'Google');


INSERT INTO chamados (titulo,descricao,status,cliente_id) VALUES
('Impressora sem tinta' ,'Impressora Acabou o tonner.', 'Aberto', 2),
('Computador não liga' ,'Falhas de energia ou componentes internos.', 'Em andamento', 3),
('Impressora offline ou travada' ,'Erros físicos ou de rede na impressora.', 'Aberto', 1),
('Lentidão excessiva' ,'Computador lento para realizar tarefas básicas.', 'Resolvido', 2),
('Sem acesso à internet' ,'Queda de conectividade.', 'Em andamento', 3);


--  BLOCO 1 — SELECT com filtro

--Exercício 1
--Buscar todos os chamados com status 'Aberto'.
SELECT * FROM "chamados" WHERE "status" = 'Aberto';

--Exercício 2
--Buscar chamados de um cliente específico (ex: cliente_id = 2).
SELECT * FROM "chamados" where "cliente_id" = 2;

-- Exercício 3
--Buscar chamados que NÃO estejam resolvidos.
--Dica: use operador diferente de.
SELECT * FROM "chamados" WHERE "status" != 'Resolvido';

--BLOCO 2 — UPDATE
-- Exercício 4
--Atualizar o status de um chamado para 'Em andamento'.
UPDATE "chamados" SET "status" = 'Em andamento' WHERE id = 1;

-- Exercício 5
--Atualizar todos os chamados de um cliente específico para 'Resolvido'.

UPDATE "chamados" SET "status" = 'Resolvido' WHERE cliente_id = 3;

-- BLOCO 3 — DELETE
--Exercício 6
--Deletar um chamado específico pelo id.
DELETE FROM chamados WHERE id = 1;

--Exercício 7
--Deletar todos os chamados que estejam resolvidos.
--Cuidado: isso apaga dados mesmo.

DELETE FROM chamados WHERE status = 'Resolvido';

-- BLOCO 4 — Filtros mais inteligentes
-- Exercício 8
--Buscar chamados cujo título contenha a palavra "Erro".
SELECT * FROM chamados WHERE titulo LIKE '%Erro%';

-- Exercício 9
--Buscar clientes cuja empresa comece com a letra "T".

SELECT * FROM clientes WHERE empresa LIKE 'T%';
