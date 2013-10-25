<?php
  session_start();
  //DEBUG
  require_once('FirePHPCore/lib/FirePHPCore/FirePHP.class.php');
  require_once("lib/DB_mysql.class.php");
  ob_start();
  $firephp = FirePHP::getInstance(true);
  //Fin DEBUG
  if (!isset($_COOKIE['tmr_email'])){
    header("Location: login.php");
  }
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <title>CRM Cloud de TMR-online.es</title>
  <meta name="description" content="CRM Cloud creado para TMR">
  <meta name="author" content="Javier Martinez">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
  <!-- Bootstrap -->
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link href="bootstrap/datetimepicker/datetimepicker.min.css" rel="stylesheet" media="screen">
  <link href="bootstrap/css/general.css" rel="stylesheet" media="screen">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="bootstrap/js/html5shiv.js"></script>
    <script src="bootstrap/js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <div class="modal fade" id="Modal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" id="modal-close">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body"></div>
        <div class="modal-footer"></div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->



  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">CRM</a>
      </div>
      <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav">
          <li<?php if($Pagina=='index') echo ' class="active"'; ?>><a href="javascript:cambiarpantalla('index.php');">Inicio</a></li>
<?php
if($_COOKIE['tmr_Permiso']==1){
  echo '          <li';
  if($Pagina=='estadisticas') echo ' class="active"';
  echo '><a href="javascript:cambiarpantalla('."'estadisticas.php'".');">Estadisticas</a></li>'."\n";

  echo '          <li';
  if($Pagina=='admin') echo ' class="active"';
  echo '><a href="javascript:cambiarpantalla('."'admin.php'".');">Administración</a></li>'."\n";

}
?>
        </ul>


        <ul class="nav navbar-nav navbar-right">
<?php
if($_COOKIE['tmr_Permiso']==1){
  $conexion = new DB_mysql;
  $conexion->conectar();
  $sql="SELECT Nombre, email FROM usuarios WHERE Permiso=0;";
  echo '          <li class="dropdown">'."\n";
  echo '            <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="CambiarUserTMP">Cambiar usuario Temporal<b class="caret"></b></a>'."\n";
  echo '            <ul class="dropdown-menu">'."\n";
  $conexion->consulta($sql);
  while($row =mysql_fetch_assoc($conexion->Consulta_ID)){
    //echo '              <li><a href="javascript:UsuarioTmp('."'".$row['email']."'".');" id='."'".$row['email']."'".'>'.$row['Nombre'].'</a></li>'."\n";
    echo '              <li><a href="#" class="emailTMP" id='."'".$row['email']."'".'>'.$row['Nombre'].'</a></li>'."\n";
  }
  echo '              <hr><li><a class="emailTMP" id="SalirUserTMP"><b>Salir de usuario Temporal</b></a></li>';
  echo '            </ul>'."\n";
  echo '          </li>'."\n";
}
?>
          <li><a>Hola <?= $_COOKIE['tmr_Nombre']; ?></a></li>
          <li><a href="logout.php">Cerrar Session</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>

