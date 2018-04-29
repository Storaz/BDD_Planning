<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css">
	<h1>Saisie élève</h1>
</head>
<body>
	<?php
		if(isset($_POST['nombre_eleves']))
		{
			$nbr_eleves=$_POST['nombre_eleves'];
		
		$i=1;
		for ($i=1; $i<=$nbr_eleves; $i++) { 
			echo ("
					<form action=\"recherche.php\" name=\"eleve_formulaire\" id=\"eleve_formulaire\" method=\"POST\" >
						<label for=\"NomEtudiant".$i."\">Nom de l'étudiant".$i."</label>:<input type=\"text\"><br>
						<label for=\"PrénomEtudiant".$i."\">Prénom de l'étudiant".$i."</label>:<input type=\"text\"><br>
						<label for=\"Classe".$i."\">Classe de l'étudiant".$i."</label>:<input type=\"text\"><br>
						<br>
						<br>
				");
		}
		echo "<input type=\"submit\" value=\"Envoyer\">
				</form>
				";
	}

	if(isset($_POST['nombre_eleves']))
		{
			require_once('connect.php');
			$connexion=Connect_bd();
			$query = "insert into eleve(NOMETUDIANT,PRENOMETUDIANT,MAILETUDIANT,NOMCLASSE)
			values($_POST[NomEtudiant.$i].','$_POST[PrenomEtudiant.$i].','$_POST[MailEtudiant.$i].','$_POST[Classe.$i].')"
			echo $query;
		}	
	
	?>
</body>
</html>