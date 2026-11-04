-- 1. LISTAR PESSOAS CADASTRADAS
SELECT id_pessoa, nome, cpf, email
FROM pessoa
ORDER BY nome;

-- 2. LISTAR ALUNOS COM SEUS DADOS PESSOAIS
SELECT a.rgm,
       p.nome,
       a.data_ingresso,
       a.situacao
FROM aluno a
JOIN pessoa p
ON p.id_pessoa = a.id_pessoa
ORDER BY p.nome;

-- 3. LISTAR CURSOS ATIVOS E SEUS VALORES
SELECT id_curso,
       nome,
       modalidade,
       carga_horaria_total,
       valor
FROM curso
WHERE situacao = 'ativo'
ORDER BY nome;

-- 4. MOSTRAR TURMAS, CURSOS E PROFESSORES
SELECT t.nome_codigo AS turma,
       c.nome AS curso,
       p.nome AS professor,
       t.data_inicio,
       t.situacao
FROM turma t
JOIN curso c
ON c.id_curso = t.id_curso
JOIN professor pr
ON pr.id_professor = t.id_professor
JOIN pessoa p
ON p.id_pessoa = pr.id_pessoa
ORDER BY t.data_inicio;

-- 5. MOSTRAR MATRICULAS COM ALUNO E TURMA
SELECT m.id_matricula,
       pe.nome AS aluno,
       t.nome_codigo AS turma,
       m.data_matricula,
       m.status
FROM matricula m
JOIN aluno a
ON a.rgm = m.rgm
JOIN pessoa pe
ON pe.id_pessoa = a.id_pessoa
JOIN turma t
ON t.id_turma = m.id_turma
ORDER BY m.id_matricula;

-- 6. CONSULTAR NOTAS DOS ALUNOS
SELECT pe.nome AS aluno,
       c.nome AS curso,
       mo.nome AS modulo,
       ar.nota,
       ar.situacao
FROM avaliacao_realizada ar
JOIN matricula m
ON m.id_matricula = ar.id_matricula
JOIN aluno a
ON a.rgm = m.rgm
JOIN pessoa pe
ON pe.id_pessoa = a.id_pessoa
JOIN modulo mo
ON mo.id_curso = ar.id_curso
AND mo.numero_modulo = ar.numero_modulo
JOIN curso c
ON c.id_curso = mo.id_curso
ORDER BY pe.nome, c.nome;

-- 7. CONSULTAR PARCELAS PENDENTES OU VENCIDAS
SELECT c.id_contrato,
       p.numero_parcela,
       p.valor,
       p.data_vencimento,
       p.status,
       p.saldo_devedor
FROM parcela p
JOIN contrato c
ON c.id_contrato = p.id_contrato
WHERE p.status IN ('pendente', 'vencida')
ORDER BY p.data_vencimento;

-- 8. CONSULTAR PAGAMENTOS CONFIRMADOS
SELECT pg.id_contrato,
       pg.numero_parcela,
       pg.valor_pago,
       pg.data_pagamento,
       pg.forma_pagamento
FROM pagamento pg
WHERE pg.status = 'confirmado'
ORDER BY pg.data_pagamento;

-- 9. QUANTIDADE DE ALUNOS MATRICULADOS POR TURMA
SELECT t.nome_codigo AS turma,
       c.nome AS curso,
       COUNT(m.id_matricula) AS total_matriculas
FROM turma t
JOIN curso c
ON c.id_curso = t.id_curso
LEFT JOIN matricula m
ON m.id_turma = t.id_turma
GROUP BY t.id_turma, t.nome_codigo, c.nome
ORDER BY t.nome_codigo;

-- 10. LISTAR CERTIFICADOS E SEUS ALUNOS
SELECT ce.codigo_verificacao,
       ce.tipo,
       ce.data_emissao,
       pe.nome AS aluno,
       ce.status
FROM certificado ce
JOIN matricula m
ON m.id_matricula = ce.id_matricula
JOIN aluno a
ON a.rgm = m.rgm
JOIN pessoa pe
ON pe.id_pessoa = a.id_pessoa
ORDER BY ce.data_emissao DESC;