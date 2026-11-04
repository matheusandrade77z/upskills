-- 1. ALUNOS SEM PESSOA CORRESPONDENTE
SELECT a.rgm, a.id_pessoa, a.situacao
FROM aluno a
LEFT JOIN pessoa p
ON p.id_pessoa = a.id_pessoa
WHERE p.id_pessoa IS NULL;

-- 2. MATRICULAS SEM ALUNO OU TURMA
SELECT m.id_matricula, m.rgm, m.id_turma
FROM matricula m
LEFT JOIN aluno a
ON a.rgm = m.rgm
LEFT JOIN turma t
ON t.id_turma = m.id_turma
WHERE a.rgm IS NULL
OR t.id_turma IS NULL;

-- 3. CONTRATOS SEM MATRICULA
SELECT c.id_contrato, c.id_matricula, c.status
FROM contrato c
LEFT JOIN matricula m
ON m.id_matricula = c.id_matricula
WHERE m.id_matricula IS NULL;

-- 4. PAGAMENTOS SEM PARCELA CORRESPONDENTE
SELECT pg.id_contrato, pg.numero_parcela, pg.seq_pagamento
FROM pagamento pg
LEFT JOIN parcela p
ON p.id_contrato = pg.id_contrato
AND p.numero_parcela = pg.numero_parcela
WHERE p.id_contrato IS NULL;

-- 5. PARCELAS COM SALDO MAIOR QUE O VALOR ORIGINAL
SELECT id_contrato, numero_parcela, valor, saldo_devedor
FROM parcela
WHERE saldo_devedor > valor;

-- 6. QUANTIDADE DE PARCELAS POR CONTRATO
SELECT c.id_contrato,
       c.numero_parcelas,
       COUNT(p.numero_parcela) AS parcelas_cadastradas
FROM contrato c
LEFT JOIN parcela p
ON p.id_contrato = c.id_contrato
GROUP BY c.id_contrato, c.numero_parcelas
HAVING COUNT(p.numero_parcela) <> c.numero_parcelas;

-- 7. ALUNOS COM MAIS DE UMA MATRICULA NA MESMA TURMA
SELECT rgm, id_turma, COUNT(*) AS quantidade
FROM matricula
GROUP BY rgm, id_turma
HAVING COUNT(*) > 1;

-- 8. TESTE DA RESTRICAO CHECK
DELIMITER //

CREATE PROCEDURE testar_check()
BEGIN
    DECLARE erro INT DEFAULT 0;

    BEGIN
        DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET erro = 1;

        INSERT INTO curso
        (nome, carga_horaria_total, modalidade, valor, situacao)
        VALUES
        ('CURSO TESTE INTEGRIDADE', 10, 'online', -1, 'ativo');
    END;

    IF erro = 1 THEN
        SELECT 'Teste OK: valor negativo bloqueado.'
        AS resultado;
    ELSE
        DELETE FROM curso
        WHERE nome = 'CURSO TESTE INTEGRIDADE';

        SELECT 'Falha: valor negativo foi aceito.'
        AS resultado;
    END IF;
END //

DELIMITER ;

CALL testar_check();

DROP PROCEDURE testar_check;

-- 9. TESTE DA CHAVE ESTRANGEIRA
DELIMITER //

CREATE PROCEDURE testar_chave_estrangeira()
BEGIN
    DECLARE erro INT DEFAULT 0;

    BEGIN
        DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET erro = 1;

        INSERT INTO matricula
        (rgm, id_turma, data_matricula, status)
        VALUES
        (999999, 999999, CURRENT_DATE, 'ativa');
    END;

    IF erro = 1 THEN
        SELECT 'Teste OK: referencia inexistente bloqueada.'
        AS resultado;
    ELSE
        DELETE FROM matricula
        WHERE rgm = 999999 AND id_turma = 999999;

        SELECT 'Falha: referencia inexistente foi aceita.'
        AS resultado;
    END IF;
END //

DELIMITER ;

CALL testar_chave_estrangeira();

DROP PROCEDURE testar_chave_estrangeira;