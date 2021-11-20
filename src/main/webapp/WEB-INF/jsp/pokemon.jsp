<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<html>
    <body>
        <br>
        <h2>${name}</h1>
        <h2>ID: ${pokemon.id}</h2>
        <h2>Nombre: ${pokemon.name}</h2>
        <h2>Experiencia Base: ${pokemon.base_experience}</h2>
        <h2>Peso: ${pokemon.weight}</h2>
        <h2>Altura: ${pokemon.height}</h2>
        <img src=${pokemon.img}>
        <br>
        <script>
            document.write('<a href="' + document.referrer + '" class="btn btn-success" >Go Back</a>');
        </script>
        <br>
        <h2>EvolutionChain: ${evolucion.id}</h2>
        <h2>EvolutionChain: ${evolucion.chain.species.name}</h2>
    </body>
</html>