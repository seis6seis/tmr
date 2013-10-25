<?php
	session_start();
	setcookie('tmr_email', '', time() - 42000);
	setcookie('tmr_emailTMP', '', time() - 42000);
	setcookie('tmr_Nombre', '', time() - 42000);
	setcookie('tmr_Permiso', '', time() - 42000);
	session_destroy();

	header("Location: login.php");
?>