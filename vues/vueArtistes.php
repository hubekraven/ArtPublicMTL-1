<!--commencer directement avec la div contenu-->
<section id="zoneDesArtistes" class="ml50">
    <h1 class="titrePage">Artistes</h1>
    <ul>
        <?php 
					$compteur = 65;
                ?>
            <h1>A</h1>
            <?php 
                    foreach ($data as $artiste){
                        $premiereLettre = strtoupper(substr($artiste["nomArtiste"], 0, 1));
                        if(chr($compteur) != $premiereLettre){
                            $compteur++;
                ?>
                <h1 class="titreABC"><?php echo chr($compteur); ?></h1>
                <?php    
						}//fermeture if 
						if(($artiste["prenom"]!="Inconnu") && (chr($compteur) == $premiereLettre)){  
						
                ?>    
							<li><a href="index.php?Public&action=descriptionArtiste&id=<?php echo $artiste['id'] ?>">
								<?php echo $artiste["prenom"] . " <span class='gras'>" . $artiste["nomArtiste"] . "</span>"; ?>
								</a> </li>
                    <?php 
						}//fermeture if
					}//fermeture foreach
                    // fini d'écrire les lettres jusqu'à Z si'il en manque
                    if($compteur < 91){
                        do{
                            $compteur++;
                        ?>
                        <h1 class="titreABC"><?php echo chr($compteur); ?></h1>
                        <?php        
                        }while($compteur < 90) ;
                    }//fermeture if
				    ?>
    </ul>
</section>
</div>