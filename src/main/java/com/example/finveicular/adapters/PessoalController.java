package com.example.finveicular.adapters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



import com.example.finveicular.application.PessoalService;
import com.example.finveicular.domain.Funcionarios;

@RestController
@RequestMapping("/api/clientes")
public class PessoalController {

    private final PessoalService pessoalService;

    @Autowired
    public PessoalController(PessoalService pessoalService) {
        this.pessoalService = pessoalService;
    }

    @GetMapping("/{cpf}/nome")
    public String getClienteNome(@PathVariable String cpf) {
        return pessoalService.getClienteNome(cpf);
    }

    @GetMapping("/top-vendedor")
    public Funcionarios getTopVendedor() {
        return pessoalService.getFuncionarioComMaisVeiculosVendidos();
    }

}