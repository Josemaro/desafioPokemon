package JWong.Dev.PokeApi.controller;

import java.net.URISyntaxException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import JWong.Dev.PokeApi.model.PokePage;
import JWong.Dev.PokeApi.model.Pokemon;
import JWong.Dev.PokeApi.model.Result;
import JWong.Dev.PokeApi.model.Chain.EvolutionChain;
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
                                required = true) String name, Model model) throws URISyntaxException
    {
        Pokemon p = service.getPokemon(name);
        String specieID = service.getSpecie(p.getId());
        EvolutionChain e = service.getEvolution(specieID);
        model.addAttribute("name", name);
        model.addAttribute("pokemon",p);
        model.addAttribute("evolucion",e);

        try{
            Pokemon e1 = service.getPokemon(e.getChain().getSpecies().getName());
            if(e1 != null){
                model.addAttribute("e1",e1);
                Pokemon p1 = service.getPokemon(e1.getName());
                model.addAttribute("p1",p1);
            }
            Pokemon e2 = service.getPokemon(e.getChain().getEvolves_to().get(0).getSpecies().getName());
            if(e1 != null){
                model.addAttribute("e2",e2);
                Pokemon p2 = service.getPokemon(e2.getName());
                model.addAttribute("p2",p2);
            }
            Pokemon e3 = service.getPokemon(e.getChain().getEvolves_to().get(0).getEvolves_to().get(0).getSpecies().getName());    
            if(e1 != null){
                model.addAttribute("e3",e3);
                Pokemon p3 = service.getPokemon(e3.getName());
                model.addAttribute("p3",p3);
            }
        }catch(Exception err){
        }
        // Pokemon e1 = service.getPokemon(e.getChain().getSpecies().getName());
        // Pokemon e2 = service.getPokemon(e.getChain().getEvolves_to().get(0).getSpecies().getName());
        // Pokemon e3 = service.getPokemon(e.getChain().getEvolves_to().get(0).getEvolves_to().get(0).getSpecies().getName());    

        




        return "pokemon";
    }

    @PostMapping({"/pokemon"})
    public String buscarPokemonP(@RequestParam(value = "name", defaultValue = "pikachu",
                                required = true) String name, Model model) throws URISyntaxException
    {
        Pokemon p = service.getPokemon(name);
        String specieID = service.getSpecie(p.getId());
        EvolutionChain e = service.getEvolution(specieID);
        model.addAttribute("name", name);
        model.addAttribute("pokemon",p);
        model.addAttribute("evolucion",e);

        try{
            Pokemon e1 = service.getPokemon(e.getChain().getSpecies().getName());
            if(e1 != null){
                model.addAttribute("e1",e1);
                Pokemon p1 = service.getPokemon(e1.getName());
                model.addAttribute("p1",p1);
            }
            Pokemon e2 = service.getPokemon(e.getChain().getEvolves_to().get(0).getSpecies().getName());
            if(e1 != null){
                model.addAttribute("e2",e2);
                Pokemon p2 = service.getPokemon(e2.getName());
                model.addAttribute("p2",p2);
            }
            Pokemon e3 = service.getPokemon(e.getChain().getEvolves_to().get(0).getEvolves_to().get(0).getSpecies().getName());    
            if(e1 != null){
                model.addAttribute("e3",e3);
                Pokemon p3 = service.getPokemon(e3.getName());
                model.addAttribute("p3",p3);
            }
        }catch(Exception err){
        }
        // Pokemon e1 = service.getPokemon(e.getChain().getSpecies().getName());
        // Pokemon e2 = service.getPokemon(e.getChain().getEvolves_to().get(0).getSpecies().getName());
        // Pokemon e3 = service.getPokemon(e.getChain().getEvolves_to().get(0).getEvolves_to().get(0).getSpecies().getName());    

        




        return "pokemon";
    }

    @GetMapping({"/pokepage"})
    public String paginable(
        @RequestParam(value = "offset", defaultValue = "0",required = true) String offset,
        @RequestParam(value = "limit", defaultValue = "12", required = true) String limit, Model model){
        PokePage pp = service.getPokePage(offset,limit);
        model.addAttribute("pokePage",pp);
        ArrayList<Pokemon> pokelist = new ArrayList<Pokemon>();
        for(Result r: pp.getResults()){
            pokelist.add(service.getPokemon(r.getName()));
        }
        model.addAttribute("pokelist",pokelist);
        return "pokemonPages";
    }



}
