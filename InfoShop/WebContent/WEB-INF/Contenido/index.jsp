<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>

<script type="text/javascript" src="/WEB-INF/interface/Remote.js"> </script>
<script type="text/javascript" src="/InfoShop/dwr/interface/prueba.js"> </script>
<script type='text/javascript' src='/InfoShop/dwr/engine.js'></script>
<script type='text/javascript' src='/InfoShop/dwr/util.js'></script>


<div id="texto">
	<div class="tituloPrincipal"><bean:message key="title.noticias"/></div>
	
	<div class="noticia">
		<div class="titulo">Multilanguage support</div>
		<div class="fecha">Date: 26/12/2008</div>
		<div class="texto">Added support for English and Spanish using Struts</div>
	</div>
						
	<div class="noticia">
		<div class="titulo">Architecture setup</div>
		<div class="fecha">Date: 20/12/2008</div>
		<div class="texto">Added automatic dependency system using Maven 2. MVC pattern with Struts. Added BD abstraction with Hibernate ORM.</div>
	</div>

	<div class="noticia">
		<div class="titulo">Design</div>
		<div class="fecha">Date: 12/09/2008</div>
		<div class="texto">First web page version.</div>
	</div>
	
	<p>
	  Name:
	  <input type="text" id="demoName"/>
	  <input id="asd" value="Send" type="button"/>
	  <br/>
	  Reply: <span id="demoReply"></span>
	</p>
	
</div>

			
<script type="text/javascript">
$(document).ready(function(){

	$("#asd").update();
	
});
</script>