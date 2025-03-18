-- Inserindo dados na tabela bancos
INSERT INTO bancos (nome_banco) VALUES 
('Banco do Brasil'),
('Caixa Econômica Federal');

-- Inserindo dados na tabela clientes
INSERT INTO clientes (cpf, nome, data_nascimento, esta_em_financiamento, data_compra, id_banco, tipo_financiamento, quantidade_parcelas) VALUES 
('12345678900', 'João Silva', '1985-07-15 00:00:00', 1, '2025-03-10 00:00:00', 1, 'Parcelado', 24),
('98765432100', 'Maria Oliveira', '1990-12-20 00:00:00', 0, NULL, NULL, NULL, NULL);

-- Inserindo dados na tabela funcionarios
INSERT INTO funcionarios (matricula, nome_funcionario, data_nascimento, data_contratacao, quantidade_veiculos_vendidos, endereco_loja) VALUES 
(101, 'Carlos Souza', '1980-03-25 00:00:00', '2010-05-15 00:00:00', 150, 'Rua das Laranjeiras, 123'),
(102, 'Ana Paula', '1992-06-10 00:00:00', '2018-09-20 00:00:00', 75, 'Avenida Brasil, 456');

-- Inserindo dados na tabela veiculos
INSERT INTO veiculos (nome_carro, preco, ano_carro, tipo_modelo, quantidade_vendida, kilometragem, cor, marca, estado_veiculo) VALUES 
('Civic', 90000, 2022, 'Sedan', 30, 15000, 'Prata', 'Honda', 'Seminovo'),
('Onix', 75000, 2023, 'Hatchback', 50, 5000, 'Preto', 'Chevrolet', 'Novo');

-- Inserindo dados na tabela financiamentos
INSERT INTO financiamentos (cpf_cliente, dia_financiamento, valor_total, valor_prestacoes, loja, forma_financiamento, id_banco) VALUES 
('12345678900', '2025-03-10 00:00:00', 90000, 3750, 'Rua das Laranjeiras, 123', 'Parcelado com Entrada', 1),
('98765432100', '2024-08-15 00:00:00', 75000, 3125, 'Avenida Brasil, 456', '100% Financiado', 2);

-- Inserindo dados na tabela historico_vendas
INSERT INTO historico_vendas (cpf_cliente, matricula_funcionario, id_veiculo, data_venda) VALUES 
('12345678900', 101, 1, '2025-03-10 00:00:00'),
('98765432100', 102, 2, '2024-08-15 00:00:00');
