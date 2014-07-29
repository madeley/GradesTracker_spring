<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<style type="text/css">
<%@include file = "../resources/css/style.css"%>
</style>
<title>Sistema Acad�mico</title>
</head>
<body>

	<div id="wrapper">
		<div id="logo" class="container">
			<h1>
				<IMG align=left SRC="../resources/img/logo.png" ALT="Sistema Academico" WIDTH=98
					HEIGHT=85 BORDER=0> </IMG> <a
					href="http://localhost:8080/GradesTrackerServlet/">
					<font color=#015DAF>SISTEMA ACAD�MICO</font></a>
			</h1>
		</div>
		<div id="menu-wrapper">
			<div id="menu" class="container">
				<ul>

					<li><a href="http://localhost:8080/GradesTrackerServlet/">Home</a></li>
					<li><a
						href="http://localhost:8080/GradesTrackerServlet/about.jsp"">Respecto
							al Software</a></li>
					<!-- <li><a href="/grades/home/about">Links</a></li> -->
					<li><a
						href="http://localhost:8080/GradesTrackerServlet/contactanos.jsp">Cont�ctanos</a></li>
				</ul>
			</div>
		</div>
		<div id="page" class="container">
			<div id="content">
				<div class="post">
					<div></div>
					<h2 class="title">Bienvenido</h2>
					<div class="entry">
						Bienvenido !


						</fieldset>

						<script src="js/jquery.js"></script>
						<script>
							$(document)
									.ready(
											function() {
												var caracteres = 8;
												$("#counter")
														.html(
																"Te quedan <strong>"
																		+ caracteres
																		+ "</strong> caracteres.");
												$("#user")
														.keyup(
																function() {
																	if ($(this)
																			.val().length > caracteres) {
																		$(this)
																				.val(
																						$(
																								this)
																								.val()
																								.substr(
																										0,
																										caracteres));
																	}
																	var quedan = caracteres
																			- $(
																					this)
																					.val().length;
																	$(
																			"#counter")
																			.html(
																					"Te quedan <strong>"
																							+ quedan
																							+ "</strong> caracteres.");
																	if (quedan <= 0) {
																		$(
																				"#counter")
																				.css(
																						"color",
																						"red");
																	} else {
																		$(
																				"#counter")
																				.css(
																						"color",
																						"black");
																	}
																});
											});
						</script>

					</div>
				</div>
				<!-- end #page -->

			</div>
			<div id="footer">
				<p>
					� 2014 Escuela Profesional de Ingenier�a de Sistemas Todos los
					derechos reservados. Design by <a
						href="http://www.freecsstemplates.org/" rel="nofollow">FreeCSSTemplates.org</a>.
					Photos by <a href="http://fotogrph.com/">Fotogrph</a>.
				</p>
			</div>
			<!-- end #footer -->

		</div>
		</div>

</body>
</html>