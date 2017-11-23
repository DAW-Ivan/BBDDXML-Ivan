<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>Mostrar</title>
   </head>
   
   <body>
       <sql:setDataSource var = "ds" scope="session" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/pruebasJAVA?autoReconnect=true"
         user = "java2018" password = "2018"/>
 
      <sql:query dataSource = "${ds}" var = "resultado">
         select * from clientes;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellidos</th>
            <th>Dirección</th>
            <th>Teléfono</th>
         </tr>
            
         <c:forEach var = "row" items = "${resultado.rows}">
            <tr>
               <td><c:out value = "${row.idCliente}"/></td>
               <td><c:out value = "${row.nombre}"/></td>
               <td><c:out value = "${row.apellidos}"/></td>
               <td><c:out value = "${row.direccion}"/></td>
               <td><c:out value = "${row.telefono}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>