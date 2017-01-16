<?php
	class Modele_artistes extends TemplateDAO{
		public function getTable(){
			return "artiste";
		}
		
		//afficher toute la liste des artiste en ordre alphabetique par nom
		public function obtenirTousArtisteAlphabetique(){
			try{

				$stmt = $this->connexion->prepare("SELECT id, IFNULL(prenom, ' ')AS prenom, IFNULL(nom , nomCollectif) as nomArtiste FROM artisteavecoeuvre ORDER BY nomArtiste");
				//SELECT distinct artiste.id, IFNULL(prenom, ' ')AS prenom, IFNULL(nom , nomCollectif) as nomArtiste, oeuvre.valide FROM artiste,oeuvre where oeuvre.idArtiste = artiste.id and oeuvre.valide = 1 ORDER BY nomArtiste
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetchAll();
			}
			
			catch(Exception $exc){
				return false;
			}
		}

		//afficher la description d'un artiste
		public function obtenirDescriptionArtiste ($valeur){
			try{
				$stmt = $this->connexion->prepare("SELECT prenom, nom, nomCollectif, biographie FROM artiste WHERE id = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetch();
			}
			
			catch(Exception $exc){
				return false;
			}
		}

		public function obtenirOeuvresArtiste ($valeur){

			try{
				$stmt = $this->connexion->prepare("SELECT urlImage FROM oeuvre WHERE idArtiste = :valeur");
				$stmt->bindParam(":valeur", $valeur);
				$stmt->execute();
				return $stmt->fetchAll();
			}
			
			catch(Exception $exc){
				return false;
			}
		}
	}
?>