package com.example.demo.service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.annotation.Validated;

import com.example.demo.entity.Technology;
import com.example.demo.entity.enums.TipoStatusProduction;
import com.example.demo.repository.TechnologyRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.validation.Valid;

@Service
public class TechnologyService {

    @Autowired
    private TechnologyRepository technologyRepository;

    @Autowired
    private EntityManager entityManager;

    @Validated
    public Technology createTechnology(@Valid Technology technology) {
        Objects.requireNonNull(technology, "Tecnologia inválida. Verifique os campos obrigatórios.");
        return technologyRepository.save(technology);
    }

    @Validated
    public Technology updateTechnology(Technology updatedTechnology) {
        // Verifica se o ID da tecnologia está presente no objeto atualizado
        if (updatedTechnology.getId() == null) {
            throw new IllegalArgumentException("ID da tecnologia não fornecido no objeto atualizado.");
        }

        Optional<Technology> optionalTechnology = technologyRepository.findById(updatedTechnology.getId());

        if (optionalTechnology.isPresent()) {
            Technology existingTechnology = optionalTechnology.get();

            // Atualiza o nome da tecnologia com o novo nome fornecido no objeto atualizado
            existingTechnology.setName(updatedTechnology.getName());

            return technologyRepository.save(existingTechnology);
        } else {
            throw new IllegalArgumentException(
                    "Tecnologia não encontrada com o ID fornecido: " + updatedTechnology.getId());
        }
    }

    public List<Technology> getListTechnology() {
        List<Technology> technologies = technologyRepository.findAll();
        return technologies != null ? technologies : Collections.emptyList();
    }

    public void deleteTechnology(Long technologyId) {
        technologyRepository.deleteById(technologyId);
    }

    public Map<Long, Map<String, Map<String, Long>>> generateReportForAllTechnologies() {
        Query query = entityManager.createNativeQuery(
                "SELECT t.id, t.name, tt.tipo_status_production, COUNT(*) " +
                        "FROM tb_technology t " +
                        "LEFT JOIN tb_transfer tt ON t.id = tt.technology_id " +
                        "GROUP BY t.id, t.name, tt.tipo_status_production");

        List<Object[]> results = query.getResultList();

        Map<Long, Map<String, Map<String, Long>>> report = new HashMap<>();
        for (Object[] row : results) {
            Long technologyId = ((Number) row[0]).longValue();
            String technologyName = (String) row[1]; 
            Byte statusByte = (Byte) row[2];
            TipoStatusProduction status = (statusByte != null) ? TipoStatusProduction.values()[statusByte] : null;
            String statusName = (status != null) ? status.name() : null;
            Long count = ((Number) row[3]).longValue(); 

            if (!report.containsKey(technologyId)) {
                report.put(technologyId, new HashMap<>());
            }
            
            if (!report.get(technologyId).containsKey(technologyName)) {
                report.get(technologyId).put(technologyName, new HashMap<>());
            }
            report.get(technologyId).get(technologyName).put(statusName, count);
        }

        for (Map.Entry<Long, Map<String, Map<String, Long>>> entry : report.entrySet()) {
            Long technologyId = entry.getKey();
            for (Map.Entry<String, Map<String, Long>> innerEntry : entry.getValue().entrySet()) {
                String technologyName = innerEntry.getKey();
                System.out.println("ID: " + technologyId + ", Nome: " + technologyName);
            }
        }

        return report;
    }

}