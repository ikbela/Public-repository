package com.example.savedogs.Controllers;


import com.example.savedogs.Models.Dog;
import com.example.savedogs.Services.DogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

@Controller
public class TravelController {

    @Autowired
    private DogService dogService;

  @GetMapping("/")
  public String showMain(Model model){
      model.addAttribute("dogs", dogService.getAllDogs());
      return "file.jsp";
  }

  @GetMapping("/new")
  public String addDog(@ModelAttribute("newDog") Dog dog){
      return "addDog.jsp";
  }

    @PostMapping ("/addDog")
    public String createTravel(@Valid @ModelAttribute("newDog") Dog dog, @NotBlank BindingResult result){
        if(result.hasErrors()){
            return "file.jsp";
        }
        else
        dogService.createDog(dog);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable Long id, Model model){
        Dog dog = dogService.dogDetails(id);
        model.addAttribute("editedDog", dog);
        return "edit.jsp";
    }

    @PutMapping("/editDog/{id}")
        public String updatedTravel( @PathVariable Long id,@Valid @ModelAttribute("editedDog") Dog newDog, @NotBlank BindingResult result){
        if(result.hasErrors())
            return "edit.jsp";
        else
         dogService.updateDog(newDog);
        return "redirect:/";
    }

    @DeleteMapping("/delete/{id}")
    public String deleteTravel(@PathVariable Long id){
        dogService.deleteDog(id);
        return "redirect:/";
    }

    @GetMapping("showDetails/{id}")
    public String showDetailPage(@PathVariable Long id, Model model){
        Dog dog = dogService.dogDetails(id);
        model.addAttribute("details", dog);
        return "detail.jsp";
    }


}
