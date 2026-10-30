DROP DATABASE IF EXISTS escritorio_juridico;

CREATE DATABASE escritorio_juridico
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;

USE escritorio_juridico;
SET NAMES utf8mb4;

CREATE TABLE Cliente (
    id_cliente  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    nome        VARCHAR(150)  NOT NULL,
    cpf_cnpj    VARCHAR(18)   NOT NULL,
    endereco    VARCHAR(255)  NULL,
    telefone    VARCHAR(20)   NULL,
    email       VARCHAR(150)  NULL,
    PRIMARY KEY (id_cliente),
    UNIQUE KEY uq_cliente_cpf_cnpj (cpf_cnpj)
) ENGINE=InnoDB;

CREATE TABLE Equipe (
    id_advogado   INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    nome          VARCHAR(150)  NOT NULL,
    oab           VARCHAR(20)   NOT NULL,
    especializacao VARCHAR(100) NULL,
    funcao        VARCHAR(80)   NOT NULL,
    PRIMARY KEY (id_advogado),
    UNIQUE KEY uq_equipe_oab (oab)
) ENGINE=InnoDB;

CREATE TABLE Processo (
    id_processo    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    id_cliente     INT UNSIGNED  NOT NULL,
    tipo           VARCHAR(50)   NOT NULL,
    status         ENUM('Ativo','Suspenso','Arquivado','Encerrado') NOT NULL DEFAULT 'Ativo',
    vara_tribunal  VARCHAR(150)  NOT NULL,
    prazo          DATE          NOT NULL,
    PRIMARY KEY (id_processo),
    KEY idx_processo_cliente (id_cliente),
    CONSTRAINT fk_processo_cliente
        FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE Processo_Equipe (
    id_processo  INT UNSIGNED NOT NULL,
    id_advogado  INT UNSIGNED NOT NULL,
    papel        VARCHAR(60)  NOT NULL DEFAULT 'Responsavel',
    PRIMARY KEY (id_processo, id_advogado),
    KEY idx_pe_advogado (id_advogado),
    CONSTRAINT fk_pe_processo
        FOREIGN KEY (id_processo) REFERENCES Processo (id_processo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT fk_pe_advogado
        FOREIGN KEY (id_advogado) REFERENCES Equipe (id_advogado)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE Documento (
    id_documento  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    id_processo   INT UNSIGNED  NOT NULL,
    tipo          VARCHAR(50)   NOT NULL,
    data          DATE          NOT NULL,
    arquivo       VARCHAR(255)  NOT NULL,
    PRIMARY KEY (id_documento),
    KEY idx_documento_processo (id_processo),
    CONSTRAINT fk_documento_processo
        FOREIGN KEY (id_processo) REFERENCES Processo (id_processo)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE Carteira (
    id_carteira       INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    id_responsavel    INT UNSIGNED  NULL,
    nome              VARCHAR(100)  NOT NULL,
    tipo_contrato     VARCHAR(80)   NOT NULL,
    data_inicio       DATE          NOT NULL,
    data_fim          DATE          NULL,
    PRIMARY KEY (id_carteira),
    KEY idx_carteira_responsavel (id_responsavel),
    CONSTRAINT fk_carteira_responsavel
        FOREIGN KEY (id_responsavel) REFERENCES Equipe (id_advogado)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT ck_carteira_datas
        CHECK (data_fim IS NULL OR data_fim >= data_inicio)
) ENGINE=InnoDB;

CREATE TABLE Devedor (
    id_devedor       INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    id_carteira      INT UNSIGNED  NOT NULL,
    nome             VARCHAR(150)  NOT NULL,
    cpf_cnpj         VARCHAR(18)   NULL,
    endereco         VARCHAR(255)  NULL,
    telefone         VARCHAR(20)   NULL,
    email            VARCHAR(150)  NULL,
    situacao_divida  ENUM('Ativa','Negociada','Quitada') NOT NULL DEFAULT 'Ativa',
    PRIMARY KEY (id_devedor),
    UNIQUE KEY uq_devedor_cpf_cnpj (cpf_cnpj),
    KEY idx_devedor_carteira (id_carteira),
    CONSTRAINT fk_devedor_carteira
        FOREIGN KEY (id_carteira) REFERENCES Carteira (id_carteira)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE Contato (
    id_contato   INT UNSIGNED  NOT NULL AUTO_INCREMENT,
    id_devedor   INT UNSIGNED  NOT NULL,
    meio         VARCHAR(50)   NOT NULL,
    data         DATETIME      NOT NULL,
    resultado    ENUM('Sem resposta','Promessa de pagamento','Acordo fechado') NOT NULL,
    PRIMARY KEY (id_contato),
    KEY idx_contato_devedor (id_devedor),
    CONSTRAINT fk_contato_devedor
        FOREIGN KEY (id_devedor) REFERENCES Devedor (id_devedor)
        ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE Negociacao (
    id_negociacao   INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    id_devedor      INT UNSIGNED   NOT NULL,
    id_responsavel  INT UNSIGNED   NULL,
    tipo            VARCHAR(50)    NOT NULL,
    status          ENUM('Em andamento','Concluida','Cancelada') NOT NULL DEFAULT 'Em andamento',
    valor_total     DECIMAL(12,2)  NOT NULL,
    data_inicio     DATE           NOT NULL,
    data_fim        DATE           NULL,
    PRIMARY KEY (id_negociacao),
    KEY idx_negociacao_devedor (id_devedor),
    KEY idx_negociacao_responsavel (id_responsavel),
    CONSTRAINT fk_negociacao_devedor
        FOREIGN KEY (id_devedor) REFERENCES Devedor (id_devedor)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_negociacao_responsavel
        FOREIGN KEY (id_responsavel) REFERENCES Equipe (id_advogado)
        ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT ck_negociacao_valor CHECK (valor_total >= 0),
    CONSTRAINT ck_negociacao_datas CHECK (data_fim IS NULL OR data_fim >= data_inicio)
) ENGINE=InnoDB;

CREATE TABLE Financeiro (
    id_financeiro  INT UNSIGNED   NOT NULL AUTO_INCREMENT,
    id_processo    INT UNSIGNED   NULL,
    id_negociacao  INT UNSIGNED   NULL,
    honorarios     DECIMAL(12,2)  NOT NULL DEFAULT 0.00,
    pagamentos     DECIMAL(12,2)  NOT NULL DEFAULT 0.00,
    pendencias     DECIMAL(12,2)  NOT NULL DEFAULT 0.00,
    vencimento     DATE           NOT NULL,
    PRIMARY KEY (id_financeiro),
    KEY idx_financeiro_processo (id_processo),
    KEY idx_financeiro_negociacao (id_negociacao),
    -- usadas em CHECK (erro 3823), e ck_financeiro_origem usa as duas colunas.
    CONSTRAINT fk_financeiro_processo
        FOREIGN KEY (id_processo) REFERENCES Processo (id_processo)
        ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT fk_financeiro_negociacao
        FOREIGN KEY (id_negociacao) REFERENCES Negociacao (id_negociacao)
        ON UPDATE RESTRICT ON DELETE RESTRICT,
    CONSTRAINT ck_financeiro_origem
        CHECK (id_processo IS NOT NULL OR id_negociacao IS NOT NULL),
    CONSTRAINT ck_financeiro_valores
        CHECK (honorarios >= 0 AND pagamentos >= 0 AND pendencias >= 0)
) ENGINE=InnoDB;


INSERT INTO Equipe (nome, oab, especializacao, funcao) VALUES
 ('Ana Souza (exemplo)',     'OAB/SP 100001', 'Direito Civil',      'Socia'),
 ('Bruno Lima (exemplo)',    'OAB/SP 100002', 'Direito Trabalhista','Associado'),
 ('Carla Dias (exemplo)',    'OAB/SP 100003', NULL,                 'Negociadora');

INSERT INTO Cliente (nome, cpf_cnpj, endereco, telefone, email) VALUES
 ('Cliente Exemplo Ltda', '00.000.000/0001-00', 'Rua Ficticia, 100 - Sao Paulo/SP', '(11) 90000-0001', 'contato@clienteexemplo.test'),
 ('Maria Exemplo',        '000.000.000-01',     NULL,                               NULL,              'maria@exemplo.test');

INSERT INTO Processo (id_cliente, tipo, status, vara_tribunal, prazo) VALUES
 (1, 'Civil',       'Ativo',     '1a Vara Civel - TJSP',        '2026-12-15'),
 (2, 'Trabalhista', 'Suspenso',  '3a Vara do Trabalho - TRT-2', '2027-01-20');

INSERT INTO Processo_Equipe (id_processo, id_advogado, papel) VALUES
 (1, 1, 'Responsavel'),
 (1, 2, 'Apoio'),
 (2, 2, 'Responsavel');

INSERT INTO Documento (id_processo, tipo, data, arquivo) VALUES
 (1, 'Procuracao', '2026-10-01', '/documentos/proc1/procuracao.pdf'),
 (1, 'Peticao',    '2026-10-10', '/documentos/proc1/peticao_inicial_v1.pdf');

INSERT INTO Carteira (id_responsavel, nome, tipo_contrato, data_inicio, data_fim) VALUES
 (3, 'Neon',       'Prestacao de servicos', '2025-01-01', NULL),
 (3, 'Itapeva',    'Prestacao de servicos', '2025-03-01', NULL),
 (3, 'CredAtivos', 'Parceria',              '2025-06-01', NULL),
 (3, 'Kroton',     'Prestacao de servicos', '2025-09-01', '2027-08-31');

INSERT INTO Devedor (id_carteira, nome, cpf_cnpj, endereco, telefone, email, situacao_divida) VALUES
 (1, 'Devedor Exemplo A', '000.000.000-11', NULL, '(11) 90000-0011', NULL, 'Ativa'),
 (4, 'Devedor Exemplo B', '000.000.000-12', NULL, NULL, 'b@exemplo.test', 'Negociada');

INSERT INTO Contato (id_devedor, meio, data, resultado) VALUES
 (1, 'Telefone', '2026-10-20 10:30:00', 'Sem resposta'),
 (2, 'WhatsApp', '2026-10-22 14:00:00', 'Promessa de pagamento'),
 (2, 'Telefone', '2026-10-25 09:15:00', 'Acordo fechado');

INSERT INTO Negociacao (id_devedor, id_responsavel, tipo, status, valor_total, data_inicio, data_fim) VALUES
 (2, 3, 'Parcelamento', 'Em andamento', 3000.00, '2026-10-25', NULL);

INSERT INTO Financeiro (id_processo, id_negociacao, honorarios, pagamentos, pendencias, vencimento) VALUES
 (1,    NULL, 5000.00,    0.00, 5000.00, '2026-11-30'),
 (NULL, 1,     600.00, 1000.00, 2000.00, '2026-11-25');
 
 select * from devedor 
	where telefone is not null;
 