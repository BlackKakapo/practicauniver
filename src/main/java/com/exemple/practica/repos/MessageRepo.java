package com.exemple.practica.repos;

import com.exemple.practica.domain.Message;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByNameContaining(String name, Sort id);
    Iterable<Message> findAll(Sort id);
}
