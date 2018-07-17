<?php
include('dbconfig.php');
include('header.php');
include('NuevoUsuario.php');
?>
<script>
$(document).ready(function(){
	change_page('0');
	$("#NuevoUser").click(function()
	{
		 document.getElementById("txtId").value = "";
		 document.getElementById("txtNombre").value = "";
		 document.getElementById("txtApellidos").value = "";
		 document.getElementById("txtCorreo").value = "";
		 document.getElementById("txtTelefono").value = "";
		$('#popup').fadeIn('slow');
		$('.popup-overlay').fadeIn('slow');
		$('.popup-overlay').height($(window).height());
		return false;
	});
	$("#SaveFormulario").click(function()
	{
		$("#mensaje1").append("<div class='modal1'><div class='center1'> <center> <img src='images/gif-load.gif'> Guardando...</center></div></div>");
		var Usuarios 		 	= new Object(); 
		Usuarios.Id    			= $('input#txtId').val();
		Usuarios.Nombre 	 	= $('input#txtNombre').val();
		Usuarios.Apellidos     	= $('input#txtApellidos').val();
		Usuarios.Correo 		= $('input#txtCorreo').val();
		Usuarios.Telefono		= $('input#txtTelefono').val();
		
		var DatosJson = JSON.stringify(Usuarios);
		//document.write(DatosJson);
		$.post('SaveUsuario.php',
		{ 
			UsuariosPost: DatosJson
		},
		function(data, textStatus) {
			if(data.error=="Si"){
				$("#"+data.campo+"").focus();						
				$("#mensaje1").html(data.error_msg);
			}else{
				$("#mensaje1").html("");
				$("#mensaje").html(data.error_msg);
				$('#popup').fadeOut('slow');
				$('.popup-overlay').fadeOut('slow');
				change_page('0');
			}
		}, 
		"json"		
		);
		return false;
		
	});
	$('#close').click(function(){
		$('#popup').fadeOut('slow');
		$('.popup-overlay').fadeOut('slow');
		return false;
	});
	
});

function change_page(pagina){
	  var dataString = 'pagina='+ pagina;
	   $.ajax({
           type: "POST",
           url: "pagina.php?pagina="+pagina,
           data: dataString,
           cache: false,
           success: function(result){
           
			     $("#tablahtml").html(result);
           }
      });
}
function Editar(id,nombre,apellidos,correo,telefono){
	 document.getElementById("txtId").value = id;
	 document.getElementById("txtNombre").value = nombre;
	 document.getElementById("txtApellidos").value = apellidos;
	 document.getElementById("txtCorreo").value = correo;
	 document.getElementById("txtTelefono").value = telefono;
	 
	 $('#popup').fadeIn('slow');
	$('.popup-overlay').fadeIn('slow');
	$('.popup-overlay').height($(window).height());
}
function Eliminar(id){
	 if(confirm("Estas Seguro en Eliminar!!! No podras recuperarlo")){
          window.location = "Eliminar.php?a=" + id;
     }
}
</script>
<div class="clearfix"></div>

<div class="container">
<a id="NuevoUser" class="btn btn-large btn-info"><i class="glyphicon glyphicon-plus"></i> &nbsp; Nuevo Usuario</a>
</div>

 <br />
 <center>
 <table width="90%">
 <tr>
 <td>
 <div id="mensaje"></div>
 </td>
 </tr>
 </table>
 </center>
<div class="container" id="tablahtml"></div>

<?php include_once 'footer.php'; ?>