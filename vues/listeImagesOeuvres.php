<script>
	//Lorsque supprimer
	function ajoutImageCaroussel(urlImage){
		    //console.log("<?php echo "http://" . $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . "/ArtPublicMTL/"; ?>index.php?AdminsAjax&action=supprimerImageCaroussel&urlImage=" + urlImage);
			$.get("<?php echo "http://" . $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . "/ArtPublicMTL/"; ?>index.php?AdminsAjax&action=ajoutImageCaroussel&urlImage=" + urlImage, function(data){
				if(data != "ERROR")
					//$(".classListeImagesOeuvres").replaceWith(data);
				    window.location.href = './index.php?Admins&action=gererCaroussel';
				else
					alert("Erreur : La suppression n'a pas fonctionné.");
			});
		};

</script>
	
<div  class="classListeImagesOeuvres" id='listeImagesOeuvres'>
<?php	
	foreach($data as $imageOeuvre) {
		echo "<div id=imagelisteOeuvre>";
		$valeurHref = "javascript:ajoutImageCaroussel('". $imageOeuvre["urlImage"] ."');"; 
			echo "<span id='titreListeImagesOeuvres'>".$imageOeuvre["titre"]."</span>";
			echo '<a href="'.$valeurHref .'">';
				echo "<img src='". $imageOeuvre["urlImage"] . "' alt='" . $imageOeuvre["titre"]."' >";
			echo "</a>";
		echo "</div>";
	}
?>		
</div>






