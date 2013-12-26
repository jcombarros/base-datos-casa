<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<title>Biblioteca filmoteca casa</title>
		
		<link href="resources/css/jquery-ui.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/generic.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/jquery.alerts.css" rel="stylesheet" type="text/css">
		<link href="resources/css/ui.jqgrid.css" rel="stylesheet" type="text/css">

		<script src="resources/js/jquery.min.js" type="text/javascript"></script>
		<script src="resources/js/jquery-ui.min.js" type="text/javascript"></script>
		<script src="resources/js/generic.js" type="text/javascript"></script>
		
		<script src="resources/js/jquery.alerts.js" type="text/javascript"></script>
		<script src="resources/js/jquery.jqGrid.min.js" type="text/javascript"></script>
		<script src="resources/js/i18n/grid.locale-es.js" type="text/javascript"></script>
		
		<script src="resources/js/views/usuario.js" type="text/javascript"></script>
		<script src="resources/js/views/pelicula.js" type="text/javascript"></script>
		
		<script type="text/javascript">
			generic.resizeEvent();
		</script>
	</head>
	
	<body class="web" >
		
		<div id="header">
			<div id="titulo">
				<h1>Biblioteca filmoteca casa</h1>
			</div>
			<div id="fecha">
				<h3>Hoy es ${fecha}</h3>
			</div>
		</div>
		
		<div id="menu">
			<sec:authorize ifAnyGranted="ROLE_ADMIN">
				<a href="javascript:void" onclick="javascript:generic.getList('usuario');" title="Ver usuarios" class="itemMenu">Usuarios</a>
			</sec:authorize>
			<a href="javascript:void" onclick="javascript:generic.getList('pelicula');" title="Ver peliculas" class="itemMenu">Pel&iacute;culas</a>
			<div id="usuario">
				<span id="nombreUsuario"><b>Usuario :</b> ${nombre} ${apellidos}</span> 
				<a href="<c:url value="/home" />" id="btnHome" title="Home"></a>
				<a href="<c:url value="/j_spring_security_logout" />" id="btnUnlogin" title="Salir"></a>
			</div>
		</div>
		
		
		<div id="content">
<!-- 			<img src="resources/imgs/copa.png" alt="imagenes" class="imgCopa"/> -->
		</div>
		
		<div id="footer">
			&#169; Huguet S.L. &#174;
		</div>
		
		<div class="modal"></div>
		
	</body>
</html>