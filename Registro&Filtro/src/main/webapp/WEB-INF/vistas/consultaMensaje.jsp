<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
    prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Intranet Spring</title>
</head>
<body>
<h2>Consultar Mensaje(Java Persistencia Api)</h2>

<form action="consulta">
  Fecha de registro:<br><br>
  Desde<input type="date" name="desde">
  Hasta <input type="date" name="hasta"><br><br>
  <input type="submit" name="Filtrar">
</form>

<!-- autogenerarcodigo: ctrl+Espacio -->

<table>
   <thead>
    <tr>
    <th>Id</th>
    <th>Mensaje</th>
    <th>Fecha Vencimiento</th>
    <th>Correo</th>
    <th>Ciudad</th>
    
    
    </tr>
  </thead>
  <tbody>
       <c:forEach var="x" items="${requestScope.MENSAJES}" >
         <tr>
           <td>${x.idData}</td>
           <td>${x.mensaje}</td>
            <td>${x.fechaVencimiento}</td>
            <td>${x.correo}</td>
            <td>${x.ciudad}</td>
           	
         </tr>
       </c:forEach>
  </tbody>

</table>


</body>
</html>