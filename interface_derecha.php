  <div class="col-md-10" id="colDerecha">
    <form class="form-inline" role="form" id="formFichaCliente">

      <ul class="nav nav-tabs" id="tabFichaEmpresas">
        <li>
          <button type="button" class="btn btn-primary" id="btnOcultarListaEmpresas" title="Oculta/Muestra la lista de Empresas">
            <span class="glyphicon glyphicon-chevron-left"></span>
          </button>
        </li>
        <li class="active"><a href="#divDatosEmpresa" data-toggle="tab">D. Empresa</a></li>
        <li><a href="#divProductividad" data-toggle="tab">P. Top</a></li>
        <li><a href="#divOportunidadPCs" data-toggle="tab">O. Venta PCs</a></li>
        <li><a href="#divOportunidadTablets" data-toggle="tab">O. Venta Tablets</a></li>
        <li><a href="#divOportunidadMoviles" data-toggle="tab">O. Venta Móviles</a></li>
        <li><a href="#divOportunidadImpresion" data-toggle="tab">O. Venta Impresión</a></li>
        <li><a href="#divOportunidadLFD" data-toggle="tab">O. Venta LFD</a></li>
      </ul>

      <div class="tab-content">
<?php
  require_once("lib/DB_mysql.class.php");
  $cadena=array("DatosEmpresa","Productividad","OportunidadPCs","OportunidadTablets","OportunidadMoviles","OportunidadImpresion","OportunidadLFD");
  $datosTabla = new DB_mysql;
  $datosTabla->conectar();
  $datosTabla2 = new DB_mysql;
  $datosTabla2->conectar();
  foreach ($cadena as $key=>$valor) {

    echo '        <div class="tab-pane ficha';
    if ($key==0) echo' active';
    echo '" id="div'.$valor.'">'."\n";
    //echo '          <form class="form-inline" role="form">'."\n";

    $sql="SELECT Titulo, Tipo, tipoPantalla, TamanoTabla, TamanoPantalla, Clave, Name, NameBBDD, Requerido, Editable, Columna, Posicion FROM disenotabla WHERE Columna='".($key+1)."' ORDER BY Posicion ASC";
    $datosTabla->consulta($sql);
    while($campoTabla =mysql_fetch_assoc($datosTabla->Consulta_ID)){
      echo '          <div class="form-group">'."\n";
      echo '            <label for="'.$campoTabla['Name'].'">'.$campoTabla['Titulo'].'</label>'."\n";
      if(strtolower($campoTabla['tipoPantalla'])=='select'){
        echo '            <select class="form-control" id="'.$campoTabla['Name'].'" name="'.$campoTabla['Name'].'" title="'.$campoTabla['Titulo'].'" bd="'.$campoTabla['NameBBDD'].'"';
        if ($campoTabla['Editable']==0) echo " disabled='true'";
        if ($campoTabla['Requerido']==1) echo " requerido='Si'";
        echo '>'."\n";
        echo '              <option value="">-- Seleccionar --</option>'."\n";
        $sql="SELECT NamePrincipal, Nombre, Value, Orden FROM samsung_select WHERE NamePrincipal='".$campoTabla['Name']."' ORDER BY Orden ASC";
        $datosTabla2->consulta($sql);
        while($campoTabla2 =mysql_fetch_assoc($datosTabla2->Consulta_ID)){
          echo '              <option value="'.$campoTabla2['Value'].'">'.$campoTabla2['Nombre'].'</option>'."\n";
        }
        echo '            </select>'."\n";
      }elseif(strtolower($campoTabla['tipoPantalla'])=='textarea'){
        echo '            <textarea class="form-control" id="'.$campoTabla['Name'].'" name="'.$campoTabla['Name'].'" title="'.$campoTabla['Titulo'].'" bd="'.$campoTabla['NameBBDD'].'"';
        if ($campoTabla['Editable']==0) echo " disabled='true'";
        if ($campoTabla['Requerido']==0) echo " requerido='Si'";
        echo '>'.$campoTabla2['Value'].'</textarea>';
      }elseif(strtolower($campoTabla['tipoPantalla'])=='date'){
        echo '              <div class="input-group date form_date" data-date="" data-date-format="dd-mm-yyyy" data-link-field="'.$campoTabla['Name'].'" data-link-format="dd-mm-yyyy">'."\n";
        echo '                <input class="form-control" size="7" type="text" value=""  id="'.$campoTabla['Name'].'" readonly  bd="'.$campoTabla['NameBBDD'].'" fecha="si">'."\n";
        echo '                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>'."\n";
        echo '                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>'."\n";
        echo '              </div>'."\n";
      }else{
        echo '            <input type="'.strtolower($campoTabla['tipoPantalla']).'" class="form-control" id="'.$campoTabla['Name'].'" name="'.$campoTabla['Name'].'" placeholder="'.$campoTabla['Titulo'].'" title="'.$campoTabla['Titulo'].'" bd="'.$campoTabla['NameBBDD'].'"';
        if ($campoTabla['TamanoPantalla']!=0) echo  ' size="'.$campoTabla['TamanoPantalla'].'"';
        if ($campoTabla['TamanoTabla']!=0) echo ' maxlength="'.$campoTabla['TamanoTabla'].'"';
        if ($campoTabla['Editable']==0) echo " disabled='true'";
        if ($campoTabla['Requerido']==1) echo " requerido='Si'";
        echo '>'."\n";
      }
      echo '          </div>'."\n";
    }
    if($key==0){
      echo "          <div id='divDatosContacto'>\n";

      echo "          </div>\n";
    } 
    //echo '          </form>'."\n";
    echo '        </div>'."\n";
  }

?>
        
      </div>
    </form>

    <div class="col-md-5">
      <div id="ResultadoEmpresas" class="divResultadoEmpresas">
        <b>Empresas Realizadas:</b>
        <br/>
        <b>Empresas Pendientes:</b>
      </div>
    </div>
    <div class="col-md-5">
      <p align="right">
        <button type="button" class="btn btn-primary" id="btnGuardarSiguiente">
          <span class="glyphicon glyphicon-floppy-disk"></span> Guardar y Siguiente Empresa
        </button>
      </p>
    </div>
  </div>