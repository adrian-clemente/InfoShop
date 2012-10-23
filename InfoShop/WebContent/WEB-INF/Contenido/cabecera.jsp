<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>

<jsp:useBean id="conexion" class="beans.Utilidades" scope="session" />
<html:javascript formName="DatosAcceso"/>
<div id="cabecera">
	
	<div id="marco" style="float:left;width:100%;">
		<html:img style="float:left;" src="imagenes/bordeIzqSup.png"/>
		<html:img style="float:right;" src="imagenes/bordeDerSup.png"/>
	</div>

	
	<div id="as" style="float:left;width:100%;background: #F3F3F3;height:23px;margin-top:3px;">
	
		<div id="lenguajes" style="float:left">
			<form name=lenguaje method="post" action="Lenguaje.do">
				<html:image style="float:left; margin-left:10px; padding-top:3px;" property="espanol" styleId="espanol" src="imagenes/esp.gif" title="Español" alt="Español"/>
				<html:image style="float:left; margin-left:10px; padding-top:4px;" property="english" styleId="english" src="imagenes/eng.gif" title="Inglés" alt="Inglés"/>
			</form>
		</div>
		
		<div id="acceso" style="float:right;">
			<%if (conexion.getConectado()==false) {%>
				<form action="j_spring_security_check" onsubmit="return validateDatosAcceso(this);">
				
					<div class="importante">
						<div class="textoCabecera"><bean:message key="page.user"/></div>
						<html:text styleClass="input" property="j_username" maxlength="20" size="15" tabindex="1" value="" onfocus="if(this.value=='Usuario')this.value='';" onblur="if(this.value=='')this.value='Usuario';"/>
						<div class="textoCabecera"><bean:message key="page.password"/></div>
						<html:password styleClass="input" property="j_password" size="10" maxlength="8" tabindex="2" value="" onfocus="if(this.value=='xxxxx')this.value='';" onblur="if(this.value=='')this.value='xxxxx';"/>			
						<html:submit property="submit" styleClass="botones" value="Login" tabindex="3"/> 
						<html:link styleClass="link" forward="registro"><bean:message key="enlace.registro"/></html:link>
					</div>
					
				</form>
			<%}%>
		</div>	
		<div id="acceso" style="float:right; width:29%;">
			<%if (conexion.getConectado()==true) {%>
				<html:image style="float:left; margin-right:30px;" property="carrito" src="imagenes/carrito.jpg" title="Compras" alt="Carrito"/>
				<div class="importante">
					<div class="textoCabecera"><bean:message key="page.user"/></div>
				</div>
				<div class="textoUsuario2"><%=conexion.getNombreUsuario()%></div>
				<form method="post" action="j_spring_security_logout">	
					<html:submit styleId="id" property="submit" styleClass="botones" value="Logout" tabindex="3"/>
				</form>	
			<%}%>
		</div>
	</div>
	
	<div id="marco" style="float:left;width:100%;">
		<html:img  style="float:left;" src="imagenes/bordeIzqInf.png"/>
		<html:img  style="float:right;" src="imagenes/bordeDerInf.png"/>
	</div>
</div> 

