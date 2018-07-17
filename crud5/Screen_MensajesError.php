<?php
if ($mensajeerror == 1) {
   echo '<div class="error-box round">'.$mensajeAjax.'</div>';
}else{
	if (strlen(trim($mensajeAjax)) > 0) {
		echo '<div class="confirmation-box round">'.$mensajeAjax.'</div>';
	}
}	
?>

