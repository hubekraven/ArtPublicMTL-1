<?php
	class Modele_caroussel extends TemplateDAO{
		public function getTable(){
			return "caroussel";
		}

		///---la Requete SQL permet d'obtenir les images du caroussel
		///---et si cette image appartient a une oeuvre on aura le titre de l'oeuvre.
		public function imagesCaroussel(){
			try{			
				$stmt = $this->connexion->prepare("SELECT c.id, c.urlImage, o.titre FROM caroussel c left outer join oeuvre o on c.urlImage = o.urlImage and o.valide = 1");
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				//echo $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: trace pour detecter l'erreur";
				return false;
			}
		}
		
		//---cette Requete SQL permet d'enlever une image du caroussel
		public function supprimerUrlImage($urlImage) {
			try{			
				$stmt = $this->connexion->prepare("DELETE FROM caroussel where urlImage='". $urlImage . "'");
				$stmt->execute();
				return 1;
			}		
			catch(Exception $exc){
				//echo $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: trace pour detecter l'erreur";
				return 0;
			}		
		}
		
		//---cette Requete Permet d'ajouter une image au caroussel
		public function ajouterUrlImage($urlImage) {
			try{			
				$stmt = $this->connexion->prepare("insert into caroussel (urlimage) values('".$urlImage."')");
				$stmt->execute();
				return 1;
			}		
			catch(Exception $exc){
				//echo $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: trace pour detecter l'erreur";
				return 0;
			}		
		}

		//---cette Requete pour acceder
		public function imagesOeuvresPourCaroussel(){
			try{			
				$stmt = $this->connexion->prepare('select o.urlImage,o.titre from oeuvre o left outer join caroussel c on o.urlImage = c.urlImage where c.urlimage is null and o.urlImage > "" and o.valide = 1');
				$stmt->execute();
				return $stmt->fetchAll();
			}		
			catch(Exception $exc){
				//echo $exc->getmessage() . " sql=" . $sql . "  ***ERREUR: trace pour detecter l'erreur";
				return false;
			}
		}

	}
?>