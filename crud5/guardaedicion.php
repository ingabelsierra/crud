<?php
	include('config.php');
	$conexion			= new conexion();
	$camposRecibePOST 	= "";	
	$Estatus			= "";
	
	foreach($_POST as $NombreCampo => $valor){ 
      #Recibimos los valores de cada campo	  	 
	  $camposRecibePOST = $camposRecibePOST."','".strtoupper($valor);     
   } 
   $CamposPOST	= substr($camposRecibePOST,2); 
   $sql 		= "call sp_actualiza_usuario($CamposPOST');";
   $rs  		= $conexion->consulta($sql);
   while($row   = mysqli_fetch_array($rs)){
	   $Estatus = $row['mensaje'];
   }
   include('mensaje.php');
?>
