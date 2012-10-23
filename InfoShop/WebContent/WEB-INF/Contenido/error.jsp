<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>
<%@page import="exceptions.BusinessException"%>


<div id="texto">
	<div id="errores" class="mensaje_alerta">
		<% java.lang.Exception e = (java.lang.Exception)request.getAttribute(org.apache.struts.Globals.EXCEPTION_KEY); %>
		<%
		String errorCode = "error.java";
		if (e instanceof BusinessException) {
			BusinessException be = (BusinessException)e;
			errorCode = be.getCode();
		};%>
		<p><bean:message key="error.default"/> : <bean:message key="<%=errorCode%>"/></p>			
	</div>
</div>
		



