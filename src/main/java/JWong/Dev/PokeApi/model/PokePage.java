package JWong.Dev.PokeApi.model;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class PokePage {
    @Getter @Setter
    private String count;
    @Getter @Setter
    private String next;
    @Getter @Setter
    private String previous;
    @Getter @Setter
    private ArrayList<Result> results;
}
