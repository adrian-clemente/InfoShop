<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ taglib uri="/WEB-INF/Struts/struts-tiles.tld" prefix="tiles" %>
<%@ include file="/WEB-INF/lib/librerias.jsp" %>

<div id="contenido">
	<div id="marco" style="float:left;width:100%;">
		<html:img style="float:left;" src="imagenes/bordeIzqSup.png"/>
		<html:img style="float:right;" src="imagenes/bordeDerSup.png"/>
	</div>

	<!-- Contenedor -->
	<div id="contenedor">
		<tiles:insert attribute="resultado"/>
	</div>
	<!-- /Contenedor -->

	<div id="marco" style="float:left;width:100%;">
		<html:img  style="float:left;" src="imagenes/bordeIzqInf.png"/>
		<html:img  style="float:right;" src="imagenes/bordeDerInf.png"/>
	</div>
</div>
<div class="clear"></div>