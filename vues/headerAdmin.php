<body>
<!--debut du conteneur GLOBAL-->
	<div id ="global">
		<!--Debut Section ENTÊTE-->
		<header class ="entete">
			<a href="index.php">
				<img id="logo" src="images/logo.png" alt="logo">
			</a>
			<div id="SessionUsager">
			<!--<span id="Salutation"><h3>bienvenu  echo $data["authentifie"];</h3></span>-->
			<a href="./index.php?Admins&action=finSession">Se déconnecter</a>
			</div>
			<div class="menu">
				<nav id="menuPrincipal">
					<ul>
						<li class="itemMenu"><a href="index.php?Admins&action=listeDesOeuvres">Gérer les oeuvres</a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=gererCaroussel">Modifier le caroussel </a></li>
						<li class="itemMenu"><a href="index.php?Admins&action=apropos">Modifier le contenu À Propos</a></li>
						<li class="itemMenu"><a href="index.php?AdminsAjax&action=importation">Mettre à jour les données publiques</a></li>

					</ul>
				</nav>	
			</div>
		</header>
		<!--fin Section ENTÊTE-->