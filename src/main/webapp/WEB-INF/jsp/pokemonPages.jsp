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
      @media screen and (max-width: 600px) {
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
        background-color: #f1f1f1;
      }


      .btn-group button {
        background-color: #04AA6D; /* Green background */
        border: 1px solid green; /* Green border */
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
        background-color: #3e8e41;
      }

      .center {
        margin: auto;
        width: 60%;
        border: 3px solid #73AD21;
        padding: 10px;
      }

</style>

<html>
    <body>
        <h2>TOTAL DE POKEMONES = ${pokePage.count}</h2>
        <h2>NEXT PAGE = ${pokePage.next}</h2>
        <h2>PREVIOUS PAGE = ${pokePage.previous}</h2>

        <c:choose>
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
        </c:choose>
        <!-- <c:forEach var="i" begin="0" end="${pokePage.results.size()}">
            <c:out value="${pokePage.results[i].name}"/><p>
        </c:forEach> -->
        <h2>RESULTADOS = ${pokePage.results.size()}</h2>
        <div>
            <c:forEach var="i" begin="0" end="${pokePage.results.size()-1}">
                <div class="row">
                    <div class="column">
                        <div class="card">
                            <img src=${pokelist[i].img} width="170" height="170">
                            <h2>${pokelist[i].name}</h2>
                            <a href='http://localhost:8080/pokemon?name=${pokelist[i].name}' class="btn btn-success">Ver Detalle</a>
                        </div>
                        <!-- ${i} -->
                        ${pokePage.count/pokePage.results.size()}
                    </div>
            </c:forEach>
        </div>
        
        <div class="center">
            <div class="btn-group" style="width:100%; margin:auto">
                <c:forEach var="i" begin="${param.offset/pokePage.results.size()}" end="${(param.offset/pokePage.results.size())+9}">
                    <a href='http://localhost:8080/pokepage?offset=${(i*pokePage.results.size())}&limit=${pokePage.results.size()}' style="width:10%" class="btn btn-success">${i}</a>
                    <!-- ${i*pokePage.results.size()} -->
                </c:forEach>

            </div>   
        </div>
                
                
    </body>
</html>