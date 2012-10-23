<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="/WEB-INF/lib/librerias.jsp" %>
<%@page import="exceptions.BusinessException"%>
<%@ page import="org.apache.struts.*" %>
<%@ page import="org.apache.struts.util.*" %>
<%@ page import="org.apache.struts.action.*" %>


<div id="errores" class="mensaje_alerta">


 
<html:messages id="message" >
	<li><bean:write name="message"/></li>
</html:messages>



	<% org.apache.struts.action.ActionErrors errs = (org.apache.struts.action.ActionErrors)request.getAttribute("org.apache.struts.action.ERROR"); 
	String key = "";
	Object[] values = null;
	
	MessageResources messages = (MessageResources)request.getAttribute(Globals.MESSAGES_KEY);
	Locale locale = (Locale)session.getAttribute(Globals.LOCALE_KEY);
	
	if(errs!=null){
	    Iterator i=errs.get();
	     while(i.hasNext()){
	    	 org.apache.struts.action.ActionMessage err = (org.apache.struts.action.ActionMessage)i.next();
	    	 
	         if (err!=null) {
	         	key = err.getKey();
	         	values = err.getValues();
	         	//out.println(messages.getMessage(locale,key,values));
	        }
     	}
	} %>
</div>		



