<!--affichage du Login-->
<div id="sectionLogin">
    <a href="index.php"> <img id="logo" src="images/logo.png" alt="logo"> </a>
    <form id="loginForm" name="loginForm" method="POST">
        <label class="elemLogin"> Nom d'utilisateur </label>
        <input type="text" class="inputLogin" id="username" name="username" value="artpublicmtl" />
        <label class="elemLogin"> Mot de passe </label>
        <input type="password" class="inputLogin" id="password" name="password" value="art123" />
        <input type="hidden" id="grainSel" name="grainSel" value="<?php echo $_SESSION["grainDeSel"];?>"/>
        <input type="button" id="btnSoumettre" value="Se connecter" /> </form>
    <form id="formEncrypte" name="formEncrypte" method="POST" action="./index.php?Admins&action=authentification">
        <input type="hidden" name="username" />
        <input type="hidden" name="password" />
        <input type="hidden" name="grainSel" /> </form> <span id="message"><?php  if(isset($data["message"])) echo $data["message"] ;?></span>
    <br> </div>