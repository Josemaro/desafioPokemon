<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.ArrayList"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Righteous&display=swap');
     h2{
         font-family: Righteous;
     }

     body{
         background-color: rgb(208, 247, 211);
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

      .btn-group button {
        background-color: #04AA6D; /* Green background */
        border: 2px solid green; /* Green border */
        color: white; /* White text */
        padding: 10px 24px; /* Some padding */
        cursor: pointer; /* Pointer/hand icon */
        float: left; /* Float the buttons side by side */
      }
      
      /* Clear floats (clearfix hack) */
      .btn-group:after {
        content: "";
        clear: both;
        display: table;
      }
      
      .btn-group button:not(:last-child) {
        border-right: none; /* Prevent double borders */
      }
      
      /* Add a background color on hover */
      .btn-group button:hover {
        background-color: #00eb08;

      }

      .center {
        margin: auto;
        width: 60%;
        padding: 10px;
      }

</style>

<html>
    <body>
        <!-- <h2>TOTAL DE POKEMONES = ${pokePage.count}</h2>
        <h2>NEXT PAGE = ${pokePage.next}</h2>
        <h2>PREVIOUS PAGE = ${pokePage.previous}</h2> -->

        <!-- <c:choose>
            <c:when test="${param.offset-pokePage.results.size()>='0'}">
                <a href='http://localhost:8080/pokepage?offset=${0}&limit=${pokePage.results.size()}' class="btn btn-success">Inicio</a>
                <br>
                <a href='http://localhost:8080/pokepage?offset=${param.offset+pokePage.results.size()}&limit=${pokePage.results.size()}' class="btn btn-success">Siguiente</a>
                <br>
                <a href='http://localhost:8080/pokepage?offset=${param.offset-pokePage.results.size()}&limit=${pokePage.results.size()}' class="btn btn-success">Anterior</a>
                <br>
                <br />
            </c:when>    
            <c:otherwise>
                <a href='http://localhost:8080/pokepage?offset=${0}&limit=${pokePage.results.size()}' class="btn btn-success">Inicio</a>
                <br>
                <a href='http://localhost:8080/pokepage?offset=${param.offset+pokePage.results.size()}&limit=${pokePage.results.size()}' class="btn btn-success">Siguiente</a>
                <br>    
                <br />
            </c:otherwise>
        </c:choose> -->
        <!-- <c:forEach var="i" begin="0" end="${pokePage.results.size()}">
            <c:out value="${pokePage.results[i].name}"/><p>
        </c:forEach> -->
        <h2>TOTAL DE POKEMONES = ${pokePage.count}</h2>
        <h2>RESULTADOS POR PAGINA = ${pokePage.results.size()}</h2>
        <div>
            <c:forEach var="i" begin="0" end="${pokePage.results.size()-1}">
                <div class="row">
                    <div class="column">
                        <div class="card">
                            <img src=${pokelist[i].img} width="170" height="170">
                            <h2>${pokelist[i].name}</h2>
                            <a href='http://localhost:8080/pokemon?name=${pokelist[i].name}' class="btn btn-info">Ver Detalle</a>
                        </div>
                        <!-- ${i} -->
                        <!-- ${pokePage.count/pokePage.results.size()} -->
                    </div>
            </c:forEach>
        </div>
        
        <div class="center">
            <div class="btn-group" style="width:100%; margin:auto">
                <a href='http://localhost:8080/pokepage?offset=${0}&limit=${pokePage.results.size()}' class="btn btn-info"  style="width:10%" >Inicio</a>
                <c:forEach var="i" begin="${param.offset/pokePage.results.size()}" end="${(param.offset/pokePage.results.size())+7}">
                    <a href='http://localhost:8080/pokepage?offset=${(i*pokePage.results.size())}&limit=${pokePage.results.size()}' style="width:10%" class="btn btn-success">${i+1}</a>
                    <!-- ${i*pokePage.results.size()} -->
                </c:forEach>
                <a href='http://localhost:8080/pokepage?offset=${((pokePage.count/pokePage.results.size())*pokePage.results.size())-pokePage.results.size()}&limit=${pokePage.results.size()}'  style="width:10%" class="btn btn-info">Fin</a>
            </div>   
        </div>
                
                
    </body>
</html>