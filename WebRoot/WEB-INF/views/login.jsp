<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<style type="text/css">
<%@include file="../resources/css/style.css" %>
</style>
<title>Sistema Académico</title>
</head>
<body>

<div id="wrapper">
	<div id="logo" class="container">
		<h1><IMG align=left SRC="../resources/img/logo.png" ALT="Sistema Academico" WIDTH=98 HEIGHT=85 BORDER=0/>
		<a href="http://localhost:8080/GradesTrackerServlet/"><font color=#015DAF>SISTEMA ACADéMICO</font></a></h1>
	</div>
	<div id="menu-wrapper">
		<div id="menu" class="container">
			<ul>
					
<li><a href="http://localhost:8080/GradesTrackerServlet/">Home</a></li>
<li><a href="http://localhost:8080/GradesTrackerServlet/about.jsp">Respecto al Software</a></li>
<!-- <li><a href="/grades/home/about">Links</a></li> -->
<li><a href="http://localhost:8080/GradesTrackerServlet/contactanos.jsp">Contáctanos</a></li>
			</ul>
		</div>
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="post">
				<div></div>
				<h2 class="title">Bienvenido </h2>
				<div class="entry">
		<fieldset style="width: 300px">
			<legend> Ingresar al sistema</legend>
			<h2>Ingrese Datos</h2>
			
	<form:form method="POST" action="/sdnext/validate.html">
	   		<table>
			    <tr>
			        <td><form:label path="username">Employee ID:</form:label></td>
			        <td><form:input path="username" value="${usuario.username}" /></td>
			    </tr>
			    <tr>
			         <td><form:label path="password">Password:</form:label></td>
			        <td><form:password path="password" value="${usuario.password}" /></td>
			    </tr>
			     <tr>
			      <td colspan="2"><input type="submit" value="Submit"/></td>
		      </tr>
			</table> 
		</form:form>

		</fieldset>
	
	 <script src="js/jquery.js"></script>
         <script>
            
           $(document).ready(function()  {
            	    var caracteres = 8;
            	    $("#counter").html("Te quedan <strong>"+  caracteres+"</strong> caracteres.");
            	    $("#user").keyup(function(){
            	        if($(this).val().length > caracteres){
            	        $(this).val($(this).val().substr(0, caracteres));
            	        }
            	    var quedan = caracteres -  $(this).val().length;
            	    $("#counter").html("Te quedan <strong>"+  quedan+"</strong> caracteres.");
            	    if(quedan <= 0)
            	    {
            	        $("#counter").css("color","red");
            	    }
            	    else
            	    {
            	        $("#counter").css("color","black");
            	    }
            	    });
            	});
            
            </script>
                
		</div>
	</div>
	<!-- end #page --> 
	
</div>
<div id="footer">
	<p> © 2014 Escuela Profesional de Ingeniería de Sistemas Todos los derechos reservados. Design by <a href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.  Photos by <a href="http://fotogrph.com/">Fotogrph</a>.</p></div>
<!-- end #footer -->

</div>
</div>

</body>
</html>

