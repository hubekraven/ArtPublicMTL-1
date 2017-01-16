<?php
	class Controleur_AdminsAjax extends BaseControleur{	
		//la fonction qui sera appelée par le routeur
		public function traite(array $params){				
            // vérifie s'il y a une action passÃ©e en paramÃªtre
			if(isset($params["action"])){
				//modèle et vue vides par dÃ©faut
				$data = array();
				$vue = "";
				//switch en fonction de l'action qui nous est envoyÃ©e
				//ce switch détermine la vue $vue et obtient le modÃ¨le $data
				switch($params["action"]){			
                   // si l'action est "importation"
                    case "importation":
                     $this->afficheVue("MiseAJourBD");	
						$this->importeArrondissements();
						$this->importeArtiste();
						$this->importeOeuvre();
						break;

					// supression d'une oeuvre
                    case "supprimerOeuvre":
						if(isset($params["id"])){
							$modeleOeuvre = new Modele_oeuvres();
							$valide = $modeleOeuvre->supprimerOeuvre($params["id"]);
							if($valide==""){
								echo "";								
							}
							else{
								echo "ERROR:".$valide;
							}
						}
						else{													
							echo "ERROR";
						}
						break;	

						
					// supression d'une image du caroussel
                    case "supprimerImageCaroussel":
						if(isset($params["urlImage"])){
							$modeleCaroussel = new Modele_caroussel();
							$valide = $modeleCaroussel->supprimerUrlImage($params["urlImage"]);
							if($valide){
								$data = $modeleCaroussel->imagesCaroussel();
								$this->afficheVue("caroussel",$data);										
							}
							else{
								echo "ERROR";
							}
						}
						else{													
							echo "ERROR";
						}
						break;	
						
					// ajout d'une image au caroussel
                    case "ajoutImageCaroussel":
						if(isset($params["urlImage"])){
							$modeleCaroussel = new Modele_caroussel();
							$valide = $modeleCaroussel->ajouterUrlImage($params["urlImage"]);
							if($valide){
								$data = $modeleCaroussel->imagesCaroussel();
								$this->afficheVue("caroussel",$data);										
							}
							else{
								echo "ERROR";
							}
						}
						else{													
							echo "ERROR";
						}
						break;	
        
				}
			}
			else{
                //action par défaut
                echo "ERROR";					
			}			
		} // fin de la fonction traite
        
        public function importeOeuvre()
		{
            // 
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
		
		
		public function lienArtisteOeuvre()
		{
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

			}
		} // fin de la fonction lienArtisteOeuvre
        
        public function importeArtiste()
		{
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
       
        public function supprimeOeuvre(){
            $modeleAdmins = new Modele_admins();
            if(isset($params["id"])){
            $valide = $modeleAdmin->supprimer($params["id"]);
            }	
        }

	}
?>