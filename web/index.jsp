<%@include file="conectar.jsp" %>

<sql:query dataSource="${con}" var="datos">
    select id,nombre,precio,stock,fecha from productos order by id desc;
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Conexión a MySQL desde JSTL</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Conexión a MySQL desde JSTL</div>
                <div class="panel-body">
                    
                     <c:if test="${not empty param.mensaje}">
                            <div class="alert alert-success">Se han agregado los registros exitosamente</div>
                        </c:if>
                    
                    <p>
                        <a href="<c:url value="add" />" class="btn btn-success">Agregar</a>
                    </p>
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${datos.rows}" var="dato">
                                <tr>
                                    <td><c:out value="${dato.id}" /></td>
                                    <td><c:out value="${dato.nombre}" /></td>
                                    <td><c:out value="${dato.precio}" /></td>
                                    <td><c:out value="${dato.stock}" /></td>
                                    <td>sss</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
