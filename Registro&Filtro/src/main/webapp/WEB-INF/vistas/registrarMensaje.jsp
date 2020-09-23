<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>Bienvenidos a Spring JPA (Java Persistencia API)</h2>

<form action="registrar">
	Mensaje <input type="text" name="mensaje"><br><br>
	Fecha de Vencimiento <input type="date"  name="fechaVencimiento"><br><br>
	Correo <input type="email" name="correo"><br><br>
	Ciudad<select name="ciudad">
				<option>Lima</option>
				<option>Tacna</option>
				<option>Arequipa</option>
		   </select><br><br>
	
	<input type="submit" value="ENVIAR">
</form>

</body>
</html>