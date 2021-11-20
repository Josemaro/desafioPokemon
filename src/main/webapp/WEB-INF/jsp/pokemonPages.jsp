<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.util.ArrayList"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />


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
        <c:forEach var="i" begin="0" end="${pokePage.results.size()-1}">
            <img src=${pokelist[i].img} width="170" height="170">
            <h2>${pokelist[i].name}</h2>
            <a href='http://localhost:8080/pokemon?name=${pokelist[i].name}' class="btn btn-success">Ver Detalle</a>
            <br>
        </c:forEach>
        
    </body>
</html>