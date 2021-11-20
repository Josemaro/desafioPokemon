package JWong.Dev.PokeApi.service;

import org.springframework.stereotype.Service;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import JWong.Dev.PokeApi.model.PokePage;
import JWong.Dev.PokeApi.model.Pokemon;

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
    // .queryParam("fields","all")
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

}
