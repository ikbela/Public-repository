package com.example.savedogs.Models;

import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "dogs")
public class Dog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Size(min=2, max=100)
    private String name;

    @NotBlank
    @Size(min=2, max=100)
    private String breed;

    @NotNull
    @Min(1)
    private Integer age;

    private Boolean houseBroken;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Boolean getHouseBroken() {
        return houseBroken;
    }

    public void setHouseBroken(Boolean houseBroken) {
        this.houseBroken = houseBroken;
    }

    public Dog(String name, String breed, Integer age, Boolean houseBroken) {
        this.name = name;
        this.breed = breed;
        this.age = age;
        this.houseBroken = houseBroken;
    }

    public Dog() {
    }
}
