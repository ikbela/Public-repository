package com.example.savedogs.Services;

import com.example.savedogs.Models.Dog;
import com.example.savedogs.Repositories.DogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DogService {
    @Autowired
    private DogRepository dogRepository;


    public void createDog(Dog dog){
        dogRepository.save(dog);
    }

    public List<Dog> getAllDogs(){
        return dogRepository.findAll();
    }

    public Dog dogDetails(Long id){

        return  dogRepository.findById(id).orElse(null);
    }

    public void updateDog(Dog dog ){

        dogRepository.save(dog);
    }

    public void deleteDog(Long id){
        dogRepository.deleteById(id);
    }
}
