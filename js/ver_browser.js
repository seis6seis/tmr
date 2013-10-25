//Llamamos al funcion que comprueba el nagedaor al cargarse la página
$(document).ready(function (){
    var Navegador=comprobarnavegador();
    var errorVersion=0;
    if (Navegador[0]=='Internet Explorer'){
        if (parseInt(Navegador[1])<9){ errorVersion=1; }
    }
    if (Navegador[0]=='Safari'){
        if (parseInt(Navegador[1])<5){ errorVersion=1; }
    }
    if (Navegador[0]=='Chrome'){
        if (parseInt(Navegador[1])<28){ errorVersion=1; }
    }
    if (Navegador[0]=='Firefox'){
        if (parseInt(Navegador[1])<22){ errorVersion=1; }
    }

    if(errorVersion==1){
        $( "#txtemail").attr('disabled','disabled');
        $( "#txtclave").attr('disabled','disabled');
        $( "#btnAceptar").attr('disabled','disabled');
        alert("Estas usando  "+Navegador[0]+" con la versión "+Navegador[1]+".\n\nEsta versión es antigua por favor actualícela para poder seguir.");
    }
});

function comprobarnavegador() {
        /* Variables para cada navegador, la funcion indexof() si no encuentra la cadena devuelve -1,
        las variables se quedaran sin valor si la funcion indexof() no ha encontrado la cadena. */
        var Navegador='';
        var Version='';
        var is_safari = navigator.userAgent.toLowerCase().indexOf('safari/') > -1;
        var is_chrome= navigator.userAgent.toLowerCase().indexOf('chrome/') > -1;
        var is_firefox = navigator.userAgent.toLowerCase().indexOf('firefox/') > -1;
        var is_ie = navigator.userAgent.toLowerCase().indexOf('msie ') > -1;
//falta OPERA
 
        /* Detectando  si es Safari, vereis que en esta condicion preguntaremos por chrome ademas, esto es porque el
        la cadena de texto userAgent de Safari es un poco especial y muy parecida a chrome debido a que los dos navegadores
        usan webkit. */
 
        if (is_safari && !is_chrome ) {
 
            /* Buscamos la cadena 'Version' para obtener su posicion en la cadena de texto, para ello
            utilizaremos la funcion, tolowercase() e indexof() que explicamos anteriormente */
            var posicion = navigator.userAgent.toLowerCase().indexOf('Version/');
 
            /* Una vez que tenemos la posición de la cadena de texto que indica la version capturamos la
            subcadena con substring(), como son 4 caracteres los obtendremos de 9 al 12 que es donde
            acaba la palabra 'version'. Tambien podraimos obtener la version con navigator.appVersion, pero
            la gran mayoria de las veces no es la version correcta. */
            var ver_safari = navigator.userAgent.toLowerCase().substring(posicion+9, posicion+12);
            Navegador = 'Safari';
            
            // Convertimos la cadena de texto a float y mostramos la version y el navegador
            Version = parseFloat(ver_safari);
          
            //alert('Su navegador es Safari, Version: ' + ver_safari);
        }
 
        //Detectando si es Chrome
        if (is_chrome ) {
            var posicion = navigator.userAgent.toLowerCase().indexOf('chrome/');
            var ver_chrome = navigator.userAgent.toLowerCase().substring(posicion+7, posicion+11);
            //Comprobar version
            Version = parseFloat(ver_chrome);
            Navegador = 'Chrome';
            //alert('Su navegador es Google Chrome, Version: ' + ver_chrome);
        }
 
        //Detectando si es Firefox
        if (is_firefox ) {
            var posicion = navigator.userAgent.toLowerCase().lastIndexOf('firefox/');
            var ver_firefox = navigator.userAgent.toLowerCase().substring(posicion+8, posicion+12);
            Navegador = 'Firefox';
            //Comprobar version
            Version = parseFloat(ver_firefox);
            //alert('Su navegador es Firefox, Version: ' + ver_firefox);
        }
 
        //Detectando Cualquier version de IE
        if (is_ie ) {
            var posicion = navigator.userAgent.toLowerCase().lastIndexOf('msie ');
            var ver_ie = navigator.userAgent.toLowerCase().substring(posicion+5, posicion+8);
            Navegador ='Internet Explorer';
            //Comprobar version
            Version = parseFloat(ver_ie);
            //alert('Su navegador es Internet Explorer, Version: ' + ver_ie);
        }

        return [Navegador, Version];
    }
