package com.example.finveicular.domain;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "Clientes")
public class Cliente {

    @Id
    @Column(name = "CPF", nullable = false)
    private String cpf;

    @Column(name = "Nome", nullable = false)
    private String nome;

    @Column(name = "DataNascimento", nullable = false)
    private LocalDate dataNascimento;

    @Column(name = "EstaEmFinanciamento", nullable = false)
    private boolean estaEmFinanciamento;

    @Column(name = "DataCompra")
    private LocalDate dataCompra;

    @Column(name = "IDBanco")
    private Integer idBanco;

    @Column(name = "TipoFinanciamento")
    private String tipoFinanciamento;

    @Column(name = "QuantidadeParcelas")
    private Integer quantidadeParcelas;

    // Getters and Setters
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public LocalDate getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(LocalDate dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public boolean isEstaEmFinanciamento() {
        return estaEmFinanciamento;
    }

    public void setEstaEmFinanciamento(boolean estaEmFinanciamento) {
        this.estaEmFinanciamento = estaEmFinanciamento;
    }

    public LocalDate getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(LocalDate dataCompra) {
        this.dataCompra = dataCompra;
    }

    public Integer getIdBanco() {
        return idBanco;
    }

    public void setIdBanco(Integer idBanco) {
        this.idBanco = idBanco;
    }

    public String getTipoFinanciamento() {
        return tipoFinanciamento;
    }

    public void setTipoFinanciamento(String tipoFinanciamento) {
        this.tipoFinanciamento = tipoFinanciamento;
    }

    public Integer getQuantidadeParcelas() {
        return quantidadeParcelas;
    }

    public void setQuantidadeParcelas(Integer quantidadeParcelas) {
        this.quantidadeParcelas = quantidadeParcelas;
    }
}