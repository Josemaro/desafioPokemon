<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <body>
        <h2>TOTAL DE POKEMONES = ${pokePage.count}</h2>
        <h2>NEXT PAGE = ${pokePage.next}</h2>
        <h2>PREVIOUS PAGE = ${pokePage.previous}</h2>
        <c:forEach var="i" begin="1" end="5">
            Item <c:out value="${i}"/><p>
        </c:forEach>
        <h2>RESULTADOS = ${pokePage.results[0].url}</h2>
    </body>
</html>