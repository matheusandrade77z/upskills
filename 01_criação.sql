-- UPSkill - Script 01: criacao das tabelas
-- SGBD: MySQL
CREATE DATABASE IF NOT EXISTS upskill;

USE upskill;

-- PARTE 1 - PESSOAS E CADASTROS
CREATE TABLE IF NOT EXISTS pessoa (
    id_pessoa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(120),
    endereco VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS lead (
    id_lead INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    origem VARCHAR(50),
    data_primeiro_contato DATE NOT NULL,
    status_lead VARCHAR(20) NOT NULL,

    CHECK (status_lead IN (
        'novo',
        'em atendimento',
        'convertido',
        'perdido'
    )),

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS aluno (
    rgm INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    data_ingresso DATE NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    data_inativacao DATE,

    CHECK (situacao IN ('ativo', 'inativo', 'formado')),

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS responsavel (
    id_responsavel INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    setor VARCHAR(60) NOT NULL,
    data_admissao DATE NOT NULL,
    situacao VARCHAR(20) NOT NULL,

    CHECK (situacao IN ('ativo', 'inativo')),

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    formacao VARCHAR(100),
    situacao VARCHAR(20) NOT NULL,

    CHECK (situacao IN ('ativo', 'inativo')),

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa)
);

-- PARTE 2 - RESPONSABILIDADE
CREATE TABLE IF NOT EXISTS responsabilidade (
    id_responsabilidade INT AUTO_INCREMENT PRIMARY KEY,
    id_responsavel INT NOT NULL,
    rgm INT NOT NULL,
    grau_parentesco VARCHAR(40) NOT NULL,
    responsavel_principal BOOLEAN NOT NULL DEFAULT FALSE,
    data_inicio DATE NOT NULL,
    data_fim DATE,

    CHECK (data_fim IS NULL OR data_fim >= data_inicio),

    FOREIGN KEY (id_responsavel)
    REFERENCES responsavel(id_responsavel),

    FOREIGN KEY (rgm)
    REFERENCES aluno(rgm)
);

-- PARTE 3 - CURSOS E MODULOS
CREATE TABLE IF NOT EXISTS curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    carga_horaria_total INT NOT NULL,
    modalidade VARCHAR(20) NOT NULL,
    descricao TEXT,
    valor DECIMAL(10,2) NOT NULL,
    situacao VARCHAR(20) NOT NULL,

    CHECK (carga_horaria_total > 0),
    CHECK (valor >= 0),

    CHECK (modalidade IN (
        'presencial',
        'online',
        'hibrido'
    )),

    CHECK (situacao IN ('ativo', 'inativo'))
);

CREATE TABLE IF NOT EXISTS modulo (
    id_curso INT NOT NULL,
    numero_modulo INT NOT NULL,
    nome VARCHAR(120) NOT NULL,
    carga_horaria INT NOT NULL,
    ementa TEXT,

    PRIMARY KEY (id_curso, numero_modulo),

    CHECK (numero_modulo > 0),
    CHECK (carga_horaria > 0),

    FOREIGN KEY (id_curso)
    REFERENCES curso(id_curso)
);

-- PARTE 4 - TURMAS E MATRICULAS
CREATE TABLE IF NOT EXISTS turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_codigo VARCHAR(40) NOT NULL UNIQUE,
    id_curso INT NOT NULL,
    id_professor INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    horario VARCHAR(60),
    turno VARCHAR(20),
    vagas_totais INT NOT NULL,
    situacao VARCHAR(20) NOT NULL,

    CHECK (vagas_totais > 0),

    CHECK (situacao IN (
        'aberta',
        'em andamento',
        'encerrada',
        'cancelada'
    )),

    CHECK (data_fim IS NULL OR data_fim >= data_inicio),

    FOREIGN KEY (id_curso)
    REFERENCES curso(id_curso),

    FOREIGN KEY (id_professor)
    REFERENCES professor(id_professor)
);

CREATE TABLE IF NOT EXISTS matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    rgm INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    data_encerramento DATE,
    percentual_frequencia DECIMAL(5,2) DEFAULT 0,
    media_final DECIMAL(5,2),

    CHECK (status IN (
        'pendente',
        'ativa',
        'cancelada',
        'concluida'
    )),

    CHECK (percentual_frequencia BETWEEN 0 AND 100),

    CHECK (
        media_final IS NULL
        OR media_final BETWEEN 0 AND 10
    ),

    CHECK (
        data_encerramento IS NULL
        OR data_encerramento >= data_matricula
    ),

    UNIQUE (rgm, id_turma),

    FOREIGN KEY (rgm)
    REFERENCES aluno(rgm),

    FOREIGN KEY (id_turma)
    REFERENCES turma(id_turma)
);

-- PARTE 5 - FREQUENCIA E AVALIACOES
CREATE TABLE IF NOT EXISTS frequencia (
    id_matricula INT NOT NULL,
    data_aula DATE NOT NULL,
    situacao_presenca VARCHAR(12) NOT NULL,
    justificativa TEXT,

    PRIMARY KEY (id_matricula, data_aula),

    CHECK (situacao_presenca IN (
        'presente',
        'falta',
        'justificada'
    )),

    FOREIGN KEY (id_matricula)
    REFERENCES matricula(id_matricula)
);

CREATE TABLE IF NOT EXISTS avaliacao_realizada (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL,
    id_curso INT NOT NULL,
    numero_modulo INT NOT NULL,
    numero_tentativa INT NOT NULL DEFAULT 1,
    nota DECIMAL(5,2) NOT NULL,
    data_realizacao DATE NOT NULL,
    situacao VARCHAR(20) NOT NULL,

    CHECK (numero_tentativa > 0),
    CHECK (nota BETWEEN 0 AND 10),

    CHECK (situacao IN (
        'aprovado',
        'reprovado',
        'pendente'
    )),

    FOREIGN KEY (id_matricula)
    REFERENCES matricula(id_matricula),

    FOREIGN KEY (id_curso, numero_modulo)
    REFERENCES modulo(id_curso, numero_modulo),

    UNIQUE (
        id_matricula,
        id_curso,
        numero_modulo,
        numero_tentativa
    )
);

-- PARTE 6 - CONTRATOS E PAGAMENTOS
CREATE TABLE IF NOT EXISTS contrato (
    id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT NOT NULL UNIQUE,
    data_assinatura DATE,
    valor_total DECIMAL(10,2) NOT NULL,
    numero_parcelas INT NOT NULL,
    forma_cobranca VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL,
    id_responsavel INT,
    rgm_signatario INT,

    CHECK (valor_total >= 0),
    CHECK (numero_parcelas >= 1),

    CHECK (forma_cobranca IN (
        'a vista',
        'parcelado',
        'mensalidades'
    )),

    CHECK (status IN (
        'pendente',
        'assinado',
        'cancelado'
    )),

    CHECK (
        NOT (
            id_responsavel IS NOT NULL
            AND rgm_signatario IS NOT NULL
        )
    ),

    FOREIGN KEY (id_matricula)
    REFERENCES matricula(id_matricula),

    FOREIGN KEY (id_responsavel)
    REFERENCES responsavel(id_responsavel),

    FOREIGN KEY (rgm_signatario)
    REFERENCES aluno(rgm)
);

CREATE TABLE IF NOT EXISTS parcela (
    id_contrato INT NOT NULL,
    numero_parcela INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_vencimento DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    saldo_devedor DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (id_contrato, numero_parcela),

    CHECK (numero_parcela > 0),
    CHECK (valor >= 0),
    CHECK (saldo_devedor >= 0),

    CHECK (status IN (
        'pendente',
        'paga',
        'vencida',
        'cancelada'
    )),

    FOREIGN KEY (id_contrato)
    REFERENCES contrato(id_contrato)
);

CREATE TABLE IF NOT EXISTS pagamento (
    id_contrato INT NOT NULL,
    numero_parcela INT NOT NULL,
    seq_pagamento INT NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    data_pagamento DATE NOT NULL,
    forma_pagamento VARCHAR(30) NOT NULL,
    status VARCHAR(25) NOT NULL,

    PRIMARY KEY (
        id_contrato,
        numero_parcela,
        seq_pagamento
    ),

    CHECK (seq_pagamento > 0),
    CHECK (valor_pago > 0),

    CHECK (status IN (
        'pendente',
        'confirmado',
        'recusado',
        'estornado'
    )),

    FOREIGN KEY (id_contrato, numero_parcela)
    REFERENCES parcela(id_contrato, numero_parcela)
);

-- PARTE 7 - USUARIOS E PERFIS
CREATE TABLE IF NOT EXISTS perfil (
    id_perfil INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao VARCHAR(200),

    CHECK (nome IN (
        'Administrador',
        'Secretaria',
        'Financeiro',
        'Professor',
        'Aluno',
        'Responsavel'
    ))
);

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    id_pessoa INT NOT NULL UNIQUE,
    id_perfil INT NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    situacao VARCHAR(15) NOT NULL,
    ultimo_acesso TIMESTAMP,

    CHECK (situacao IN ('ativo', 'inativo')),

    FOREIGN KEY (id_pessoa)
    REFERENCES pessoa(id_pessoa),

    FOREIGN KEY (id_perfil)
    REFERENCES perfil(id_perfil)
);

-- PARTE 8 - CERTIFICADOS
CREATE TABLE IF NOT EXISTS certificado (
    codigo_verificacao VARCHAR(40) PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    data_emissao DATE NOT NULL,
    status VARCHAR(15) NOT NULL,
    id_matricula INT NOT NULL UNIQUE,

    CHECK (status IN ('valido', 'cancelado')),

    FOREIGN KEY (id_matricula)
    REFERENCES matricula(id_matricula)
);

SHOW TABLES;