<?php
	include('dbconfig.php');
	$Usuarios = json_decode($_POST["UsuariosPost"]);
	$Id    			= $Usuarios->Id;
	$Nombre 	 	= $Usuarios->Nombre;
	$Apellidos     	= $Usuarios->Apellidos;
	$Correo 		= $Usuarios->Correo;
	$Telefono		= $Usuarios->Telefono;
	$response  = array("error_msg"=>"","campo"=>"","error"=>"");
	if($Nombre==""){
		$response["campo"]= "txtNombre";
		$response["error"]= "Si";
		$response["error_msg"]= "<div class='alert alert-danger alert-dismissible fade in' role='alert'>
									<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>
									<strong>Error!</strong> El Nombre es Obligatorio.
									</div>";
		echo  json_encode($response);
	}else if($Apellidos==""){
		$response["campo"]= "txtApellidos";
		$response["error"]= "Si";
		$response["error_msg"]= "<div class='alert alert-danger alert-dismissible fade in' role='alert'>
									<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>
									<strong>Error!</strong> El Apellido es Obligatorio.
									</div>";
		echo  json_encode($response);
	}else if($Correo==""){
		$response["campo"]= "txtCorreo";
		$response["error"]= "Si";
		$response["error_msg"]= "<div class='alert alert-danger alert-dismissible fade in' role='alert'>
									<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>
									<strong>Error!</strong> El Correo es Obligatorio.
									</div>";
		echo  json_encode($response);
	}else if($Telefono==""){
		$response["campo"]= "txtTelefono";
		$response["error"]= "Si";
		$response["error_msg"]= "<div class='alert alert-danger alert-dismissible fade in' role='alert'>
									<button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>
									<strong>Error!</strong> El Telefono es Obligatorio.
									</div>";
		echo  json_encode($response);
	}else{
		if($Id==""){
			 $crud->CreaUsuario($Nombre,$Apellidos,$Correo,$Telefono);
			$response["error"]= "No";
			$response["error_msg"]= "<div class='alert alert-success alert-dismissible fade in' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>Información Almacenada Correctamente.</div>";
			echo  json_encode($response);
		}
		if($Id!=""){
			$crud->UpdateUser($Id,$Nombre,$Apellidos,$Correo,$Telefono);
			$response["error"]= "No";
			$response["error_msg"]= "<div class='alert alert-success alert-dismissible fade in' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>×</span></button>Información Actualizada Correctamente.</div>";
			echo  json_encode($response);
		}
	}
?>