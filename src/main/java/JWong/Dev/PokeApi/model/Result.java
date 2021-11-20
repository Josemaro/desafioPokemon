package JWong.Dev.PokeApi.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class Result {
    @Getter @Setter
    private String name;
    @Getter @Setter
    private String url;
}
