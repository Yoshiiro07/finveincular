-- Inserindo dados na tabela Bancos
INSERT INTO Bancos (NomeBanco) VALUES 
('Banco do Brasil'),
('Caixa Econômica Federal');

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (CPF, Nome, DataNascimento, EstaEmFinanciamento, DataCompra, IDBanco, TipoFinanciamento, QuantidadeParcelas) VALUES 
('12345678900', 'João Silva', '1985-07-15', 1, '2025-03-10', 1, 'Parcelado', 24),
('98765432100', 'Maria Oliveira', '1990-12-20', 0, NULL, NULL, NULL, NULL);

-- Inserindo dados na tabela Funcionários
INSERT INTO Funcionarios (Matricula, NomeFuncionario, DataNascimento, DataContratacao, QuantidadeVeiculosVendidos, EnderecoLoja) VALUES 
(101, 'Carlos Souza', '1980-03-25', '2010-05-15', 150, 'Rua das Laranjeiras, 123'),
(102, 'Ana Paula', '1992-06-10', '2018-09-20', 75, 'Avenida Brasil, 456');

-- Inserindo dados na tabela Veículos
INSERT INTO Veiculos (NomeCarro, Preco, AnoCarro, TipoModelo, QuantidadeVendida, Kilometragem, Cor, Marca, EstadoVeiculo) VALUES 
('Civic', 90000, 2022, 'Sedan', 30, 15000, 'Prata', 'Honda', 'Seminovo'),
('Onix', 75000, 2023, 'Hatchback', 50, 5000, 'Preto', 'Chevrolet', 'Novo');

-- Inserindo dados na tabela Financiamentos
INSERT INTO Financiamentos (CPFCliente, DiaFinanciamento, ValorTotal, ValorPrestacoes, Loja, FormaFinanciamento, IDBanco) VALUES 
('12345678900', '2025-03-10', 90000, 3750, 'Rua das Laranjeiras, 123', 'Parcelado com Entrada', 1),
('98765432100', '2024-08-15', 75000, 3125, 'Avenida Brasil, 456', '100% Financiado', 2);

-- Inserindo dados na tabela Histórico de Vendas
INSERT INTO HistoricoVendas (CPFCliente, MatriculaFuncionario, IDVeiculo, DataVenda) VALUES 
('12345678900', 101, 1, '2025-03-10'),
('98765432100', 102, 2, '2024-08-15');
