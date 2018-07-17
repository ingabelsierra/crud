<?php
class conexion {
	private $link;
	
	function conexion() {
		$host  = "localhost";
		$user  = "root";
		$pass  = "";
		$bd    = "xcrud5";
		$this->link = mysqli_connect($host,$user,$pass,$bd);
	}
	
	public function consulta($sql) {
		return mysqli_query($this->link,$sql);
	}
}
?>