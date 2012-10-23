<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import = "java.util.*" %>
<%@ page import = "javax.swing.*" %>
<%@ taglib uri="/WEB-INF/Struts/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/Struts/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/Struts/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/Struts/struts-tiles.tld" prefix="tiles" %>

<html:html locale="true">

	<head>
		<meta name="author" content="Adrián Clemente Caba" />
		<meta name="generator" content="Eclipse" />
		<meta name="copyright" content="Adrián Clemente Caba" />
		<meta name="keywords" content="diseño, personal, weblog" />
		<meta name="description" content="Proyecto Loghorn" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		
		<link href="css/estilo.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/funciones.js"></script>
		
		<title><bean:message key="page.title"/></title>
	</head>

	<body>
		<!-- Contenedor -->
		<div id="contenedor">
		
			<tiles:insert attribute="cabecera"/>
			
			<tiles:insert attribute="logo"/>
			
			<tiles:insert attribute="menu"/>

			<div id="contenido">
				<div id="marco" style="float:left;width:100%;">
					<html:img style="float:left;" src="imagenes/bordeIzqSup.png"/>
					<html:img style="float:right;" src="imagenes/bordeDerSup.png"/>
				</div>
				
				<tiles:insert attribute="errores" />
				
				<div id="resultado">
					<tiles:insert attribute="contenido" />
				</div>
				<div id="marco" style="float:left;width:100%;">
					<html:img  style="float:left;" src="imagenes/bordeIzqInf.png"/>
					<html:img  style="float:right;" src="imagenes/bordeDerInf.png"/>
				</div>
			</div>
			<div class="clear"></div>	
			<tiles:insert attribute="pie"/>
		
		</div>
		<!-- /Contenedor -->

	</body>
</html:html>