<?php
	class Modele_Propos extends TemplateDAO

	{
		public function getTable()
		{
			return "propos";
		}
        
        public function obtenirTousPagePropos()
		{
			try
			{	
						
				$stmt = $this->connexion->prepare("SELECT * FROM a_propos ORDER BY id DESC LIMIT 0,1");
				$stmt->execute();
				return $stmt->fetch();
			}		
			catch(Exception $exc)
			{
				return false;
			}
		}
		
		public function insererPagePropos($sommesT, $sommesD, $missionT, $missionD, $joindreT, $joindreD, $partenaireT, $partenaireD){
			try{
				$stmt = $this->connexion->prepare("INSERT into a_propos(sommesT, sommesD, missionT, missionD, joindreT, joindreD, partenaireT, partenaireD) VALUES (:sommesT, :sommesD, :missionT, :missionD, :joindreT, :joindreD, :partenaireT, :partenaireD)");
				$stmt->execute(array(":sommesT" => $sommesT, ":sommesD" => $sommesD, ":missionT" => $missionT, ":missionD" => $missionD, ":joindreT" => $joindreT, ":joindreD" => $joindreD, ":partenaireT" => $partenaireT, ":partenaireD" => $partenaireD));
				return 1;
			}
			catch(Exception $exc){
				return 0;
			}
		}
	}
?>