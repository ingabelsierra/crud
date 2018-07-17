<?php
	include('dbconfig.php');
	$id = $_GET["a"];
	$crud->delete($id);
	header("Location:index.php");
 ?>