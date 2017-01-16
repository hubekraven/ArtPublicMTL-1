<?php
	class Modele_oeuvres extends TemplateDAO{
		public function getTable(){
			return "oeuvre";
		}

		
		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirTousOeuvresArtistes(){
			try{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste,titre, titreVariante, categorie,urlImage, artiste.prenom, artiste.nom
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id WHERE oeuvre.valide = 1");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				return false;
			}
		}

		///---la Requete SQL permet pour obtenir certaines informations de toutes 
		///---les oeuvres d'une categorie ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresCategorie($uneCategorie){
			try{	
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, titre, idArtiste, categorie,urlImage, artiste.prenom, artiste.nom  
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id WHERE categorie= :uneCategorie AND oeuvre.valide = 1");
				$stmt->bindParam(":uneCategorie", $uneCategorie);
				$stmt->execute();
				return $stmt->fetchAll();	
			}		
			catch(Exception $exc){
				return false;
			}
		}
		///---la Requete SQL permet d'obtenir certaines informations de toutes 
		///---les oeuvres d'un arrondissement ainsi que le nom de artiste lié à chaque oeuvre.---///
		public function obtenirOeuvresArrondissement($unArrondissement){
			try{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste, titre, arrondissement,urlImage, artiste.prenom, artiste.nom, artiste.nomCollectif, coordonneeLatitude, coordonneeLongitude
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id
													WHERE arrondissement= :unArrondissement AND oeuvre.valide = 1");
				$stmt->bindParam(":unArrondissement", $unArrondissement);
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				return false;
			}
		}
        
        public function obtenirTousOeuvresArrondissement(){
			try{			
				$stmt = $this->connexion->prepare("SELECT oeuvre.id, idArtiste, titre, arrondissement,urlImage, artiste.prenom, artiste.nom, artiste.nomCollectif, coordonneeLatitude, coordonneeLongitude
													FROM oeuvre JOIN artiste ON idArtiste = artiste.id AND oeuvre.valide = 1");
				$stmt->bindParam(":unArrondissement", $unArrondissement);
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				return false;
			}
		}
        
			
		// Mise a jour des oeuvres (a partir de l'information du formulaire de soumission)
		public function oeuvreMAJ($id, $titre, $categorie, $arrondissement, $adresse, $description, $image, $titreVariante, $nomParc, $batiment,  
		$prenomArtiste, $nomArtiste,  $nomCollectif, $bio,  $modeAcquisition, $numeroAccession, $dateAccession, $materiaux, 
		$support, $technique, $categorieObjet, $dimensionGenerales, $coordonneeLatitude, $coordonneeLongitude, $mediums, $nomCollection, $valide){	
			
		    //global $sqlUpdateBio;
		//	$sqlUpdateBio = "";

			try{

				// Recherche si l'artiste ou le nom collectif existe deja sinon on le cree et on retourne l'id.
				$idArtiste = $this->obtenirIdArtiste( $prenomArtiste, $nomArtiste,  $nomCollectif, $bio );

				if ($id == "") {  // Si nous n'avons pas d'id alors il faut ajouter le record
				
									
					// categorieObjet idArtiste nomCollection titreVariante valide
					//TODO mettre les "res" partout dans l'insert.
					$quote = '"';
					$sep = $quote.",".$quote;
					if ($idArtiste==null) $strIdArtiste = "null";
					else $strIdArtiste = $idArtiste;
					$sql = "insert into oeuvre(titre, categorie, arrondissement, adresseCivique, description, urlImage, titreVariante, parc, batiment, modeAcquisition, numeroAccession, dateAccession, materiaux, support, technique, categorieObjet, dimensionsGenerales, coordonneeLatitude, coordonneeLongitude, mediums, nomCollection, valide, idArtiste) ".
						" values ('".$titre."', '".$this->res($categorie)."', '".$this->res($arrondissement)."', '". $adresse."', '".$description."', '".$image."', '".$titreVariante."', '".$nomParc."', '".$batiment."', '".$modeAcquisition. 
						"', '".$numeroAccession."', '".$dateAccession."', '".$materiaux."', '".$support."', '".$technique."', '".$categorieObjet."', '".$dimensionGenerales."', '".$coordonneeLatitude."', '".$coordonneeLongitude."', '".$mediums."', '".$nomCollection."', '".$valide."',".$strIdArtiste.")";

					$stmt = $this->connexion->prepare($sql);
					$stmt->execute();
					
					// obtenir l'identifiant du record cree		
					$sql = "SELECT max(id) id from oeuvre";
					$stmt = $this->connexion->prepare($sql);
					$stmt->execute();
					$resultat = $stmt->fetch();
					$id = $resultat["id"];
					
				    //return $id . "&Merci pour votre soumission. Elle sera traite eventuellement... SqlUpdateBio = ".$sqlUpdateBio." sql = ". $sql;
				    return $id ."&MERCI POUR VOTRE SOUMISSION! \nELLE SERA TRAITÉE SOUS PEU PAR UN ADMINISTRATEUR DU SITE ARTPUBLIC";
				}
				else {
					// BIG UPDATE.
					if ($idArtiste=="") $strIdArtiste = "null";
					else $strIdArtiste = $idArtiste;
			
					$sql = "update oeuvre set " .
							"titre = '". $this->res($titre) . "',".
							"categorie = '". $this->res($categorie) . "',".
							"arrondissement = '". $this->res($arrondissement) . "',".
							"adresseCivique = '". $this->res($adresse) . "',".
							"description = '". $this->res($description) . "',".
							"urlImage = '". $this->res($image) . "',".
							"titreVariante = '". $this->res($titreVariante) . "',".
							"parc = '". $this->res($nomParc) . "',".
							"batiment = '". $this->res($batiment) . "',".
							"modeAcquisition = '". $this->res($modeAcquisition) . "',".
							"numeroAccession = '". $this->res($numeroAccession) . "',".
							"dateAccession = '". $this->res($dateAccession) . "',".
							"materiaux = '". $this->res($materiaux) . "',".
							"support = '". $this->res($support) . "',".
							"technique = '". $this->res($technique) . "',".
							"categorieObjet = '". $this->res($categorieObjet) . "',".
							"dimensionsGenerales = '". $this->res($dimensionGenerales) . "',".
							"coordonneeLatitude = '". $coordonneeLatitude . "',".
							"coordonneeLongitude = '". $coordonneeLongitude . "',".
							"mediums = '". $this->res($mediums) . "',".
							"nomCollection = '". $this->res($nomCollection) . "',".
							"valide = ". $valide . ",".
							"idArtiste = ". $strIdArtiste . " ".
							"where id =".$id;
					$stmt = $this->connexion->prepare($sql);
					$stmt->execute();
					
				    //return $id . "&Les mises a jour ont ete effectue. SqlUpdateBio = ".$sqlUpdateBio."  Sql=". $sql;
				    if($valide==1){
						return $id ."&LES MISES À JOUR ONT ÉTÉ EFFECTUÉES. \nCETTE OEUVRE EST MAINTENANT DISPONIBLE SUR LE SITE ARTPUBLIC";	
					}
					else{
						return $id ."&LES MISES À JOUR ONT ÉTÉ EFFECTUÉES. ";	
					}
					

				}
			}	
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}

		
		}

		// Recherche pour l'identifiant de l'artiste ou du nom collectif 
		// si non existant alors on cree le nouvel artiste/nom collectif et on retourne le nouvel id	
		public function obtenirIdArtiste( $prenomArtiste, $nomArtiste,  $nomCollectif, $bio ) {
			//echo "prenom=".$prenomArtiste. " nom=".$nomArtiste. "nomCollectif='".$nomCollectif. " ---"; 
		    global $sqlUpdateBio;
			
			// si aucune reference a l'artiste n'est ecrite on ne cree pas d'artiste.
			if ($prenomArtiste == "" && $nomArtiste== "" & $nomCollectif=="") return;

			if ($nomCollectif == null) {
			   $sql = "SELECT id from artiste where prenom = '". $prenomArtiste. "' and nom = '". $nomArtiste. "'";
			}
			else {
				$sql = "SELECT id from artiste where nomCollectif = '". $nomCollectif. "'";		
			}
			try{
				$stmt = $this->connexion->prepare($sql);
				$stmt->execute();
				$resultat = $stmt->fetch();
				$id = $resultat["id"];
				if ($id == null) {
					// le ID n'a pas ete trouve on le cree dans ce cas
					$quote = '"';
					$sep = $quote.",".$quote;
					if ($nomCollectif == null) {
					  $sql = "insert into artiste (prenom, nom, biographie) values ('".$prenomArtiste."','".$nomArtiste."','".$bio."')";
					}
					else {
					  $sql = "insert into artiste (nomCollectif, biographie) values ('".$nomCollectif."','".$bio."')";
					}					$stmt = $this->connexion->prepare($sql);
					$stmt->execute();
					$sqlUpdateBio = $sql;
					// obtenir l'identifiant du record cree		
					$sql = "SELECT max(id) id from artiste";
					$stmt = $this->connexion->prepare($sql);
					$stmt->execute();
					$resultat = $stmt->fetch();
					$id = $resultat["id"];
				}
				else {
					// mise a jour de la bio si la biographie a ete modifie.
					if ($bio != "") {
						$sql = "update artiste set biographie = '". 
								$this->res($bio) . 
								"' where id =". 
								$id . 
								" and (biographie != '".
								$this->res($bio).
								"' or biographie is null)";
						$stmt = $this->connexion->prepare($sql);
						$stmt->execute();
						$sqlUpdateBio = $sql;

					}
				}
				return $id;
			}
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}	
		}
		
		public function obtenirBio($prenomArtiste,$nomArtiste,$nomCollectif) {
			// obtenir la Bio	
			try{

				if ($nomCollectif != "") $sql = "SELECT biographie from artiste where nomCollectif ='".$nomCollectif."'";
				else $sql = "SELECT biographie from artiste where prenom ='".$prenomArtiste."' and nom ='".$nomArtiste."'" ;
				$stmt = $this->connexion->prepare($sql);
				$stmt->execute();
				$resultat = $stmt->fetch();
				$bio = $resultat["biographie"];		
				return $bio;
			}
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}	

		}
		
		//obtenir record d'un oeuvre
		public function obtenirOeuvre($id) {
			try{
				$sql = "SELECT oeuvre.*, nom, prenom, nomCollectif, biographie from oeuvre left outer join artiste on artiste.id = oeuvre.idArtiste where oeuvre.id =".$id;
				$stmt = $this->connexion->prepare($sql);
				$stmt->execute();
				return $stmt->fetch();
			}
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}	

		}
		
		// suppression d'une oeuvre
		public function supprimerOeuvre($id) {
			try{
				$sql = "delete from oeuvre where id =".$id;
				$stmt = $this->connexion->prepare($sql);
				$stmt->execute();
				return "";
			}
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}	

		}		

		// suppression d'une oeuvre
		public function listeDesOeuvres() {
			try{
				$sql = "SELECT 'Soumissions' as section,'Soumissions' as sectionDiv,'Validations en attente' as sousSection,'validationsAttente' as sousSectionDiv,id,titre,'1' as sectionOrder, LPAD(id, 8, '0') as strOrder FROM `oeuvre` WHERE noInterne is null and valide =0 ".
				"UNION SELECT 'Soumissions' as section,'soumission' as sectionDiv,'Oeuvres validées' as sousSection,'valide' as sousSectionDiv,id,titre,'2' as sectionOrder, titre as strOrder FROM `oeuvre` WHERE noInterne is null and valide =1 ".
				"UNION SELECT 'Données publiques' as section,'donneePublique' as sectionDiv,'' as sousSection,'' as sousSectionDiv,id,titre,'3' as sectionOrder, titre as strOrder FROM `oeuvre` WHERE noInterne is not null ORDER BY sectionOrder, strOrder ASC";
				
				//echo $sql;
				$stmt = $this->connexion->prepare($sql);
				$stmt->execute();
				return $stmt->fetchAll();
			}
			catch(Exception $exc){
				return $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: Une erreur s'est produite";
			}	

		}				
	
		
		//fonction qui protege contre injection sql
		public function res($parametre){
			if ($parametre == null) return $parametre;
			else return str_replace ("'","''",$parametre);
		}
	

	}
?>