<?php

	class Controleur_Admins extends BaseControleur{	

		//la fonction qui sera appelée par le routeur

		public function traite(array $params){	
			//affichage du head
			$this->afficheVue("headAdmin","");
			
            // vérifie s'il y a une action passée en paramétre
			if(isset($params["action"])){
				//modèle et vue vides par défaut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modéle $data
				switch($params["action"]){			
                   // si l'action est "importation"
                   
                        
					case "soumission":
						$modeleOeuvres= new Modele_Oeuvres();
						$oeuvre = "";
						if(!isset($_SESSION["authentifie"])){ 
							header("Location:./index.php?Admins&action=login");
						}else{			
							if (isset($params["id"])) $oeuvre = $modeleOeuvres->obtenirOeuvre($params["id"]);							
							if ($oeuvre !="") {
								$this->afficheSoumission($oeuvre);
								$this->afficheVue("adminListeDesOeuvres", $data);
								break; // Si il a les infos d<une oeuvre il sort (break)
							}
						}
					case "listeDesOeuvres":	 // Sinon il affiche la liste des oeuvres
						$modeleOeuvres= new Modele_Oeuvres();
						if(!isset($_SESSION["authentifie"])){ 
							header("Location:./index.php?Admins&action=login");
						}else{
							$data = $modeleOeuvres->listeDesOeuvres();	
							$this->afficheVue("headerAdmin","");
							$this->afficheVue("adminListeDesOeuvres", $data);
							break;									
						}

					case "authentification":
					//Authentifie l'usager ou redirection-le vers la vue login
						if(isset($_POST["username"]) && isset($_POST["password"])){
							$this-> authenficationUsager($_POST["username"],$_POST["password"]);
						}
						else{
							header("Location:./index.php?Admins&action=login");
						}
						break;
						
					case "apropos": 
						if(!isset($_SESSION["authentifie"])){ 
							header("Location:./index.php?Admins&action=login");
						}else{
							$this->afficheVue("headerAdmin","");
							//$this->afficheVue("vueProposAdmin", $data);
							$this->pageProposAdmins();
						}
						break;
					
					case "insererPropos": 
						$modelePropos = new Modele_propos();
						if(isset($_SESSION["sommesT"]) && isset($_SESSION["sommesD"]) && isset($_SESSION["missionT"]) && isset($_SESSION["missionD"]) && isset($_SESSION["joindreT"]) && isset($_SESSION["joindreD"]) && isset($_SESSION["partenaireT"]) && isset($_SESSION["partenaireD"])){
							extract($_SESSION);
							if(!empty($sommesT) && !empty($sommesD) && !empty($missionT) && !empty($missionD) && !empty($joindreT) && !empty($joindreD) && !empty($partenaireT) && !empty($partenaireD)){
								$valide = $modelePropos->insererPagePropos($sommesT, $sommesD, $missionT, $missionD, $joindreT, $joindreD, $partenaireT, $partenaireD);
								if($valide){
									//$this->viderFormPropos();
									$this->afficheVue("headerAdmin","");
									echo "Insérer dans la bd";
									//$this->afficheVue("vueProposAdmin", $valide);
									$this->pageProposAdmins();
								} else{
									echo "ERROR";
								}		
							} else{
								$this->afficheVue("headerAdmin","");
								echo "Remplir tous les champs";
								//$this->afficheVue("vueProposAdmin");
								$this->pageProposAdmins();
							}
						}else{
							echo "ERROR";
						}
						break;
						
					//si action est fin de session
					case "finSession":
						if(isset($_SESSION["authentifie"])){ 
							session_destroy();
							header("Location:./index.php?Admins&action=login");
						}
						break;
						
					// pour l'administration du caroussel.
					case "gererCaroussel":
						if(!isset($_SESSION["authentifie"])){ 
							header("Location:./index.php?Admins&action=login");
						}else{
						  $modeleCaroussel= new Modele_caroussel();
						  $data = $modeleCaroussel->imagesCaroussel();
						  $this->afficheVue("headerAdmin","");						  
						  $this->afficheVue("caroussel",$data);	
						  $this->afficheVue("ajoutCaroussel","");
						  $data = $modeleCaroussel->imagesOeuvresPourCaroussel();
						  $this->afficheVue("listeImagesOeuvres",$data);											  
						  
						}
						break;			
						
					//pour initier le processus de login initie la Session grainDeSel
                    case "login":
					default:
						if(!isset($_SESSION["grainDeSel"]))
							$_SESSION["grainDeSel"] = rand(1, 10000);
							$this->afficheVue("vueLogin",$_SESSION["grainDeSel"]);							
						break;
				}		
			}
			else{
				//actions par défaut 
				if(!isset($_SESSION["grainDeSel"]))	
					//initie la Session grainDeSel
					$_SESSION["grainDeSel"] = rand(1, 10000);
					$this->afficheVue("vueLogin",$_SESSION["grainDeSel"]);					
			}
			//inclusion du footer 
			$this->afficheVue("footerAdmin");	
		} // fin de la fonction traite
        
        public function importeOeuvre(){

			$modeleAdmins = new Modele_admins();
            
            // va chercher le JSON de la ville et le décode
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
            
            //fait une boucle pour chacune des oeuvres du JSON
            $compteur = count($fichierJSON_decode);
			for($i = 0; $i < $compteur; $i++){
            
                // crée les variables à utiliser
                $noInterneArtiste  =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
				$noInterne			 = $fichierJSON_decode[$i]->NoInterne;
				$titre 				 = $fichierJSON_decode[$i]->Titre;
				$titreVariante       = $fichierJSON_decode[$i]->TitreVariante;
				$nomCollection       = $fichierJSON_decode[$i]->NomCollection;
				$categorieObjet      = $fichierJSON_decode[$i]->CategorieObjet;
				$categorie           = $fichierJSON_decode[$i]->SousCategorieObjet;
				$modeAcquisition     = $fichierJSON_decode[$i]->ModeAcquisition;
				$dateAccession       = $fichierJSON_decode[$i]->DateAccession;
				$materiaux           = $fichierJSON_decode[$i]->Materiaux;
				$support             = $fichierJSON_decode[$i]->Support;
				$technique           = $fichierJSON_decode[$i]->Technique;
				$dimensionsGenerales = $fichierJSON_decode[$i]->DimensionsGenerales;
				$parc                = $fichierJSON_decode[$i]->Parc;
				$batiment            = $fichierJSON_decode[$i]->Batiment;
				$adresseCivique      = $fichierJSON_decode[$i]->AdresseCivique;
				$coordonneeLatitude  = $fichierJSON_decode[$i]->CoordonneeLatitude;
				$coordonneeLongitude = $fichierJSON_decode[$i]->CoordonneeLongitude;
				$numeroAccession     = $fichierJSON_decode[$i]->NumeroAccession;
				$arrondissement      = $fichierJSON_decode[$i]->Arrondissement;
				$description         = "";
				$urlImage            = "";
                
                $idArtiste = $modeleAdmins->getIdSelonNoInterneA($noInterneArtiste);
			  
                // insertion dans la table catégorie
                $modeleAdmins->insereCategorie($categorie);
                    
                // insertion dans la table oeuvre
				$modeleAdmins->insereOeuvre( 
					$noInterne, 
					$titre, 
					$titreVariante, 
					$nomCollection, 
					$categorieObjet, 
					$modeAcquisition, 
					$dateAccession, 
					$materiaux, 
					$support, 
					$technique, 
					$dimensionsGenerales, 
					$parc, 
					$batiment, 
					$adresseCivique, 
					$coordonneeLatitude, 
					$coordonneeLongitude, 
					$numeroAccession, 
					$description, 
					$urlImage,
                    $categorie,
                    $arrondissement,
                    $idArtiste[0]
				);
			} // fin de la boucle
               
		} // fin de la fonction importeOeuvreArtiste
		
		public function importeArrondissements(){
            // va chercher le fichier JSON des arrondissements de la ville de MontrÃ©al
			$modeleAdmins = new Modele_admins();
			$arron = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/00bd85eb-23aa-4669-8f1b-ba9a000e3dd8/resource/e9b0f927-8f75-458c-8fda-b5da65cc8b73/download/limadmin.json');
			$arron_decode = JSON_decode($arron);
			$compteur = count($arron_decode->features);
            // fait une boucle sur tous les arrondissements du JSON
			for($i = 0; $i < $compteur; $i++){
				$ville = $arron_decode->features[$i]->properties->NOM;
                // rempli la BD avec les arrondissements
				$modeleAdmins->insereArrondissement($ville);
			}	
		} // fin de la fonction importeArrondissements
		

		public function lienArtisteOeuvre(){

            // va chercher le fichier JSON des oeuvres publiques de la ville de Montréal
			$modeleAdmins = new Modele_admins();
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
			$compteur = count($fichierJSON_decode);
            
            // fait la boucle sur tous les NoInterne du JSON des oeuvres et des artistes, 
			for($i = 0; $i < $compteur; $i++){
                //rempli les variables 
				$noInterneArtiste    =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
                // va chercher l'id de l'artiste d'après son NoInterne
				$idArtiste = $modeleAdmins->getIdSelonNoInterneA($noInterneArtiste);
          
                // va chercher l'id de l'oeuvre d'aprÃ¨s son NoInterne
				$idOeuvre = $modeleAdmins->getIdSelonNoInterneO($noInterneOeuvre);
                // va chercher l'id de l'artiste d'aprÃ¨s son NoInterne
				$idArtiste = $modeleAdmins->getIdSelonNoInterneA($noInterneArtiste);
                //insÃ¨re les deux id retrouvÃ©s pour faire le lien
				$modeleAdmins->insereLiens($idOeuvre["id"], $idArtiste["id"]);
			}
		} // fin de la fonction lienArtisteOeuvre

        public function importeArtiste(){
            // va chercher le fichier JSON des oeuvres publiques de la ville de Montréal
			$modeleAdmins = new Modele_admins();
			$fichierJSON = file_get_contents('http://donnees.ville.montreal.qc.ca/dataset/2980db3a-9eb4-4c0e-b7c6-a6584cb769c9/resource/18705524-c8a6-49a0-bca7-92f493e6d329/download/oeuvresdonneesouvertes.json');
			$fichierJSON_decode = JSON_decode($fichierJSON);
			$compteur = count($fichierJSON_decode);
			
			for($i = 0; $i < $compteur; $i++){
                // crée les variables à utiliser
                $noInterneArtiste  =$fichierJSON_decode[$i]->Artistes[0]->NoInterne;
                $prenom            =$fichierJSON_decode[$i]->Artistes[0]->Prenom;
                $nom               =$fichierJSON_decode[$i]->Artistes[0]->Nom;
                $nomCollectif      =$fichierJSON_decode[$i]->Artistes[0]->NomCollectif; 
				
                //insertion dans la table artiste
                $modeleAdmins->insereArtiste($noInterneArtiste, $nom, $prenom, $nomCollectif);
			} // fin de la boucle
		} // fin de la fonction lienArtisteOeuvre
        
		public function afficheSoumission($oeuvre){
			global $admin;
			$admin = true;
			$this->afficheVue("headerAdmin","");
			$this->afficheVue("formSoumission", $oeuvre);
		}
		


		//fait l'authenfication de l'usager avec la base de donnees
		public function authenficationUsager($nomUsager,$motdePasse){
			$data = Array();
			$modeleAdmins = new Modele_admins();
			$motDePasseMD5=$modeleAdmins -> getMotDePasse($nomUsager);			
			$motDePasseGrainSel = md5($motDePasseMD5["motDePasse"] . $_POST["grainSel"]);
			if($motDePasseGrainSel == $motdePasse){
				$_SESSION["authentifie"] = $nomUsager;
				$data["authentifie"]=$_SESSION["authentifie"];
				//$this->afficheVue("headerAdmin",$data);
				$this->afficheVue("headerAdmin",$data);
			}
			else{
				$data["message"] = "Mauvaise combinaison username/password";
				$this->afficheVue("vueLogin",$data);
			}	
		}// fin de la fonction authenficationUsager
		
		public function pagePropos($sommesT, $sommesD, $missionT, $missionD, $joindreT, $joindreD, $partenaireT, $partenaireD){
			$modelePropos = new Modele_propos();
			$data = $modelePropos->obtenirTousPagePropos();
			$this->afficheVue("vuePropos", $data);
		}
		
		public function pageProposAdmins(){
			$modelePropos = new Modele_propos();
			$data = $modelePropos->obtenirTousPagePropos();
			$this->afficheVue("vueProposAdmin", $data);
		}
	}
?>