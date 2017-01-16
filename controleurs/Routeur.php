<?php
	class Routeur
	{
		public static function route()
		{
			//obtenir le controleur qui devra traiter la requête

			//$controleur = $_REQUEST["controleur"];

			//obtenir la query string
			$chaineRequete = $_SERVER["QUERY_STRING"];
			$posEperluette = strpos($chaineRequete, "&");
			if($posEperluette)
				$controleur = substr($chaineRequete, 0, $posEperluette);
			else
				$controleur =  substr($chaineRequete, 0);
			//print_r($controleur);
			
			if($controleur != ""){
				//chercher la classe du controleur
				$classe = "Controleur_" . $controleur;
				//aidé par diadie
				//garder les donnée du form dans la session
				if(isset($_POST["modifier"])){
					$_SESSION["sommesT"] = $_POST["sommesT"];
					$_SESSION["sommesD"] = $_POST["sommesD"];
					$_SESSION["missionT"] = $_POST["missionT"];
					$_SESSION["missionD"] = $_POST["missionD"];
					$_SESSION["joindreT"] = $_POST["joindreT"];
					$_SESSION["joindreD"] = $_POST["joindreD"];
					$_SESSION["partenaireT"] = $_POST["partenaireT"];
					$_SESSION["partenaireD"] = $_POST["partenaireD"];
					//redirectioner vers la page du form
					header("Location:./index.php?Admins&action=insererPropos");
				}
			}

			else{	
				//controleur par défaut

				$classe = "Controleur_Public";
			}

			//vérifier que la classe existe
			if(class_exists($classe)){
				$objetControleur = new $classe;
				$objetControleur->traite($_REQUEST);
			}
			else
			{
				die("Erreur 404! Le controleur n'existe pas.");
			}
		}
		
	}
?>