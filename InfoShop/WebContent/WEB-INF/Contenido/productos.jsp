<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>
<script type="text/javascript" src="/WEB-INF/interface/Remote.js"> </script>
<script type="text/javascript" src="/InfoShop/dwr/interface/prueba.js"> </script>
<script type='text/javascript' src='/InfoShop/dwr/engine.js'></script>
<script type='text/javascript' src='/InfoShop/dwr/util.js'></script>

<div id="texto">
	<div class="tituloPrincipal">CPUS</div>	
		<table class="stats" border="1" cellpadding="0" cellspacing="0" width="98%">
			<tr>
			<th class="hed">Nombre</th>
			<th class="hed">Marca</th>
			<th class="hed">Precio</th>
			</tr>
			<c:forEach var = "itemName" items = "${cont}">
				<tr>
					<td>${itemName.name}</td>
					<td><div style="text-align:center;">${itemName.company}</div></td>
					<td><div style="text-align:center;">${itemName.price}€</div></td>
				</tr>
			</c:forEach>
		</table>
</div>
	
<div class="clear"></div>
			
<script type="text/javascript">
$(document).ready(function(){

	$("#asd").update();
	
});
</script>