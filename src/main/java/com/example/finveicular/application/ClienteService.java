package com.example.finveicular.application;

import com.example.finveicular.domain.Cliente;
import com.example.finveicular.repositories.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class ClienteService {

    private final ClienteRepository clienteRepository;

    @Autowired
    public ClienteService(ClienteRepository clienteRepository) {
        this.clienteRepository = clienteRepository;
    }

    public String getClienteNome(String cpf) {
        Cliente cliente = clienteRepository.findByCpf(cpf);
        if (cliente != null) {
            return cliente.getNome();
        } else {
            throw new RuntimeException("Cliente não encontrado");
        }
    }
}