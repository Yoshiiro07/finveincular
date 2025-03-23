-- Tabela de Bancos (para padronizar os bancos de financiamento)
CREATE TABLE Bancos (
    id_banco INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_banco TEXT NOT NULL UNIQUE
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    cpf TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    data_nascimento DATE NOT NULL,
    esta_em_financiamento BOOLEAN NOT NULL,
    data_compra DATE,
    id_banco INTEGER,
    tipo_financiamento TEXT,
    quantidade_parcelas INTEGER CHECK(quantidade_parcelas >= 0),
    FOREIGN KEY (id_banco) REFERENCES bancos(id_banco)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    matricula INTEGER PRIMARY KEY,
    nome_funcionario TEXT NOT NULL,
    data_nascimento DATE NOT NULL,
    data_contratacao DATE NOT NULL,
    quantidade_veiculos_vendidos INTEGER DEFAULT 0 CHECK(quantidade_veiculos_vendidos >= 0),
    endereco_loja TEXT NOT NULL
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    id_veiculo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_carro TEXT NOT NULL,
    preco REAL NOT NULL CHECK(preco > 0),
    ano_carro INTEGER NOT NULL,
    tipo_modelo TEXT NOT NULL,
    quantidade_vendida INTEGER DEFAULT 0 CHECK(quantidade_vendida >= 0),
    kilometragem REAL CHECK(kilometragem >= 0),
    cor TEXT,
    marca TEXT,
    estado_veiculo TEXT CHECK(estado_veiculo IN ('Novo', 'Usado', 'Seminovo'))
);

-- Tabela de Financiamentos
CREATE TABLE Financiamentos (
    id_financiamento INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf_cliente TEXT,
    dia_financiamento DATE NOT NULL,
    valor_total REAL NOT NULL CHECK(valor_total > 0),
    valor_prestacoes REAL NOT NULL CHECK(valor_prestacoes > 0),
    loja TEXT NOT NULL,
    forma_financiamento TEXT,
    id_banco INTEGER,
    FOREIGN KEY (cpf_cliente) REFERENCES clientes(cpf),
    FOREIGN KEY (id_banco) REFERENCES bancos(id_banco)
);

-- Tabela de Histórico de Vendas
CREATE TABLE Historico_Vendas (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    cpf_cliente TEXT,
    matricula_funcionario INTEGER,
    id_veiculo INTEGER,
    data_venda DATE NOT NULL,
    FOREIGN KEY (cpf_cliente) REFERENCES clientes(cpf),
    FOREIGN KEY (matricula_funcionario) REFERENCES funcionarios(matricula),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo)
);

-- Índices para melhorar o desempenho em consultas
CREATE INDEX idx_clientes_cpf ON Clientes(cpf);
CREATE INDEX idx_funcionarios_matricula ON Funcionarios(matricula);
CREATE INDEX idx_veiculos_nome ON Veiculos(nome_carro);
CREATE INDEX idx_financiamentos_cpf ON Financiamentos(cpf_cliente);
CREATE INDEX idx_vendas_data ON Historico_Vendas(data_venda);
