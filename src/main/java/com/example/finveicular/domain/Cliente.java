package com.example.finveicular.domain;

import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "clientes")
@Data
public class Cliente {

    @Id
    @Column(name = "cpf", nullable = false)
    private String cpf;

    @Column(name = "nome", nullable = false)
    private String nome;

    @Column(name = "data_nascimento", nullable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataNascimento;

    @Column(name = "esta_em_financiamento", nullable = false)
    private boolean estaEmFinanciamento;

    @Column(name = "data_compra")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dataCompra;

    @Column(name = "id_banco")
    private Integer idBanco;

    @Column(name = "tipo_financiamento")
    private String tipoFinanciamento;

    @Column(name = "quantidade_parcelas")
    private Integer quantidadeParcelas;

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