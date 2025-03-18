-- Tabela de Bancos (para padronizar os bancos de financiamento)
CREATE TABLE Bancos (
    IDBanco INTEGER PRIMARY KEY AUTOINCREMENT,
    NomeBanco TEXT NOT NULL UNIQUE
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    CPF TEXT PRIMARY KEY,
    Nome TEXT NOT NULL,
    DataNascimento DATE NOT NULL,
    EstaEmFinanciamento BOOLEAN NOT NULL,
    DataCompra DATE,
    IDBanco INTEGER,
    TipoFinanciamento TEXT,
    QuantidadeParcelas INTEGER CHECK(QuantidadeParcelas >= 0),
    FOREIGN KEY (IDBanco) REFERENCES Bancos(IDBanco)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    Matricula INTEGER PRIMARY KEY,
    NomeFuncionario TEXT NOT NULL,
    DataNascimento DATE NOT NULL,
    DataContratacao DATE NOT NULL,
    QuantidadeVeiculosVendidos INTEGER DEFAULT 0 CHECK(QuantidadeVeiculosVendidos >= 0),
    EnderecoLoja TEXT NOT NULL
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    IDVeiculo INTEGER PRIMARY KEY AUTOINCREMENT,
    NomeCarro TEXT NOT NULL,
    Preco REAL NOT NULL CHECK(Preco > 0),
    AnoCarro INTEGER NOT NULL,
    TipoModelo TEXT NOT NULL,
    QuantidadeVendida INTEGER DEFAULT 0 CHECK(QuantidadeVendida >= 0),
    Kilometragem REAL CHECK(Kilometragem >= 0),
    Cor TEXT,
    Marca TEXT,
    EstadoVeiculo TEXT CHECK(EstadoVeiculo IN ('Novo', 'Usado', 'Seminovo'))
);

-- Tabela de Financiamentos
CREATE TABLE Financiamentos (
    IDFinanciamento INTEGER PRIMARY KEY AUTOINCREMENT,
    CPFCliente TEXT,
    DiaFinanciamento DATE NOT NULL,
    ValorTotal REAL NOT NULL CHECK(ValorTotal > 0),
    ValorPrestacoes REAL NOT NULL CHECK(ValorPrestacoes > 0),
    Loja TEXT NOT NULL,
    FormaFinanciamento TEXT,
    IDBanco INTEGER,
    FOREIGN KEY (CPFCliente) REFERENCES Clientes(CPF),
    FOREIGN KEY (IDBanco) REFERENCES Bancos(IDBanco)
);

-- Tabela de Histórico de Vendas
CREATE TABLE HistoricoVendas (
    IDVenda INTEGER PRIMARY KEY AUTOINCREMENT,
    CPFCliente TEXT,
    MatriculaFuncionario INTEGER,
    IDVeiculo INTEGER,
    DataVenda DATE NOT NULL,
    FOREIGN KEY (CPFCliente) REFERENCES Clientes(CPF),
    FOREIGN KEY (MatriculaFuncionario) REFERENCES Funcionarios(Matricula),
    FOREIGN KEY (IDVeiculo) REFERENCES Veiculos(IDVeiculo)
);

-- Índices para melhorar o desempenho em consultas
CREATE INDEX idx_clientes_cpf ON Clientes(CPF);
CREATE INDEX idx_funcionarios_matricula ON Funcionarios(Matricula);
CREATE INDEX idx_veiculos_nome ON Veiculos(NomeCarro);
CREATE INDEX idx_financiamentos_cpf ON Financiamentos(CPFCliente);
CREATE INDEX idx_vendas_data ON HistoricoVendas(DataVenda);