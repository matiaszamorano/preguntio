<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<h1>Preguntas</h1>
<table class="table table-hover table-responsive" style="width:100%">
    <tr>
        <th>Pregunta</th>
        <th>Acciones</th>
    </tr>
    <c:forEach items="${preguntas}" var="pregunta">
        <tr>
            <td>${pregunta.contenido}</td>
            <td><a href="#" class="pr-borrar-pregunta" data-id="${pregunta.id}">borrar</a></td>
        </tr>
    </c:forEach>
</table> 