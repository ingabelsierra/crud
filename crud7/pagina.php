<?php
	include_once 'dbconfig.php'; 
	$paginar 	= 3; 
	$count 		= $crud->CuantosRegistros();
	$linkpaginas= $crud->CreaPaginacion($count,$paginar);
	$creaQuery  = $crud->creaQuery($paginar);
	$tabla      = $crud->CreaTablaHTML($creaQuery);
	  
 ?>
  <table class='table table-bordered table-responsive'>
     <tr>
     <th>#</th>
     <th>Nombre</th>
     <th>Apellidos</th>
     <th>Correo</th>
     <th>Telefono</th>
     <th colspan="2" align="center">Herramientas</th>
     </tr>
     <?php
		 echo $tabla;
	 ?>
    <tr>
        <td colspan="7" align="center">
 			<div class="pagination-wrap">
            <?php echo $linkpaginas; ?>
        	</div>
        </td>
    </tr>
 
</table>