<?php
			foreach ($data as $imagesOeuvre) { 
				if($imagesOeuvre["urlImage"]== ""){
					$imagesOeuvre["urlImage"] = "no-image-available";
				}
?> 
		<img src="./images/<?php echo $imagesOeuvre["urlImage"]; ?>.jpg" class="photosOeuvreUnArtiste">
		<?php		
			}
		?>
        </div><!--fermeture div infosMonArtiste-->
    </section>