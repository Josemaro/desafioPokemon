package JWong.Dev.PokeApi.model.Chain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class EvolutionChain {
    @Getter @Setter
    private String id;
    @Getter @Setter
    private ChainLink chain;
}
