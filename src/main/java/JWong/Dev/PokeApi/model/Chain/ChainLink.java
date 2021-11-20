package JWong.Dev.PokeApi.model.Chain;

import java.util.ArrayList;

import JWong.Dev.PokeApi.model.Result;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class ChainLink {
    @Getter @Setter
    private Result species;
    @Getter @Setter
    private ArrayList<ChainLink> evolves_to;
}
