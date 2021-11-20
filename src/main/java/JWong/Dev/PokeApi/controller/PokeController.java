package JWong.Dev.PokeApi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import JWong.Dev.PokeApi.model.Pokemon;
import JWong.Dev.PokeApi.service.PokeService;

@Controller
public class PokeController {

    @Autowired
    PokeService service;

    
    
    @GetMapping({"/","index"})
    public String index(@RequestParam(value = "name", defaultValue = "World",
    required = true) String name, Model model){
        model.addAttribute("name", name);
        return "index";
    }

    @GetMapping({"/pokemon"})
    public String buscarPokemon(@RequestParam(value = "name", defaultValue = "pikachu",
    required = true) String name, Model model){
        model.addAttribute("name", name);
        Pokemon p = service.getPokemon(name);
        model.addAttribute("pokemon",p);
        return "pokemon";
    }

    @GetMapping({"/pokemon"})
    public String paginable(@RequestParam(value = "offset", defaultValue = "0",
    required = true) String offset,
    @RequestParam(value = "limit", defaultValue = "0",
    required = true) String limit, Model model){
        // Pokemon p = service.getPokemon(name);
        // model.addAttribute("pokemon",p);
        return "pokemon";
    }



}
