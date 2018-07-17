<?php

class crud
{
	private $db;
	
	function __construct($DB_con)
	{
		$this->db = $DB_con;
	}
	public function CuantosRegistros(){
		$stmt = $this->db->prepare("SELECT * FROM tbl_users");
		$stmt->execute();
		$count = $stmt->rowCount();
		return $count;
	}
	public function CreaPaginacion($count,$paginar){ 
		$paginahtml = "";
		if($count > 0)
		{
			$paginahtml .= '<ul class="pagination">'; 
			$total_no_of_pages=ceil($count/$paginar);
			$current_page=1;
			if(isset($_GET["pagina"]))
			{
				$current_page=$_GET["pagina"];
			}
			if($current_page!=1)
			{
				$previous =$current_page-1;
				$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(1);'>Primero</a></li>";
				$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(".$previous.");'>Anterior</a></li>";
			}
			for($i=1;$i<=$total_no_of_pages;$i++)
			{
				if($i==$current_page)
				{
					$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(".$i.");' style='color:red;'>".$i."</a></li>";
				}
				else
				{
					$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(".$i.");'>".$i."</a></li>";
				}
			}
			if($current_page!=$total_no_of_pages)
			{
				$next=$current_page+1;
				$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(".$next.");'>Siguiente</a></li>";
				$paginahtml .= "<li><a href='javascript:void(0);' onClick='change_page(".$total_no_of_pages.");'>Ultimo</a></li>";
			}
			$paginahtml .='</ul>';
		}
		return $paginahtml;
	}
	public function CreaTablaHTML($query)
	{
		$stmt = $this->db->prepare($query);
		$stmt->execute();
		$html = "";
		if($stmt->rowCount()>0)
		{
			$contador = 0;
			while($row=$stmt->fetch(PDO::FETCH_ASSOC))
			{
				$contador = $contador + 1;
                $html .='<tr>';
                $html .='<td>'.$row['id'].'</td>';
                $html .='<td>'.$row['first_name'].'</td>';
                $html .='<td>'.$row['last_name'].'</td>';
                $html .='<td>'.$row['email_id'].'</td>';
                $html .='<td>'.$row['contact_no'].'</td>';
                $html .='<td align="center">';
                $html .='<a onclick="Editar('.chr(39).$row['id'].chr(39).','.chr(39).$row['first_name'].chr(39).','.chr(39).$row['last_name'].chr(39).','.chr(39).$row['email_id'].chr(39).','.chr(39).$row['contact_no'].chr(39).')"><i class="glyphicon glyphicon-edit"></i></a>';
                $html .='</td>';
                $html .='<td align="center">';
                $html .='<a onclick="Eliminar('.$row['id'].')"><i class="glyphicon glyphicon-remove-circle"></i></a>';
                $html .='</td>';
                $html .='</tr>';
			}
		}
		else
		{
			 
            $html .='<tr>';
            $html .='<td colspan=7><center>No Existe Informacion</center></td>';
            $html .='</tr>';
             
		}
		return $html;
	}
	public function creaQuery($records_per_page)
	{ 
		$starting_position=0;
		if(isset($_GET["pagina"]))
		{
			if($_GET["pagina"]==0){
				$starting_position=0;
			}else{
				$starting_position=($_GET["pagina"]-1)*$records_per_page;
			}
		}
		$query2=" SELECT * FROM tbl_users limit $starting_position,$records_per_page";
		return $query2;
	}
	public function CreaUsuario($fname,$lname,$email,$contact)
	{
		try
		{
			$stmt = $this->db->prepare("INSERT INTO tbl_users(first_name,last_name,email_id,contact_no) VALUES(:fname, :lname, :email, :contact)");
			$stmt->bindparam(":fname",$fname);
			$stmt->bindparam(":lname",$lname);
			$stmt->bindparam(":email",$email);
			$stmt->bindparam(":contact",$contact);
			$stmt->execute();
			return true;
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();	
			return false;
		}
		
	} 
	public function UpdateUser($id,$fname,$lname,$email,$contact)
	{
		try
		{
			$stmt=$this->db->prepare("UPDATE tbl_users SET first_name=:fname, 
		                                               last_name=:lname, 
													   email_id=:email, 
													   contact_no=:contact
													WHERE id=:id ");
			$stmt->bindparam(":fname",$fname);
			$stmt->bindparam(":lname",$lname);
			$stmt->bindparam(":email",$email);
			$stmt->bindparam(":contact",$contact);
			$stmt->bindparam(":id",$id);
			$stmt->execute();
			
			return true;	
		}
		catch(PDOException $e)
		{
			echo $e->getMessage();	
			return false;
		}
	}
	
	public function delete($id)
	{
		$stmt = $this->db->prepare("DELETE FROM tbl_users WHERE id=:id");
		$stmt->bindparam(":id",$id);
		$stmt->execute();
		return true;
	}
 
	
}
