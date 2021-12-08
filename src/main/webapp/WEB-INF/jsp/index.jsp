<style type="text/css">
    .center {
      margin: auto;
      padding: 10px;
      text-align: center;
    }
    .centertext {
      margin: auto;
      width: 50%;
      padding: 10px;
      align-content: center;
    }
    img {
      display: block;
      margin-left: auto;
      margin-right: auto;
    }
    form.a {
      display: flexbox;
      margin-top: 10px;
      align-content: flex-end;
    }
    
    /* Add a black background color to the top navigation */
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<html>
    <body>
        <div class="topnav">
          <a class="active" href="index">Inicio</a>
          <a href="pokepage">Lista Pokemon</a>
          <form class="a" action="pokemon" align="right" style="margin-right: 10px;margin-top: 11px">
            <input type="text" id="name" name="name" placeholder="Nombre o Id" />
            <input type="submit" value="Buscar"/>
          </form>
        </div>
        <div class="center">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/640px-International_Pok%C3%A9mon_logo.svg.png"  width="500" />
            <div class="centertext">
              <form action="pokemon">
                  <input type="text" id="name" name="name" placeholder="Nombre o Id"/>
                  <input type="submit" value="Buscar pokemon"/>
              </form>
              <form action="../pokepage" style="margin: auto;" >
                  <input type="submit" value="Lista Pokemon" />
              </form>
            </div>
        </div>
    </body>
</html>