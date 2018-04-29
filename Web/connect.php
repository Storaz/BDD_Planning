<?php

	define('SERVEUR',"localhost");
	define('BASE',"exam");
	define('USER',"root");
	define('PASSWD',"");
	function Connect_bd(){

		$dsn="mysql:dbname=".BASE.";host=".SERVEUR;
		try{
			$connexion=new PDO($dsn,USER,PASSWD);
		}
		catch(PDOException $e){
			printf("echec de la connexion: %s\n",$e->getMessage());
			exit();
		}
		return $connexion;
	}

?>