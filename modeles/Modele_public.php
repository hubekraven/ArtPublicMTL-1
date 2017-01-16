<?php
	class Modele_public extends TemplateDAO{
		public function getTable(){

			return "public";
		}

		public function recherche($strRecherche){		
			try{
				$rechDebut = $strRecherche."%";
				$rechDans = "% ".$strRecherche."%";
				$rechDash = "%-".$strRecherche."%";
				$sqlStm =
					"SELECT 'lieu' as type, nom as resultat, (0) as id FROM arrondissement WHERE nom LIKE '".$rechDebut."' or nom LIKE '". $rechDans. "' or nom LIKE '". $rechDash. "'".
					" UNION SELECT 'oeuvre' as type, titre as resultat, id from oeuvre where (titre LIKE '".$rechDebut."' or titre LIKE '". $rechDans. "') and valide = 1".
					" UNION SELECT 'artiste' as type, concat(prenom, ' ', nom) as resultat, id FROM artisteavecoeuvre WHERE nom LIKE '". $rechDebut."' or nom LIKE '". $rechDans."' or prenom LIKE '". $rechDebut."' or prenom LIKE '". $rechDans."'".
					" UNION SELECT 'artiste' as type, nomCollectif as resultat, id FROM artisteavecoeuvre WHERE nomCollectif LIKE '". $rechDebut."' or nomCollectif LIKE '". $rechDans."'".
					" UNION SELECT 'categorie' as type, nom as resultat, (0) as id FROM categorie WHERE nom LIKE '".$rechDebut."' or nom LIKE '". $rechDans."'";
				//echo $sqlStm;	
				$stmt = $this->connexion->prepare($sqlStm);
				$stmt->execute();
                return $stmt->fetchAll();
			}	
			catch(Exception $exc){
				echo "ERROR:";
				echo $exc->getMessage();
				return null;
			}
		}

		public function rechercheArtiste($strRecherchePrenom, $strRechercheNom){		
			try{
				$sqlStm ="SELECT prenom, nom FROM artiste WHERE nom like '".$strRechercheNom. "%' AND prenom like '".$strRecherchePrenom ."%'"; 
				$stmt = $this->connexion->prepare($sqlStm);
				$stmt->execute();
                $resultatRecherche = $stmt->fetchAll();
				return $resultatRecherche;
			}	
			catch(Exception $exc){
				echo "ERROR:";
				echo $exc->getMessage();
				return null;
			}
		}
		
		public function rechercheCollectif($strRechercheCollectif){		
			try{
				$sqlStm = "SELECT nomCollectif FROM artiste WHERE nomCollectif like '".$strRechercheCollectif. "%'"; 
				$stmt = $this->connexion->prepare($sqlStm);
				$stmt->execute();
                $resultatRecherche = $stmt->fetchAll();
				return $resultatRecherche;
			}	
			catch(Exception $exc){
				echo "ERROR:";
				echo $exc->getMessage();
				return null;
			}
		}		
		
		public function nomOeuvre($id){		
			try{
				$stmt = $this->connexion->prepare("select titre, categorieObjet, categorie, parc, materiaux, adresseCivique, urlImage, artiste.nom, artiste.prenom, artiste.nomCollectif, arrondissement.nom as nomArrondissement, coordonneeLatitude, coordonneeLongitude, idArtiste from oeuvre 
                join artiste on oeuvre.idArtiste = artiste.id 
				join arrondissement on oeuvre.arrondissement = arrondissement.nom WHERE oeuvre.id = :id AND oeuvre.valide = 0");
				$stmt->execute(array(":id" => $id));
				return $stmt->fetch();
			}	
			catch(Exception $exc){
				return 0;
			}
		}
	}
?>