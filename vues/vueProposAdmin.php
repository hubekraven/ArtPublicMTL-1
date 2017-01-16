<!--commencer directement avec la div contenu-->
<div class="contenu">
	<h1>Modification À Propos</h1>
    <form id="formModification" action="index.php?Admins&action=insererPropos" method="POST">
        <label for="sommesT">SommesT: </label>
        <input type="text" name="sommesT" id="sommesT" value="<?php echo $data["sommesT"]?>" /><br>
        <label for="sommesD">SommesD: </label>
        <textarea name="sommesD" id="sommesD" rows="5" cols="50"><?php echo $data["sommesD"]?> </textarea><br>
        <label for="missionT">MissionT: </label>
        <input type="text" name="missionT" id="missionT" value="<?php echo $data["missionT"]?>"><br>
        <label for="missionD">MissionD: </label>
        <textarea name="missionD" id="missionD" rows="5" cols="50"><?php echo $data["missionD"]?> </textarea><br>
        <label for="joindreT">JoindreT: </label>
        <input type="text" name="joindreT" id="joindreT" value="<?php echo $data["joindreT"]?>"><br>
        <label for="joindreD">JoindreD: </label>
        <textarea name="joindreD" id="joindreD" rows="5" cols="50"><?php echo $data["joindreD"]?></textarea><br>
        <label for="partenaireT">PartenaireT: </label>
        <input type="text" name="partenaireT" id="partenaireT" value="<?php echo $data["partenaireT"]?>"><br>
        <label for="partenaireD">PartenaireD: </label>
        <textarea name="partenaireD" id="partenaireD" rows="5" cols="50"><?php echo $data["partenaireD"]?></textarea><br>
        
        <input type="hidden" name="action" value="modifierPagePropos"/>
		<input id="btnModifPropos" type="submit" name="modifier" value="Modifier la page"/>
    </form>
</div>	