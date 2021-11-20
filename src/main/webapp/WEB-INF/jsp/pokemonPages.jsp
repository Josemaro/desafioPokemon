<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <body>
        <h2>TOTAL DE POKEMONES = ${pokePage.count}</h2>
        <h2>NEXT PAGE = ${pokePage.next}</h2>
        <h2>PREVIOUS PAGE = ${pokePage.previous}</h2>
        <!-- <c:forEach var="i" begin="0" end="${pokePage.results.size()}">
            <c:out value="${pokePage.results[i].name}"/><p>
        </c:forEach> -->
        <h2>RESULTADOS = ${pokePage.results.size()}</h2>

        <c:forEach var="i" begin="0" end="${pokePage.results.size()-1}">
            <img src=${pokelist[i].img} width="170" height="170">
            <h2>${pokelist[i].name}</h2>
            <br>
        </c:forEach>
        
    </body>
</html>