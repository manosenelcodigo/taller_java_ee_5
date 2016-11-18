<%@include file="conectar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${ empty param.nombre or empty param.precio or empty param.stock }">
    <c:redirect url="add">
        <c:param name="error" value="1" />
    </c:redirect>
</c:if>
<sql:update dataSource="${con}" var="resultado">
    insert into productos
    (nombre,precio,stock,fecha)
    values
    (?,?,?,'1980-05-24');
    <sql:param value="${param.nombre}" />
    <sql:param value="${param.precio}" />
    <sql:param value="${param.stock}" />
</sql:update>
    <c:redirect url="index">
        <c:param name="mensaje" value="1" />
    </c:redirect>