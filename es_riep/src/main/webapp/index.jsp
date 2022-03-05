<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="datiStudente.Dati" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Es Riepilogativo</title>
</head>
<body>
<%
String token=(String)session.getAttribute("token");
ArrayList<Dati> studenti = new ArrayList<Dati>();
int i=0;
if(token=="True"){
	i=(int)session.getAttribute("indice");
	studenti=(ArrayList<Dati>)session.getAttribute("studenti");
	String nome=request.getParameter("Name");
	String cognome=request.getParameter("Surname");
	String dataN=request.getParameter("dataN");
	String indirizzo=request.getParameter("indirizzo");
	String citta=request.getParameter("citta");
	String codiceF=request.getParameter("codiceF");
		switch(i){
			case 1:
				Dati dati1=new Dati(nome,cognome,dataN,indirizzo,citta,codiceF);
				studenti.add(dati1);
				break;

			case 2:
				Dati dati2=new Dati(nome,cognome,dataN,indirizzo,citta,codiceF);
				studenti.add(dati2);
				break;
			
			case 3:
				Dati dati3=new Dati(nome,cognome,dataN,indirizzo,citta,codiceF);
				studenti.add(dati3);
				break;
				
		}
	session.setAttribute("studenti",studenti);
	session.setAttribute("indice",i+1);
}
%>
<h3>Vuoi inserire i dati di un nuovo studente?</h3>
<% if (i<=3){ %>
	<a href="formDatiUtente.jsp">Clicca qui!</a>
<% }else{ %>
	<b>Hai raggiunto il numero massimo di studenti che puoi inserire!</b>
<% } %>

<% if (i>0){
	  for(Dati j : studenti){%>
		 <div class="card">
  			<div class="container">
    			<h4><%=j.getNome() %> <%=j.getCognome() %></h4>
    			<p><b>Data di nascita:</b><%=j.getDataN() %></p>
    			<p><b>Indirizzo:</b><%=j.getIndirizzo() %></p>
    			<p><b>Citta:</b><%=j.getCitta() %></p>
    			<p><b>Codice fiscale:</b><%=j.getCodiceF() %></p>
  			</div>
		 </div>
	  <%}
		  
	}else{ 
		session.setAttribute("indice", 1);
   }
%>
</body>
</html>






