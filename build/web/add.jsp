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
            <ol class="breadcrumb">
        <li><a href="<c:url value="index" />">Home</a></li>
        <li class="active">Agregar</li>
      </ol>
            <div class="panel panel-primary">
                <div class="panel-heading">Agregar</div>
                <div class="panel-body">
                    <form action="add_respuesta" method="post" name="form">
                        <c:if test="${not empty param.error}">
                            <div class="alert alert-danger">Por favor complete todos los campos</div>
                        </c:if>
                        
                        <p>
                            <label for="nombre">Nombre:</label>
                            <input type="text" name="nombre" class="form-control" />
                        </p>
                        <p>
                            <label for="nombre">Precio</label>
                            <input type="text" name="precio" class="form-control" />
                        </p>
                        <p>
                            <label for="nombre">Stock</label>
                            <input type="text" name="stock" class="form-control" />
                        </p>
                        <hr />
                        <input type="submit" value="Enviar" class="btn btn-default" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
