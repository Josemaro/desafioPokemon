package JWong.Dev.PokeApi.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
public class Pokemon {


    @Getter @Setter
    private String id;
    @Getter @Setter
    private String name;
    @Getter @Setter
    private String base_experience;
    @Getter @Setter
    private String height;
    @Getter @Setter
    private String is_default;
    @Getter @Setter
    private String order;
    @Getter @Setter
    private String weight;
    @Getter @Setter
    private String img;


}
