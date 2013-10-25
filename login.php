<?php
  session_start();


  require_once("lib/DB_mysql.class.php");
  $Error="";

  //Verifica si es la segunda pasada tras escribir los datos
  if (isset($_POST['txtemail'])){
    if($_POST['txtemail']=="" && $_POST['txtclave']==""){
      $Error='Es necesario rellenar todos los campos.';
    }else{
      //Configura la BBDD
      $miconexion = new DB_mysql;
      $miconexion->conectar();

      $sql='SELECT email, Nombre, Clave, Permiso FROM usuarios WHERE email="'.$_POST['txtemail'].'" AND Clave="'.md5($_POST['txtclave']).'"';
      $miconexion->consulta($sql);
      $usuario =mysql_fetch_assoc($miconexion->Consulta_ID);
      $Error="***".$usuario['email']."****";
      if ($usuario['email']!=""){
        setcookie("tmr_email",$usuario['email'],time()+31536000);
        setcookie("tmr_emailTMP",$usuario['email'],time()+31536000);
        setcookie("tmr_Nombre",$usuario['Nombre'],time()+31536000);
        setcookie("tmr_Permiso",$usuario['Permiso'],time()+31536000);
        header("Location: index.php");

      }else{
        $Error='El usuario y/o la contraseña no es valido.';
      }
    }
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
  <link href="bootstrap/css/signin.css" rel="stylesheet">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="bootstrap/js/html5shiv.js"></script>
    <script src="bootstrap/js/respond.min.js"></script>
  <![endif]-->
</head>
<body>
  <div class="container">
<?php
  if($Error!=""){ echo '<div class="alert alert-danger" id="Error">'.$Error.'</div>'; }
?>
    
    <form class="form-signin" action="login.php" method="post">
      <h2 class="form-signin-heading">Identifícate</h2>
      <input type="text" name="txtemail" id="txtemail" class="form-control" placeholder="Email" autofocus required>
      <input type="password" name="txtclave" id="txtclave" class="form-control" placeholder="Clave" required>

      <button class="btn btn-lg btn-primary btn-block" type="submit" name="btnAceptar" id="btnAceptar">Acceso</button>
    </form>

    <h3>Navegadores Soportados</h3>
    <div class="row">
      <div class="col-md-3 img-rounded">
        <a href="http://windows.microsoft.com/es-ES/internet-explorer/download-ie" target="_black" >
          <div class="thumbnail">
            <p align="center"><img src="img/ie.png" title="Descargar la ultima versión de Internet Explorer" alt="Descargar la ultima versión de Internet Explorer" width="100px" height="100px"></p>
            <div class="caption"><p align="center">Versión minima requerida: 9.0</p></div>
          </div>
        </a>
      </div>
      <div class="col-md-3 img-rounded">
        <a href="http://www.google.com/intl/es_es/chrome/" title="Descargar la ultima versión de Chrome" target="_black" >
          <div class="thumbnail">
            <p align="center"><img src="img/chrome.png" alt="Descargar la ultima versión de Chrome" width="100px" height="100px"></p>
            <div class="caption"><p align="center">Versión minima requerida: 28.0</p></div>
          </div>
        </a>
      </div>
      <div class="col-md-3 img-rounded">
        <a href="http://www.mozilla.org/en-US/firefox/fx/#desktop" title="Descargar la ultima versión de FireFox" target="_black" >
          <div class="thumbnail">
            <p align="center"><img src="img/firefox.png" alt="Descargar la ultima versión de FireFox" width="100px" height="100px"></p>
            <div class="caption"><p align="center">Versión minima requerida: 22.0</p></div>
          </div>
        </a>
      </div>
      <div class="col-md-3 img-rounded">
        <a href="http://support.apple.com/kb/DL1531?viewlocale=es_ES&locale=es_ES" title="Descargar la ultima versión de Safari" target="_black" >
          <div class="thumbnail">
            <p align="center"><img src="img/safari.png" alt="Descargar la ultima versión de Safari" width="100px" height="100px"></p>
            <div class="caption"><p align="center">Versión minima requerida: 5.0</p></div>
          </div>
        </a>
      </div>

    </div>
  </div> <!-- /container -->

  
<?php
  include "footer.php"
?>