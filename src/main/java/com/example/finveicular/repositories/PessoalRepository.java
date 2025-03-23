package com.example.finveicular.repositories;

import com.example.finveicular.domain.Cliente;
import com.example.finveicular.domain.Funcionarios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PessoalRepository extends JpaRepository<Cliente, String> {
    Cliente findByCpf(String cpf);

    @Query("SELECT f FROM Funcionarios f ORDER BY f.quantidadeVeiculosVendidos DESC")
    Funcionarios findTopByOrderByQuantidadeVeiculosVendidosDesc();
}