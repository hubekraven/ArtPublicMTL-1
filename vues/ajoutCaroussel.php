<script>
    $(document).ready(function(){

        //References http://stackoverflow.com/questions/23980733/jquery-ajax-file-upload-php
        $("#formChargementImage").change(function(){
            var file_data = $('#chargerImage').prop('files')[0];   
            var form_data = new FormData();                                              
            form_data.append('file', file_data);
            $.ajax({
                url: 'http://localhost/ArtPublicMTL/vues/upload.php', // point to server-side PHP script 
                dataType: 'text',  // what to expect back from the PHP script, if anything
                cache: false,
                contentType: false,
                processData: false, 
                data: form_data,                         								
                type: 'post',
                success: function(nom_fichier){
					urlImage = nom_fichier.substring(3);				
					$.get("<?php echo "http://" . $_SERVER["SERVER_NAME"] . ":" . $_SERVER["SERVER_PORT"] . "/ArtPublicMTL/"; ?>index.php?AdminsAjax&action=ajoutImageCaroussel&urlImage=" + urlImage, function(data){
						if(data != "ERROR")
							$(".classImagesCaroussel").replaceWith(data);
						else
							alert("Erreur : L'insertion n'a pas fonctionné.");
					});
                }
             });
        });
    });
</script>
	
	<!-- Form Chargement Image -->
		<form id="formChargementImage">
			<label for="chargerImage" class="btn" id="labelImportImage">Ajouter une nouvelle image</label>
			<input id="chargerImage" type="file" name="sortpic" style="visibility:hidden;"/>
		</form>
		





		
		




