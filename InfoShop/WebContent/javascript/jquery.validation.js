jQuery.fn.validacion = function(){

    function obligationVal(){
        if ($(this).val() === '') {
            $(this).addClass("error");
        }
        else {
            $(this).removeClass("error");
        }
    }
    
    
    function numericVal(event){
        if (((event.data[2] !== '') && (event.data[2] == "o") && ($(this).val() !== '') && (!(/\D/.test($(this).val())))) ||
        ((event.data[2] != "o") && (objRegExp.test($(this).val())))) {
            $(this).removeClass("error");
        }
        else {
            $(this).addClass("error");
        }
    }
    
    
    function noNumericVal(event){
        if (((event.data[2] !== '') && (event.data[2] == "o") && ($(this).val() !== '') && (/\D/.test($(this).val()))) ||
        ((event.data[2] != "o") && (objRegExp.test($(this).val())))) {
            $(this).removeClass("error");
        }
        else {
            $(this).addClass("error");
        }
    }
    
    function emailVal(event){
        var objRegExp = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;
        
        if (((event.data[2] !== '') && (event.data[2] == "o") && ($(this).val() !== '') && (objRegExp.test($(this).val()))) ||
        ((event.data[2] != "o") && ($(this).val() === '' || (objRegExp.test($(this).val()))))) {
            $(this).removeClass("error");
        }
        else {
            $(this).addClass("error");
        }
    }
    
    function dateVal(event){
        var objRegExp = /(^(0[1-9]{1})|^([1-2][0-9]{1})|^(3[01]{1}))+\/((0[1-9]{1})|(1[012]{1}))+\/((19|20){1}[0-9]{2}$)/;
        
        if (((event.data[2] !== '') && (event.data[2] == "o") && ($(this).val() !== '') && (objRegExp.test($(this).val()))) ||
        ((event.data[2] != "o") && ($(this).val() === '' || (objRegExp.test($(this).val()))))) {
            $(this).removeClass("error");
        }
        else {
            $(this).addClass("error");
        }
    }
    
    return this.each(function(){
    
        var elemento = $(this).attr("class");
        var posBlank = elemento.indexOf(" ");
        var param = [];
        var parametros = {
            ids: [],
            events: ["blur"],
            funciones: [],
            funcParam: [param]
        };
        
        if (posBlank != -1) {
            elemento = elemento.substr(0, posBlank);
        }
        
        while (elemento.indexOf("_") != -1) {
            param.push(elemento.substr(0, elemento.indexOf("_")));
            elemento = elemento.substr(elemento.indexOf("_") + 1);
        }
        param.push(elemento);
        parametros.ids.push($(this).attr("id"));
        
        
        switch (param[1]) {
        
            case ("obligatori"): //Camp obligatori
                parametros.funciones.push("obligationVal");
                $().controlEventos(parametros);
                parametros.ids.pop();
                parametros.funciones.pop();
                break;
                
            case ("numeric"): //Camp numeric
                parametros.funciones.push("numericVal");
                $().controlEventos(parametros);
                parametros.ids.pop();
                parametros.funciones.pop();
                break;
                
            case ("nonumeric"): //Camp no numeric
                parametros.funciones.push("noNumericVal");
                $().controlEventos(parametros);
                parametros.ids.pop();
                parametros.funciones.pop();
                break;
                
            case ("email"): // Camp email
                parametros.funciones.push("emailVal");
                $().controlEventos(parametros);
                parametros.ids.pop();
                parametros.funciones.pop();
                break;
            case ("data"): // Camp data
                parametros.funciones.push("dateVal");
                $().controlEventos(parametros);
                parametros.ids.pop();
                parametros.funciones.pop();
                break;
            default:
                break;
        }
    });
};

jQuery.fn.controlErrores = function(params_error){

    var params = jQuery.extend({}, {
        claseError: "error",
        idError: "error"
    }, params_error);
	
    return this.each(function(){
        var elemento = $(this).attr("id");
        alert('adios');
        alert(elemento);
        $("#" + elemento).addClass("enlaceError widthAuto");
        
        var posicion = elemento.indexOf(params.idError);
        elemento = elemento.substr(0, posicion);
        
        $(this).click(function(){
            $("input").each(function(){
                $(this).removeClass(params.claseError);
            });
            $("textarea").each(function(){
                $(this).removeClass(params.claseError);
            });
            $("select").each(function(){
                $(this).removeClass(params.claseError);
            });
            $("#" + elemento).focus();
            $("#" + elemento).addClass(params.claseError);
        });
    });
    
};
