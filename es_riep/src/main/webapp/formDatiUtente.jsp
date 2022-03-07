<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Es Riepilogativo</title>
</head>
<body>
<h2>Inserisci qui i dati dello studente!</h2>
<%
session.setAttribute("token","True");
%>
	<form method="post" action="index.jsp">

		<b>Nome:</b>
		<input type="text" name="Name" required><br>

		<b>Cognome:</b>
		<input type="text" name="Surname" required><br>

		<b>Data di nascita:</b>
		<input type="text" name="dataN" required><br>

		<b>Indirizzo:</b>
		<input type="text" name="indirizzo" required><br>

		<b>Citta:</b>
		<input type="text" name="citta" required><br>

		<b>Codice fiscale:</b>
		<input type="text" name="codiceF" required><br>

		<input type="submit" value="Submit">
	</form>
</body>
</html>