package com.example.demo.service;

import com.example.demo.entity.*;
import com.example.demo.repository.AddressRepository;
import com.example.demo.repository.PhoneNumberRepository;
import com.example.demo.repository.ProducerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class ProducerService {

    @Autowired
    private ProducerRepository producerRepository;
    @Autowired
    private AddressRepository addressRepository;
    @Autowired
    private PhoneNumberRepository phoneNumberRepository;

    public Producer addProducer(Producer producer) {
        producerRepository.save(producer);
        for (int i =0; i < 2; i = i + 1){
            List<PhoneNumber> telefones = new ArrayList<PhoneNumber>(producer.getPhoneNumbers());
            phoneNumberRepository.save(telefones.get(i));
        };

        addressRepository.save(producer.getAddress());

        System.out.println("salvo com sucesso");
        return producerRepository.save(producer);
    }

    public Producer updateProducer(Producer producer) {
        if (producer.getId() == null) {
            throw new IllegalArgumentException("ID do produtor não pode ser nulo para atualização");
        }

        return producerRepository.save(producer);
    }

    public List <Producer> getListProducers(){
        List<Producer> producers = producerRepository.findAll();
        return producers != null ? producers : Collections.emptyList();
    }
}