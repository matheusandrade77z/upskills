-- PARTE 1 - PESSOAS
INSERT INTO pessoa
(id_pessoa, nome, cpf, data_nascimento, telefone, email, endereco)
VALUES
(1, 'Ana Souza', '11111111111', '2002-04-10',
 '(11) 99999-1001', 'ana@email.com', 'Rua A, 100'),

(2, 'Carlos Souza', '22222222222', '1975-08-20',
 '(11) 99999-1002', 'carlos@email.com', 'Rua A, 100'),

(3, 'Mariana Lima', '33333333333', '1990-02-15',
 '(11) 99999-1003', 'mariana@email.com', 'Rua B, 200'),

(4, 'João Professor', '44444444444', '1985-11-05',
 '(11) 99999-1004', 'joao@email.com', 'Rua C, 300'),

(5, 'Pedro Alves', '55555555555', '2001-06-12',
 '(11) 99999-1005', 'pedro@email.com', 'Rua D, 400');

-- PARTE 2 - LEADS E ALUNOS
INSERT INTO lead
(id_lead, id_pessoa, origem, data_primeiro_contato, status_lead)
VALUES
(1, 1, 'Instagram', '2026-01-10', 'convertido'),
(2, 5, 'Indicação', '2026-02-01', 'em atendimento');

INSERT INTO aluno
(rgm, id_pessoa, data_ingresso, situacao)
VALUES
(1001, 1, '2026-02-01', 'ativo'),
(1002, 5, '2026-03-01', 'ativo');

INSERT INTO responsavel
(id_responsavel, id_pessoa)
VALUES
(1, 2);

INSERT INTO responsabilidade
(id_responsabilidade, id_responsavel, rgm,
 grau_parentesco, responsavel_principal, data_inicio)
VALUES
(1, 1, 1001, 'Pai', TRUE, '2026-02-01');

-- PARTE 3 - FUNCIONARIOS E PROFESSORES
INSERT INTO funcionario
(id_funcionario, id_pessoa, setor, data_admissao, situacao)
VALUES
(1, 3, 'Secretaria', '2024-01-15', 'ativo');

INSERT INTO professor
(id_professor, id_pessoa, formacao, situacao)
VALUES
(1, 4, 'Análise e Desenvolvimento de Sistemas', 'ativo');

-- PARTE 4 - CURSOS E MODULOS
INSERT INTO curso
(id_curso, nome, carga_horaria_total, modalidade,
 descricao, valor, situacao)
VALUES
(1, 'Introdução à Programação', 80, 'presencial',
 'Fundamentos de lógica e programação.', 1200.00, 'ativo'),

(2, 'Banco de Dados', 60, 'online',
 'Modelagem e consultas SQL.', 900.00, 'ativo');

INSERT INTO modulo
(id_curso, numero_modulo, nome, carga_horaria, ementa)
VALUES
(1, 1, 'Lógica de Programação', 40,
 'Algoritmos e estruturas básicas.'),

(1, 2, 'Fundamentos de Python', 40,
 'Sintaxe e programação em Python.'),

(2, 1, 'Modelagem de Dados', 30,
 'Entidades, relacionamentos e normalização.'),

(2, 2, 'SQL Básico', 30,
 'Criação, inserção e consulta de dados.');

-- PARTE 5 - TURMAS E MATRICULAS
INSERT INTO turma
(id_turma, nome_codigo, id_curso, id_professor,
 data_inicio, data_fim, horario, turno, vagas_totais, situacao)
VALUES
(1, 'PROG-2026-A', 1, 1, '2026-02-01',
 '2026-06-30', '19:00-21:00', 'noite', 25, 'em andamento'),

(2, 'BD-2026-A', 2, 1, '2026-03-01',
 '2026-05-30', '19:00-21:00', 'noite', 20, 'em andamento');

INSERT INTO matricula
(id_matricula, rgm, id_turma, data_matricula,
 status, percentual_frequencia, media_final)
VALUES
(1, 1001, 1, '2026-02-01', 'ativa', 92.00, 8.50),

(2, 1002, 2, '2026-03-01', 'ativa', 85.00, 7.00);

-- PARTE 6 - FREQUENCIA E AVALIACOES
INSERT INTO frequencia
(id_matricula, data_aula, situacao_presenca, justificativa)
VALUES
(1, '2026-02-05', 'presente', NULL),

(1, '2026-02-07', 'presente', NULL),

(2, '2026-03-05', 'falta', 'Problema de saúde');

INSERT INTO avaliacao_realizada
(id_avaliacao, id_matricula, id_curso, numero_modulo,
 numero_tentativa, nota, data_realizacao, situacao)
VALUES
(1, 1, 1, 1, 1, 8.50, '2026-03-10', 'aprovado'),

(2, 2, 2, 1, 1, 7.00, '2026-03-20', 'aprovado');

-- PARTE 7 - CONTRATOS E PARCELAS
INSERT INTO contrato
(id_contrato, id_matricula, data_assinatura,
 valor_total, numero_parcelas, forma_cobranca,
 status, id_responsavel)
VALUES
(1, 1, '2026-02-01', 1200.00, 3,
 'parcelado', 'assinado', 1);

INSERT INTO parcela
(id_contrato, numero_parcela, valor,
 data_vencimento, status, saldo_devedor)
VALUES
(1, 1, 400.00, '2026-02-10', 'paga', 0.00),

(1, 2, 400.00, '2026-03-10', 'pendente', 400.00),

(1, 3, 400.00, '2026-04-10', 'pendente', 400.00);

INSERT INTO pagamento
(id_contrato, numero_parcela, seq_pagamento,
 valor_pago, data_pagamento, forma_pagamento, status)
VALUES
(1, 1, 1, 400.00, '2026-02-09', 'PIX', 'confirmado');

-- PARTE 8 - PERFIS E USUARIOS
INSERT INTO perfil
(id_perfil, nome, descricao)
VALUES
(1, 'Administrador', 'Acesso geral ao sistema.'),

(2, 'Secretaria', 'Gerencia cadastros e matrículas.'),

(3, 'Professor', 'Acompanha turmas e avaliações.');

INSERT INTO usuario
(id_usuario, id_pessoa, id_perfil, login, situacao, ultimo_acesso)
VALUES
(1, 3, 2, 'mariana.secretaria', 'ativo',
 '2026-04-01 09:30:00'),

(2, 4, 3, 'joao.professor', 'ativo',
 '2026-04-02 14:00:00');

-- PARTE 9 - CERTIFICADOS
INSERT INTO certificado
(codigo_verificacao, tipo, data_emissao, status, id_matricula)
VALUES
('UP-2026-0001', 'Conclusão de curso',
 '2026-07-01', 'valido', 1);