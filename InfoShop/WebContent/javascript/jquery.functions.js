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