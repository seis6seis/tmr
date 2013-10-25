<footer>
    <hr>
    <h6 align="right">Creado por <a href="mailto:javier.martinez.ramirez@gmail.com">Javier Martínez</a></h6>
</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.jquery.com/jquery.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/inputmask.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/datetimepicker/datetimepicker.min.js"></script>
    <script src="bootstrap/datetimepicker/locales/bootstrap-datetimepicker.es.js"></script>
<?php 
    if($Pagina!='') echo '    <script src="js/'.$Pagina.'.js"></script><script src="js/logica.js"></script>';
?>

    <script src="js/ver_browser.js"></script>
    <script>
        var GuardarDatos=0;
        function cambiarpantalla(URL){
            if(GuardarDatos==0){
                location.href=URL;
            }
        }
        $(document).ready(function() {
            $(".emailTMP").click(function(){
                if($(this).attr('id')=='SalirUserTMP')
                    $.cookie('tmr_emailTMP', $.cookie('tmr_email'));
                else
                    $.cookie('tmr_emailTMP', $(this).attr('id'));

                location.reload();
            });

            if($.cookie('tmr_emailTMP')==$.cookie('tmr_email') || $.cookie('tmr_emailTMP')=== undefined)
                $('#CambiarUserTMP').html('Cambiar usuario Temporal<b class="caret"></b>');
            else
                $('#CambiarUserTMP').html("<b>Usuario Temporal: </b>"+$.cookie('tmr_emailTMP')+'<b class="caret"></b>');

        });
<?php
    if($Pagina=='index'){
        echo "  var CIF='".$CIF."';\n";
        echo "  ListaEmpresas(CIF);\n\n";

        echo "  $('.form_date').datetimepicker({\n";
        echo "      language: 'es',\n";
        echo "      weekStart: 1,\n";
        echo "      todayBtn: 1,\n";
        echo "      autoclose: 1,\n";
        echo "      todayHighlight: 1,\n";
        echo "      startView: 2,\n";
        echo "      minView: 2,\n";
        echo "      forceParse: 0\n";
        echo "  });\n";
    }
?>
    </script>
  </body>
</html>
