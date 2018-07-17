<script LANGUAGE="JavaScript">
function ValidarCampos(form){
	 vacio = "";
	 if(form.Nombre.value== vacio){
		alert('Campo Obligatorio de Captura: Nombre');
		form.Nombre.focus();
		return false;
	 }
	 if(form.Apellidos.value== vacio){
		alert('Campo Obligatorio de Captura: Apellidos');
		form.Apellidos.focus();
		return false;
	 }
	 if(form.Usuario.value== vacio){
		alert('Campo Obligatorio de Captura: Usuario');
		form.Usuario.focus();
		return false;
	 }
	 if(form.Password.value == vacio){
		alert('Campo Obligatorio de Captura: Password');
		form.Password.focus();
		return false;
	 }
	Envio.submit();
}
</script>

<link rel="stylesheet"  href="css.css" type="text/css"/>
<br/>
<?php
	$id		= $_GET['id'];
	include('config.php');
	$conexion = new conexion();
	$sql	  = "call sp_buscar_usuarios('$id');";
	$rs 	  = $conexion->consulta($sql);	
	if(mysqli_num_rows($rs) !=0 ){
		$row = mysqli_fetch_array($rs);
?>
<h3 align="center">EDITAR [ <?php echo $row[1].' '.$row[2]; ?> ] </h3>
<form name="Envio" id="Envio" method="post" action="guardaedicion.php">
<input type="hidden" value="<?php echo $row[0]; ?>" size=50 name="Id"/>
<center>
<table class="tabla">
<tr><td>NOMBRE		</td><td><input class="caja" type="text" value="<?php echo $row[1]; ?>" size=50 name="Nombre"/></td></tr>
<tr><td>APELLIDOS	</td><td><input class="caja" type="text" value="<?php echo $row[2]; ?>" size=50 name="Apellidos"/></td></tr>
<tr><td>USUARIO		</td><td><input class="caja" type="text" value="<?php echo $row[3]; ?>"size=50 name="Usuario"/></td></tr>
<tr><td>PASSWORD	</td><td><input class="caja" type="password" value="<?php echo $row[4]; ?>" size=50 name="Password"/></td></tr>
<tr><td colspan=2><center><input type="button" class="boot"  value="GUARDAR" onclick='ValidarCampos(form)' /></center></td></tr>
</table>
</center>
</form>
<?php
	}
?>