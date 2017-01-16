<?php
	class Controleur_Public extends BaseControleur{
	
		//la fonction qui sera appelée par le routeur

		public function traite(array $params){
			//affichage du header
			$this->afficheVue("head");
			
			if(isset($params["action"])){
				//modèle et vue vides par défaut
				$vue = "";
				//switch en fonction de l'action qui nous est envoyée
				//ce switch détermine la vue $vue et obtient le modèle $data

				switch($params["action"]){
					
					case "pageAccueil":					
						$this->afficheVue("header","");
						$this->afficheVue("pageAccueil","");	
						$this->afficheRecherche();	
						break;

					case "listeOeuvres":
						$this->afficheVue("headerPasAccueil");
						$this->afficheVue("ouvertureAside","");
						$this->afficheVue("rechercheGauche",""); 
						$this->afficheListeCategories();
						$this->afficheListeArrondissements();
						$this->afficheVue("vueBtnSoumission",""); 
						$this->afficheVue("fermetureAside","");						
						$this->afficheListeOeuvres();		
						break;
						
					case "listeArtistes":
						$this->afficheVue("headerPasAccueil");
						$this->afficheVue("ouvertureAside",""); 
						$this->afficheVue("rechercheGauche","");   
						$this->afficheVue("vueBtnSoumission",""); 
						$this->afficheVue("fermetureAside",""); 
						$this->afficheListeArtistes();
					    break;
					
					case "oeuvre":
						$this->afficheVue("headerPasAccueil");
						$this->afficheRecherche();
					 	break;

					case "descriptionArtiste":
						$this->afficheVue("headerPasAccueil");
						$this->afficheVue("ouvertureAside","");
						$this->afficheVue("rechercheGauche","");
						$this->afficheVue("vueBtnSoumission","");   
						$this->afficheVue("fermetureAside","");
						if(isset($params["id"])){
							$this->afficheDescriptionArtiste($params["id"]);
							$this->afficheOeuvresArtiste($params["id"]);
						}
						break;
                        
					case "soumission":
						$this->afficheVue("headerPasAccueil");
						$this->afficheRecherche();
						$this->afficheSoumission();
						break;		
                        
					case "details":
						
						if(isset($params["id"])){
                            $this->afficheVue("headerPasAccueil");
                            $this->afficheVue("ouvertureAside",""); 
                            $this->afficheVue("rechercheGauche","");   
                            $this->afficheVue("vueBtnSoumission",""); 
                            $this->afficheVue("fermetureAside",""); 
							$this->afficheDetails($params["id"]);	
						}	
						break;

					case "afficheOeuvreslieu":
                        if(isset($params["idValue"])){
                            $this->afficheVue("headerPasAccueil");
                            $this->afficheVue("ouvertureAside",""); 
                            $this->afficheVue("rechercheGauche","");   
                            $this->afficheVue("vueBtnSoumission",""); 
                            $this->afficheVue("fermetureAside","");
                            $this->afficheOeuvresLieu($params["idValue"]);
                        }
                        break;
					
					case "afficheOeuvrescategorie":
                        if(isset($params["idValue"])){
                            $this->afficheVue("headerPasAccueil");
                            $this->afficheVue("ouvertureAside",""); 
                            $this->afficheVue("rechercheGauche","");   
                            $this->afficheVue("vueBtnSoumission",""); 
                            $this->afficheVue("fermetureAside","");
                            $this->afficheOeuvresCategorie($params["idValue"]);

                        }
                        break;
						
					case "aPropos":
						$this->afficheVue("headerPasAccueil");
						$this->afficheVue("ouvertureAside","");
						$this->afficheVue("rechercheGauche",""); 
						$this->afficheVue("vueBtnSoumission","");  
						$this->afficheVue("fermetureAside","");						
                        $this->affichePageApropos();   
					    break;

                    case "carte":
                            $this->afficheCarte();					
                        break;	

					default:
						$this->afficheVue("header","");
						$this->afficheVue("pageAccueil","");	
						$this->afficheRecherche();	
				}
			}
			else{
				//actions par défaut
				$this->afficheVue("header","");
				$this->afficheVue("pageAccueil","");	
				$this->afficheRecherche();	
			}

			//inclusion du footer dans le cas d'une requête qui n'est pas AJAX
			$this->afficheVue("footer");
		}
		
		
		public function afficheListeOeuvres(){
			$modeleOeuvres= new Modele_Oeuvres();
			$data = $modeleOeuvres->obtenirTousOeuvresArtistes();
           	$this->afficheVue("vueOeuvres", $data);
		}
		
		///--fonction permet d'affiche la liste des categories--///	
		public function afficheListeCategories(){
			$modeleCategories= new Modele_categories();

			$data = $modeleCategories->obtenirTous();
			$this->afficheVue("vueOptionCategories", $data);
		}
		
		public function afficheSoumission(){
			global $admin;
			$admin = false;
			$this->afficheVue("formSoumission", "");
		}

		///--fonction permet d'affiche la liste des arrondissements--///
		public function afficheListeArrondissements(){
			$modeleArrondissements= new Modele_arrondissements();
			$data= $modeleArrondissements->obtenirTous();
			$this->afficheVue("vueOptionArrondissement", $data);
		}
		
		public function afficheRecherche(){
			$this->afficheVue("recherche", "");	
		}
		
		//afficher la liste des artistes
		public function afficheListeArtistes(){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirTousArtisteAlphabetique();
			$this->afficheVue("vueArtistes", $data);	
		}

		//afficher la description d'un artiste
		public function afficheDescriptionArtiste($id){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirDescriptionArtiste($id);
			$this->afficheVue("vueDescriptionArtiste", $data);
		}

		//afficher l'oeuvre d'un artiste
		public function afficheOeuvresArtiste($id){
			$modeleArtiste = new Modele_artistes();
			$data = $modeleArtiste->obtenirOeuvresArtiste($id);
            $this->afficheVue("vueOeuvresArtiste", $data);
			//var_dump($data["urlImage"]);
		}

		public function afficheDetails($id){ 
			$modelePublic = new Modele_public();
			$data = $modelePublic->nomOeuvre($id);
			$this->afficheVue("afficheDetails", $data);

		}

		//affiche lesOeuvres par categorie de la recherche
		public function afficheOeuvresCategorie($val){
			$modeleOeuvres= new Modele_oeuvres();
			$data=$modeleOeuvres-> obtenirOeuvresCategorie($val);
			$this->afficheVue("vueOeuvres", $data);
		}
		//affiche lesOeuvres par lieu de la recherche
		public function afficheOeuvresLieu($val){
			$modeleOeuvres= new Modele_oeuvres();
			$data=$modeleOeuvres-> obtenirOeuvresArrondissement($val);
			$this->afficheVue("arrondissements", $data);
		}
		
		//afficher les titres de la page à propos
        public function affichePageApropos(){
            $modeleApropos = new Modele_Propos();
            $data = $modeleApropos->obtenirTousPagePropos();
            $this->afficheVue("vuePropos", $data);
        }
            
        public function afficheCarte(){
			$modeleOeuvres= new Modele_oeuvres();
			$data=$modeleOeuvres-> obtenirTousOeuvresArrondissement();
			$this->afficheVue("pageCarte", $data);
		}
	}
?>