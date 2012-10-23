<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>

<div id="texto">
	<div class="tituloPrincipal">Registro</div>
	<html:form action="Registro">	
		<div class="textoFormulario">Usuario:</div>
		<html:text styleClass="inputFormulario" property="campUser" maxlength="20" size="15" tabindex="1" value=""/>
		<div class="clear"></div>
		<div class="textoFormulario">Contraseña:</div>
		<html:password styleClass="inputFormulario" property="campPass" maxlength="20" size="15" tabindex="1" value=""/>
		<div class="clear"></div>
		<div class="textoFormulario">Nombre:</div>
		<html:text styleClass="inputFormulario" property="campName" maxlength="20" size="15" tabindex="1" value=""/>
		<div class="clear"></div>
		<div class="textoFormulario">Primer apellido:</div>
		<html:text styleClass="inputFormulario" property="campSur1" maxlength="20" size="15" tabindex="1" value=""/>
		<div class="clear"></div>
		<div class="textoFormulario">Segundo apellido:</div>
		<html:text styleClass="inputFormulario" property="campSur2" maxlength="20" size="15" tabindex="1" value=""/>
		<div class="clear"></div>
	
		<!--<input type="hidden" name="reqCode" value="registro"/> -->
		<div style="float:right">
			<html:submit property="submit" styleClass="botones" value="Registro" tabindex="3"/>
		</div>
	</html:form>
</div>

