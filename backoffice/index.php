<?php
  include "header.php";
  require_once("../lib/DB_mysql.class.php");
?>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="bs-example divFichaEmpresa">
        <form class="form-inline" role="form" action="index.php" method="post">
          <table class="table">
            <tr>
              <td>Titulo</td>
              <td>Tipo</td>
              <td>Tamaño Tabla</td>
              <td>Tipo Pantalla</td>
              <td>Tam. en Pantalla</td>
              <td>Campo Clave</td>
              <td>Name</td>
              <td>Name BBDD</td>
              <td>Requerido</td>
              <td>Columna</td>
              <td>Posicion</td>
              <td>Default</td>
              <td>Columna CSV</td>
            </tr>
<?php
  $datosTabla = new DB_mysql;
  $datosTabla->conectar();
  $sql="SELECT Titulo, Tipo, TamanoTabla, TipoPantalla, TamanoPantalla, Clave, Name, NameBBDD, Requerido, Columna, Posicion, `Default`, ColumnaCSV FROM disenotabla ORDER BY Columna,Posicion ASC";
  $datosTabla->consulta($sql);
  $cont=0;
  while($campoTabla =mysql_fetch_assoc($datosTabla->Consulta_ID)){
    echo "<tr>\n";
    echo '  <td><input type="hidden" id="idTitulo'.$cont.'" name="idTitulo'.$cont.'" value="'.$campoTabla['Titulo'].'">'."\n";
    echo '      <input type="text" class="form-control" id="Titulo'.$cont.'" name="Titulo'.$cont.'" value="'.$campoTabla['Titulo'].'"></td>'."\n";
    echo '  <td><select name="Tipo'.$cont.'" id="Tipo'.$cont.'" class="form-control">'."\n";
    echo '        <option value="VARCHAR"'.(($campoTabla['Tipo']=='VARCHAR') ? " selected" : "").'>VarChar</option>'."\n";
    echo '        <option value="INT"'.(($campoTabla['Tipo']=='INT') ?  " selected" : "").'>Int</option>'."\n";
    echo '        <option value="TEXT"'.(($campoTabla['Tipo']=='TEXT') ?  " selected" : "").'>Text</option>'."\n";
    echo '        <option value="DATETIME"'.(($campoTabla['Tipo']=='DATETIME') ?  " selected" : "").'>DateTime</option>'."\n";
    echo '        <option value="DATE"'.(($campoTabla['Tipo']=='DATE') ?  " selected" : "").'>Date</option>'."\n";
    echo '        <option value="TIME"'.(($campoTabla['Tipo']=='TIME') ?  " selected" : "").'>Time</option>'."\n";
    echo '        <option value="BOOLEAN"'.(($campoTabla['Tipo']=='BOOLEAN') ?  " selected" : "").'>Boolean</option>'."\n";
    echo '        <option value="MONEDA"'.(($campoTabla['Tipo']=='MONEDA') ?  " selected" : "").'>MONEDA</option>'."\n";
    echo '  </select></td>'."\n";
   
    echo '  <td><input type="text" class="form-control" id="TamanoTabla'.$cont.'" name="TamanoTabla'.$cont.'" value="'.$campoTabla['TamanoTabla'].'" size="5"></td>'."\n";
    echo '  <td><select name="TipoPantalla'.$cont.'" id="TipoPantalla'.$cont.'" class="form-control">'."\n";
    echo '        <option value="NUMBER"'.(($campoTabla['TipoPantalla']=='NUMBER') ?  " selected" : "").'>Numero</option>'."\n";
    echo '        <option value="TEXT"'.(($campoTabla['TipoPantalla']=='TEXT') ?  " selected" : "").'>Texto</option>'."\n";
    echo '        <option value="DATETIME"'.(($campoTabla['TipoPantalla']=='DATETIME') ?  " selected" : "").'>Fecha y Hora</option>'."\n";
    echo '        <option value="DATE"'.(($campoTabla['TipoPantalla']=='DATE') ?  " selected" : "").'>Fecha</option>'."\n";
    echo '        <option value="TIME"'.(($campoTabla['TipoPantalla']=='TIME') ?  " selected" : "").'>Hora</option>'."\n";
    echo '        <option value="EMAIL"'.(($campoTabla['TipoPantalla']=='EMAIL') ?  " selected" : "").'>email</option>'."\n";
    echo '        <option value="TEL"'.(($campoTabla['TipoPantalla']=='TEL') ?  " selected" : "").'>Teléfono</option>'."\n";
    echo '        <option value="URL"'.(($campoTabla['TipoPantalla']=='URL') ?  " selected" : "").'>Web</option>'."\n";
    echo '  </select></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="TamanoPantalla'.$cont.'" name="TamanoPantalla'.$cont.'" value="'.$campoTabla['TamanoPantalla'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Clave'.$cont.'" name="Clave'.$cont.'" value="'.$campoTabla['Clave'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Name'.$cont.'" name="Name'.$cont.'" value="'.$campoTabla['Name'].'" size="10"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="NameBBDD'.$cont.'" name="NameBBDD'.$cont.'" value="'.$campoTabla['NameBBDD'].'" size="10"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Requerido'.$cont.'" name="Requerido'.$cont.'" value="'.$campoTabla['Requerido'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Columna'.$cont.'" name="Columna'.$cont.'" value="'.$campoTabla['Columna'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Posicion'.$cont.'" name="Posicion'.$cont.'" value="'.$campoTabla['Posicion'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="Default'.$cont.'" name="Default'.$cont.'" value="'.$campoTabla['Default'].'" size="5"></td>'."\n";
    echo '  <td><input type="text" class="form-control" id="ColumnaCSV'.$cont.'" name="ColumnaCSV'.$cont.'" value="'.$campoTabla['ColumnaCSV'].'" size="1"></td>'."\n";
    echo "</tr>\n";
    $cont++;
  }
?>
          </table>
        </form>
      </div>
      <div class="row" style="margin-top: 10px">
        <p align="right">
          <button type="button" class="btn btn-primary btn-lg" id="btnGuardar">Guardar</button>
        </p>
        <p align="right"><button type="button" class="btn btn-primary btn-lg" id="btnGenerar">Generar Tabla</button></p>
      </div>
    </div>
  </div>
</div>

<?php
  include "footer.php"
?>