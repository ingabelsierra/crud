<script>
	function aceptar(){
		window.location="index.php";
	}
</script>
<?php
	include('config.php');
	$conexion			= new conexion();
	
   $CamposPOST	= $_GET['id']; 
   $sql 		= "call sp_eliminar_usuario('$CamposPOST');";
   $rs  		= $conexion->consulta($sql);
   while($row   = mysqli_fetch_array($rs)){
	   $Estatus = $row['mensaje'];
   }
?>
<link rel="stylesheet"  href="css.css" type="text/css"/>
<br/>
<center>
<table class="tabla" width="50%">
<tr><td colspan=2><center><?php echo $Estatus;?></center></td></tr>
</table>
</center>
<center><input type="button" class="boot"  value="GUARDAR" onclick='aceptar()' /></center>