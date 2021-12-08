<style type="text/css"> 
    @import url('https://fonts.googleapis.com/css2?family=Righteous&display=swap');
    p{
        font-family: Righteous;
        font-size: 24px;
    }
    h2{
        font-family: Righteous;
    }
    img {
        margin-left: auto;
        margin-right: auto;
    }
    body{
        background-color: rgb(208, 247, 211);
    }
    .button {
        float: left;
        display: block;
        z-index: 1;
        color: rgb(7, 230, 63);
        border: 4px solid;
        cursor: pointer;
    }
    .frame-container{
        background-image: linear-gradient( 109.6deg, rgba(156,252,248,1) 11.2%, rgba(110,123,251,1) 91.1% );
        margin: auto;
        width: 260px;
        height: 260px;
        border-radius: 30px;
        border: 3px solid black;
        margin-bottom: 10px;
    }

    .frame-container img{
        padding-top: 15px;
        padding-left: 15px;
        margin: auto;
    }
     
    .description-container{
        background-color: rgb(207, 207, 207);
        border: 3px solid black;
        border-radius: 30px;
        width : 450px;
        padding-left: 15px;
        margin: auto;
        margin-bottom: 10px;
    }

    .evolution-container{
        background-color: rgb(120, 243, 157);
        border: 3px solid black;
        border-radius: 30px;
        width : 400px;
        padding-left: 15px;
        margin : auto;
        margin-bottom: 10px;
    }

    .flex-container{
        display: flex;
        flex-direction: column;
        margin: auto;
        padding: 10px;
    }

    .topnav {
        background-color: #333;
        overflow: hidden;
      }

    /* Style the links inside the navigation bar */
    .topnav a {
    float: left;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
    }

    /* Change the color of links on hover */
    .topnav a:hover {
    background-color: #ddd;
    color: black;
    }

    /* Add a color to the active/current link */
    .topnav a.active {
    background-color: #04AA6D;
    color: white;
    }
</style>

<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body style="background-color: rgb(208, 247, 211);">
        <div class="topnav">
            <a class="active" href="index">Inicio</a>
            <form class="a" action="pokemon" align="right" style="margin-right: 10px;margin-top: 7px">
              <input type="text" id="name" name="name" placeholder="Nombre o Id" />
              <input type="submit" value="Buscar"/>
            </form>
        </div>
        <br>
        <div class="frame-container">
            <img src=${pokemon.img} width="230" height="230">
        </div>
        <div class = "flex-container">
            <div class="description-container">
                <p>
                    ID<span style="margin-left:8.63em">:<span style="margin-left:1em"></span>${pokemon.id}
                    <br>
                    Nombre<span style="margin-left:6em"></span>:<span style="margin-left:1em"></span>${pokemon.name}
                    <br>
                    Experiencia Base<span style="margin-left:1.6em"></span>:<span style="margin-left:1em"></span>${pokemon.base_experience}
                    <br>
                    Peso<span style="margin-left:7.27em"></span>:<span style="margin-left:1em"></span>${pokemon.weight}
                    <br>
                    Altura<span style="margin-left:6.62em"></span>:<span style="margin-left:1em"></span>${pokemon.height}
                    <br>
                </p>
            </div>
            <div class="evolution-container">
                <p>
                    Id Cadena Evoluci&oacute;n: ${evolucion.id}
                    <br>
                    Pokemon Base: ${evolucion.chain.species.name}
                    <br>
                    2da evolucion: ${evolucion.chain.evolves_to[0].species.name}
                    <br>
                    3ra evolucion: ${evolucion.chain.evolves_to[0].evolves_to[0].species.name}
                    <br>
                </p>
            </div>
        </div>
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
        <br>

    </body>
</html>