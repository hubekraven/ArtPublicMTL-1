<script>
	//Lorsque supprimer
	function supprimerImageCaroussel(urlImage){
		    //console.log("<?php echo "http://" . $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . "/ArtPublicMTL/"; ?>index.php?AdminsAjax&action=supprimerImageCaroussel&urlImage=" + urlImage);
			$.get("<?php echo "http://" . $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . "/ArtPublicMTL/"; ?>index.php?AdminsAjax&action=supprimerImageCaroussel&urlImage=" + urlImage, function(data){
				if(data != "ERROR")
					//$(".classImagesCaroussel").replaceWith(data);
					window.location.href = './index.php?Admins&action=gererCaroussel';

				else
					alert("Erreur : La suppression n'a pas fonctionné.");
			});
		};

</script>
	
<div  class="classImagesCaroussel" id='imagesCaroussel'>
<?php	
	foreach($data as $imageCaroussel) {
		echo "<div id=imageCaroussel>";
		if ($imageCaroussel["titre"] >"") {
			echo "<span id='titreImageCaroussel'>".$imageCaroussel["titre"]."</span>";
		}
		echo "<img src='". $imageCaroussel["urlImage"] ."' alt='image non trouve'>"; 
		$valeurHref = "javascript:supprimerImageCaroussel('". $imageCaroussel["urlImage"] ."');"; 
		echo '<a href="'.$valeurHref .'" id="poubelle">X</a>';
		echo "</div>";
	}
?>		
</div>





