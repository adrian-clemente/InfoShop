<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>
<script type='text/javascript' src='/InfoShop/dwr/engine.js'></script>
<script type='text/javascript' src='/InfoShop/dwr/util.js'></script>
<script type='text/javascript' src='/InfoShop/dwr/interface/listado.js'></script>


<jsp:useBean id="conexion" class="beans.Utilidades" scope="session" />

<div class="clear"></div>

<div id="menu">
	<div id="marco" style="float:left;width:100%;">
		<html:img style="float:left;" src="imagenes/bordeIzqSup.png"/>
		<html:img style="float:right;" src="imagenes/bordeDerSup.png"/>
	</div>

	<div id="menuContenido">
		<div class="tituloSecundario">Menu</div>
		<ul>
			<li>
				<a class="linkMenu" href="index.jsp">Init</a>
			</li>
			
			<li>
				<a id="componenteId" class="linkMenu" id="aaa" href="#">Components</a>
				
				<ul id="subMenuComponentes" class="subMenu">
					<li>
						<a class="linkMenu" id="aaad" href="#">CPU</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Hard Disks</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Graphic cards</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Cases</a>
					</li>
				</ul>
				
			</li>
			
			<li>
				<a id="perifericoId" class="linkMenu" href="#">Peripherals</a>
				
				<ul id="subMenuPerifericos" class="subMenu">
					<li>
						<a class="linkMenu" href="#">Ratones</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Cascos</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Teclados</a>
					</li>
					<li>
						<a class="linkMenu" href="#">Altavoces</a>
					</li>
				</ul>
				
			</li>
			<li>
				<a class="linkMenu" href="#">Other</a>
			</li>
		</ul>
	</div>
	
	<div id="marco" style="float:left;width:100%;">
		<html:img  style="float:left;" src="imagenes/bordeIzqInf.png"/>
		<html:img  style="float:right;" src="imagenes/bordeDerInf.png"/>
	</div>
</div>



<script type="text/javascript">
$(document).ready(function(){

	$("#perifericoId").controlVisibilidad("#subMenuPerifericos");
	$("#componenteId").controlVisibilidad("#subMenuComponentes");

	$("#aaad").click(function(){
    	
           	$("#resultado").load('http://localhost:8080/InfoShop/Productos.do');
	});

	$("#aaad").load;
	
});
</script>

