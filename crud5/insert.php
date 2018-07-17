<script src="prototype.js" type="text/javascript"></script>
<script>
	function aceptar(){
		window.location="index.php";
	}
</script>
<script LANGUAGE="JavaScript">
function NoExisteUsuario(llaveabuscar)
{  
	var url = 'Ajax_NoExiste_Usuario.php';
	var pars = ("llaveabuscar=" + llaveabuscar);
	var myAjax = new Ajax.Updater('AjaxNoRepetirUsuario', url, { method: 'get', parameters: pars});
}
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
	 if(form.error.value == 1){
		alert('Error: Usuario No Disponible!!!');
		form.Usuario.focus();
		return false;
	 }
	Envio.submit();
}
</script>

<link rel="stylesheet"  href="css.css" type="text/css"/>
<br/>
<h3 align="center">GUARDAR REGISTRO</h3>
<form name="Envio" id="Envio" method="post" action="guardainsercion.php">
<center>
<table class="tabla">
<tr><td colspan=2><span id="AjaxNoRepetirUsuario"></span></td></tr>
<tr><td>NOMBRE		</td><td><input class="caja" type="text" size=50 name="Nombre"/></td></tr>
<tr><td>APELLIDOS	</td><td><input class="caja" type="text" size=50 name="Apellidos"/></td></tr>
<tr><td>USUARIO		</td><td><input class="caja" type="text" size=50 name="Usuario" onblur="NoExisteUsuario(this.value)"/></td></tr>
<tr><td>PASSWORD	</td><td><input class="caja" type="password" size=50 name="Password"/></td></tr>

</table>
<table>
<tr>
<td>
<center>
<input type="button" class="boot"  value="REGRESAR" onclick='aceptar()' />
</td>
<td>
<input type="button" class="boot"  value="GUARDAR" onclick='ValidarCampos(form)' />
</td>
</tr>
</table>
</center>
</form>