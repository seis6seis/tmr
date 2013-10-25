<?php
  $Pagina="index";
  include "header.php";
  $CIF=$_GET['CIF'];
?>

<div class="container">
  <div class="row">
    <div class="col-md-2 divEmpresas">
      <div class="list-group" id="ListEmpresas"></div>
    </div>

<?php include "interface_derecha.php"; ?>

  </div>
</div>

<?php
  include "footer.php"
?>