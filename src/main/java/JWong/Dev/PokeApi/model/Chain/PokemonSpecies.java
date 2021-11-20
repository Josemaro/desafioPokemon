package JWong.Dev.PokeApi.model.Chain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class PokemonSpecies {
    @Getter @Setter
    private EvolutionChainUrl evolution_chain;
}
