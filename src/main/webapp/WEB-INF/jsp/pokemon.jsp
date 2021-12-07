<style type="text/css"> 
    @import url('https://fonts.googleapis.com/css2?family=Righteous&display=swap');
    p{
        text-align: center;
        font-family: Righteous;
        font-size: 24px;
    }
    h2{
        font-family: Righteous;
    }
    img {
        display: block;
        margin-left: auto;
        margin-right: auto;
    }
    .button {
        text-transform: uppercase;
        float: left;
        min-width: 150px;
        max-width: 250px;
        display: block;
        padding: 1em 2em;
        background: none;
        position: relative;
        z-index: 1;
        letter-spacing: 2px;
        color: rgb(7, 230, 63);
        font-weight: bold;
        font-size: 16px;
        border: 4px solid;
        cursor: pointer;
    }
    div.a {
        background-color: rgb(88, 221, 245);
        width: 410px;
        height: 275px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        border-radius: 35px;
        border-bottom-left-radius: 0;
        background: rgb(238,174,202);
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(86,98,251,1) 100%);
    }
    div.b {
        background-color: rgb(158, 174, 177);
        width: 450px;
        height: 300px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        padding-top: 20px;
        border-radius: 20px;
        border-bottom-left-radius: 0;
        
    }
    div.c {
        background-color: rgb(202, 248, 187);
        width: 520px;
        height: 800px;
        display: block;
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
        padding-top: 20px;
        border-radius: 20px;
        border-bottom-left-radius: 0;
    }
    * {
        box-sizing: border-box;
      }


      
      /* Float four columns side by side */
      .column {
        float: left;
        width: 25%;
        padding: 10 10px;
      }
      
      /* Remove extra left and right margins, due to padding */
      .row {margin: 0 0px;}
      
      /* Clear floats after the columns */
      .row:after {
        content: "";
        display: table;
        clear: both;
      }
      
      /* Responsive columns */
      @media screen and (max-width: 830px) {
        .column {
          width: 100%;
          display: block;
          margin-bottom: 20px;
        }
      }
      
      /* Style the counter cards */
      .card {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        padding: 16px;
        text-align: center;
        background-color: rgb(222, 244, 248);
        box-shadow: rgba(0, 0, 0, 0.05) 0px 1px 2px 0px;
        transition: all .2s ease;
      }

      .card:hover{
        box-shadow: rgba(0, 0, 0, 0.1) 0px 20px 25px -5px, rgba(0, 0, 0, 0.04) 0px 10px 10px -5px;
        background-color: rgb(180, 235, 248);
        transform: translateY(-5px);
        z-index: 1;
      }
</style>

<html>
    <body>
        <!-- <div class="c">
            <br>
            <div class="b">
                <div class="a">
                    <img src=${pokemon.img} width="230" height="230">
                </div>
            </div>
            <br>
            <p>
                ID: ${pokemon.id}
                <br>
                Nombre: ${pokemon.name}
                <br>
                Experiencia Base: ${pokemon.base_experience}
                <br>
                Peso: ${pokemon.weight}
                <br>
                Altura: ${pokemon.height}
                <br>
            </p>
            <p>
                EvolutionChain: ${evolucion.id}
                <br>
                Pokemon Base: ${evolucion.chain.species.name}
                <br>
                2da evolucion: ${evolucion.chain.evolves_to[0].species.name}
                <br>
                3ra evolucion: ${evolucion.chain.evolves_to[0].evolves_to[0].species.name}
                <br>
            </p>

            <script>
                document.write('<a class="button" href="' + document.referrer + '" class="btn btn-success" >Go Back</a>');
            </script>
            <br>
        </div>
        <p>
            ${e1.name}
            ${e2.name}
            ${e3.name}
            <img src=${p1.img} width="100" height="100">
            <img src=${p2.img} width="100" height="100">
            <img src=${p3.img} width="100" height="100">
        </p> -->



        <img src=${pokemon.img} width="230" height="230">
        <br>
        <p>
            ID: ${pokemon.id}
            <br>
            Nombre: ${pokemon.name}
            <br>
            Experiencia Base: ${pokemon.base_experience}
            <br>
            Peso: ${pokemon.weight}
            <br>
            Altura: ${pokemon.height}
            <br>
        </p>
        <p>
            EvolutionChain: ${evolucion.id}
            <br>
            Pokemon Base: ${evolucion.chain.species.name}
            <br>
            2da evolucion: ${evolucion.chain.evolves_to[0].species.name}
            <br>
            3ra evolucion: ${evolucion.chain.evolves_to[0].evolves_to[0].species.name}
            <br>
        </p>
        <script>
            document.write('<a class="button" href="' + document.referrer + '" class="btn btn-success" >Go Back</a>');
        </script>
        ${e1.name}
        ${e2.name}
        ${e3.name}
        
        ${empty e1}
        ${empty e2}
        ${(empty e3)}
        
        <img src=${p1.img} onerror="" width="100" height="100">
        <img src=${p2.img} onerror="" width="100" height="100">
        <img src=${p3.img} onerror="" width="100" height="100">
        
    </body>
</html>