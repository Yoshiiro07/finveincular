package com.example.finveicular.domain;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "Funcionarios")
public class Funcionarios {

    @Id
    @Column(name = "matricula", nullable = false)
    private Integer matricula;

    @Column(name = "nome_funcionario", nullable = false)
    private String nomeFuncionario;

    @Column(name = "data_nascimento", nullable = false)
    private LocalDate dataNascimento;

    @Column(name = "data_contratacao", nullable = false)
    private LocalDate dataContratacao;

    @Column(name = "quantidade_veiculos_vendidos", nullable = false)
    private Integer quantidadeVeiculosVendidos = 0;

    @Column(name = "endereco_loja", nullable = false)
    private String enderecoLoja;

    // Getters and Setters
    public Integer getMatricula() {
        return matricula;
    }

    public void setMatricula(Integer matricula) {
        this.matricula = matricula;
    }

    public String getNomeFuncionario() {
        return nomeFuncionario;
    }

    public void setNomeFuncionario(String nomeFuncionario) {
        this.nomeFuncionario = nomeFuncionario;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public LocalDate getDataContratacao() {
        return dataContratacao;
    }

    public void setDataContratacao(LocalDate dataContratacao) {
        this.dataContratacao = dataContratacao;
    }

    public Integer getQuantidadeVeiculosVendidos() {
        return quantidadeVeiculosVendidos;
    }

    public void setQuantidadeVeiculosVendidos(Integer quantidadeVeiculosVendidos) {
        this.quantidadeVeiculosVendidos = quantidadeVeiculosVendidos;
    }

    public String getEnderecoLoja() {
        return enderecoLoja;
    }

    public void setEnderecoLoja(String enderecoLoja) {
        this.enderecoLoja = enderecoLoja;
    }
}