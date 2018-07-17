<?php
	include('config.php');
	$llaveabuscar	= $_GET['llaveabuscar'];
	
	if($llaveabuscar==''){

	$mensajeAjax = "* Campo Vacio <input type='hidden' name='error' value='1'/>";
	$mensajeerror = 1;
	
	}else{
		$mensajeerror = 0;
		$mensajeAjax  = "Usuario Disponible !!!<input type='hidden' name='error' value='0'/>";		
		$conexion 	  = new conexion();
		$sql	  	  = "call sp_existe_usuarios('$llaveabuscar');";
		$rs 	  	  = $conexion->consulta($sql);	
		if(mysqli_num_rows($rs) !=0 ){
			$mensajeerror = 1;
			$mensajeAjax  = "Error: El Usuario No Disponible!!!<input type='hidden' name='error' value='1'/>";
		}
	}

	include('Screen_MensajesError.php');
?>