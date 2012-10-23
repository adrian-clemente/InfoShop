
jQuery.fn.controlVisibilidad = function(idObjetivo){
	$(this).click( function(){
	    
		$(idObjetivo).addClass("enlaceError widthAuto");
		
		if($(idObjetivo).css("display")=='block') {
			$(idObjetivo).hide("slow");

		}	
		else {	
			$(idObjetivo).show("slow");
			$(idObjetivo).css('display', 'block');
			$(idObjetivo).css('visibility', 'visible');
		}
    });
};

jQuery.fn.update = function(){
	$(this).click( function(){
		  var name = dwr.util.getValue("demoName");
		  prueba.sayHello(name, function(data) {
			  								dwr.util.setValue("demoReply", data);
			  								});
	});	  
};


/**
 *  Carga una lista de objetos en los id's seleccionados.
 *  
 *  Ejemplo:
 * 
 * 	  JS:
 * 		$.func1 = function(){...};	
 * 
 *    JSP: 
 *    	var grupoObj1 = {[objetos:"obj1","obj2"]};
 *    
 *    	var parametros = {
 *	       ids: ["resultat"],
 *	       grupoObj:[grupoObj1],
 *	       funciones:["func1"]
 *      };
 *  	
 *  	$().cargarObjetos(parametros);
 *  
 *  @author aclemente
 */
jQuery.fn.cargarObjetos = function(params_user){
	var z=0;
	$(params_user.ids).each(function(){
		
		for(var i=0;i<params_user.grupoObj.length;i++){
			
			if (params_user.funciones == null || params_user.funciones.length==0){                            
				$("#"+this).load(params_user.grupoObj[z].objetos[i]);
			}
			else if (params_user.funciones != null && params_user.funciones.length>0){
				
				if(params_user.funciones[z]!=''){
					if(params_user.funcParam != null && params_user.funcParam.length>0){
						$("#"+this).load(params_user.grupoObj[z].objetos[i],params_user.funcParam[z],window["$"][params_user.funciones[z]]);
					}
					else if (params_user.funcParam == null || params_user.funcParam.length==0){
						$("#"+this).load(params_user.grupoObj[z].objetos[i],window["$"][params_user.funciones[z]]);
					}	
				}
				else if(params_user.funciones[z]==''){
					$("#"+this).load(params_user.grupoObj[z].objetos[i]);
				}
			}
		}
		
		z++;
	});	
	z=0;
};

/**
 * Esta funci�n fija en cada id un tipo de evento ascociandolo a una funci�n y sus parametros.
 * 
 *  Ejemplo:
 * 
 * 	  JS:
 * 		$.alerta = function (event)	
 * 		{
 * 			alert(event.data[0]);
 * 			alert(event.data[1]);
 * 		};
 * 
 * 		$.alerta2 = function (event)	
 * 		{
 * 			alert(event.data[0]);
 * 			alert(event.data[1]);
 * 		};
 * 
 *    JSP: 
 *  	var param1 = ["hola","adios"];	
 *	
 *		var param2 = ["hola2","adios2"];	
 *
 *		var parametros = {
 *			ids: ["id1","id2"],
 *			events:["click"],
 *			funciones:["func1","func2"],
 *			funcParam:[param1,param2]	
 *  	};
 *  
 * 		$().controlEventos(parametros);
 *  
 * @author aclemente
 */
jQuery.fn.extend.controlEventos = function(params_user){

	var z=0;
	$(params_user.ids).each(function(){
					
		if((params_user.events.length == 1) && (params_user.funciones.length==1))
		{
			if(params_user.funcParam == null || params_user.funcParam.length==0){
				$("#"+this).bind(params_user.events[0],window["$"][params_user.funciones[0]]);
			}
			else if (params_user.funcParam.length>0){
				$("#"+this).bind(params_user.events[0],params_user.funcParam[0],window["$"][params_user.funciones[0]]);
			}
		}
		else if((params_user.events.length > 1) && (params_user.funciones.length==1))
		{	
			if(params_user.funcParam == null || params_user.funcParam.length==0){
				$("#"+this).bind(params_user.events[z],window["$"][params_user.funciones[0]]);
			}
			else if (params_user.funcParam.length>0){
				$("#"+this).bind(params_user.events[z],params_user.funcParam[0],window["$"][params_user.funciones[0]]);
			}
		}
		else if((params_user.events.length == 1) && (params_user.funciones.length>1))
		{	
			if(params_user.funcParam == null || params_user.funcParam.length==0){
				$("#"+this).bind(params_user.events[0],window["$"][params_user.funciones[z]]);
			}
			else if (params_user.funcParam.length>0){
				$("#"+this).bind(params_user.events[0],params_user.funcParam[z],window["$"][params_user.funciones[z]]);
			}
		}
		else if((params_user.events.length > 1) && (params_user.funciones.length > 1))
		{	
			if(params_user.funcParam == null || params_user.funcParam.length==0){
				$("#"+this).bind(params_user.events[z],window["$"][params_user.funciones[z]]);
			}
			else if (params_user.funcParam.length>0){
				$("#"+this).bind(params_user.events[z],params_user.funcParam[z],window["$"][params_user.funciones[z]]);
			}
		}
		
		z++;
	});
	
	z=0;
};