package JWong.Dev.PokeApi.service;

import org.springframework.stereotype.Service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import JWong.Dev.PokeApi.model.PokePage;
import JWong.Dev.PokeApi.model.Pokemon;
import JWong.Dev.PokeApi.model.Chain.EvolutionChain;
import JWong.Dev.PokeApi.model.Chain.EvolutionChainUrl;
import JWong.Dev.PokeApi.model.Chain.PokemonSpecies;

@Service
public class PokeService {
    RestTemplate template = new RestTemplate();
    //POKEAPI
    //https://pokeapi.co/api/v2/pokemon/ditto

    //API IMAGENES
    //https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/560.svg
    UriComponents uri = UriComponentsBuilder.newInstance()
        .scheme("https")
        .host("pokeapi.co/")
        .path("api/v2/pokemon/")
        // .queryParam("fields","all")
        .build();
    // ResponseEntity<Pokemon> entity = template.getForEntity(uri.toUriString(),Pokemon.class);
    UriComponents uriPage = UriComponentsBuilder.newInstance()
    .scheme("https")
    .host("pokeapi.co/")
    .path("api/v2/pokemon/")
    .build();

    UriComponents uriEvolution = UriComponentsBuilder.newInstance()
    .scheme("https")
    .host("pokeapi.co/")
    .path("api/v2/evolution-chain/")
    .build();

    //https://pokeapi.co/api/v2/pokemon-species/{id or name}/
    UriComponents uriSpecies = UriComponentsBuilder.newInstance()
    .scheme("https")
    .host("pokeapi.co/")
    .path("api/v2/pokemon-species/")
    .build();

    public Pokemon getPokemon(String var){
        Pokemon p = new Pokemon();
        ResponseEntity<Pokemon> entity = template.getForEntity(uri.toUriString()+var,Pokemon.class);
        p.setName(entity.getBody().getName());
        p.setId(entity.getBody().getId());
        p.setBase_experience(entity.getBody().getBase_experience());
        p.setHeight(entity.getBody().getHeight());
        p.setOrder(entity.getBody().getOrder());
        p.setWeight(entity.getBody().getWeight());
        p.setImg("https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/"+entity.getBody().getId()+".svg");
        // System.out.println(uri.toUriString()+'/'+var);
        // System.out.println(entity.getBody());
        return p;

    }

    public PokePage getPokePage(String offset, String limit){
        PokePage pp = new PokePage();
        ResponseEntity<PokePage> entity = template.getForEntity(uriPage.toUriString()+"?limit="+limit+"&offset="+offset,PokePage.class);
        pp.setCount(entity.getBody().getCount());
        pp.setNext(entity.getBody().getNext());
        pp.setPrevious(entity.getBody().getPrevious());
        pp.setResults(entity.getBody().getResults());
        
        return pp;
    }

    public EvolutionChain getEvolution(String id){
        EvolutionChain evolutionChain = new EvolutionChain();
        ResponseEntity<EvolutionChain> entity = template.getForEntity(uriEvolution.toUriString()+id,EvolutionChain.class);
        evolutionChain.setId(entity.getBody().getId());
        evolutionChain.setChain(entity.getBody().getChain());

        return evolutionChain;
    }

    public String getSpecie(String id) throws URISyntaxException{
        PokemonSpecies species = new PokemonSpecies();
        EvolutionChainUrl evolutionUrl = new EvolutionChainUrl();
        ResponseEntity<PokemonSpecies> entity = template.getForEntity(uriSpecies.toUriString()+id,PokemonSpecies.class);
        // System.out.println(entity.getStatusCodeValue());
        species.setEvolution_chain(entity.getBody().getEvolution_chain());
        // System.out.println(species.getEvolution_chain().getUrl());
        evolutionUrl.setUrl(species.getEvolution_chain().getUrl());
        URI uri = new URI(evolutionUrl.getUrl());
        String[] segments = uri.getPath().split("/");
        String idStr = segments[segments.length-1];
        // System.out.println(idStr);
        return idStr;
    }
}
