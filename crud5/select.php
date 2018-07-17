<script>
	function Editar(id){
		window.location="editar.php?id="+id;
	}
	function Eliminar(id){
		var mensaje = "¿ESTAS SEGURO QUE QUIERES ELIMINAR, UNA VEZ ELIMINADO NO PODRAS RECUPERARLO?";
		if(confirm(mensaje)){
			window.location="eliminar.php?id="+id;
		}else{
		
		}
		
		
	}
</script>
<link rel="stylesheet"  href="tablasmostrar.css" type="text/css"/>
<h3><center>USUARIOS REGISTRADOS </center></h3>
<table border="0" id="table" width="50%" cellpadding="0" cellspacing="0" align="center">
<thead>
 <tr>
  <th>ID</th>
  <th>NOMBRE</th>
  <th>APELLIDOS</th>
  <th>USUARIO</th>
  <th>PASSWORD</th>
  <th>ACCIONES</th>
  </tr>
  </thead>
  <tbody id="tbody">
<?php
	$contador = 0;
	include('config.php');
	$conexion = new conexion();
	$sql	  = "call sp_listar_usuarios();";
	$rs 	  = $conexion->consulta($sql);	
	if(mysqli_num_rows($rs) !=0 ){
		while($row = mysqli_fetch_array($rs)){
			$class="odd";
			$contador = $contador + 1;	 
			if($contador%2){$class="even";}
			echo '<tr class="'.$class.'">';
			echo '<td>'.$row[0].'</td>';
			echo '<td>'.$row[1].'</td>';
			echo '<td>'.$row[2].'</td>';
			echo '<td>'.$row[3].'</td>';
			echo '<td>'.md5($row[4]).'</td>';
			echo '<td>';
?>
			<img style='cursor:pointer' title="EDITAR" onclick="Editar('<?php echo $row[0]; ?>')" src='actions-edit.png'/>
			<img style='cursor:pointer' title="ELIMINAR" onclick="Eliminar('<?php echo $row[0]; ?>')" src='actions-delete.png'/>
<?php
			echo '</td>';
			echo '</tr>';
		
		}
	}
?>
</tbody>
</table>