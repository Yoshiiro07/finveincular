package com.example.finveicular.application;

import com.example.finveicular.domain.Cliente;
import com.example.finveicular.domain.Funcionarios;
import com.example.finveicular.repositories.PessoalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PessoalService {

    private final PessoalRepository pessoalRepository;

    @Autowired
    public PessoalService(PessoalRepository pessoalRepository) {
        this.pessoalRepository = pessoalRepository;
    }

    public String getClienteNome(String cpf) {
        Cliente cliente = pessoalRepository.findByCpf(cpf);
        if (cliente != null) {
            return cliente.getNome();
        } else {
            throw new RuntimeException("Cliente não encontrado");
        }
    }

    public Funcionarios getFuncionarioComMaisVeiculosVendidos() {
        return pessoalRepository.findTopByOrderByQuantidadeVeiculosVendidosDesc();
    }
}