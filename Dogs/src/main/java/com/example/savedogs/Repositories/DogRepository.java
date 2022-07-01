package com.example.savedogs.Repositories;


import com.example.savedogs.Models.Dog;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DogRepository extends CrudRepository<Dog,Long> {
List<Dog> findAll();

}
