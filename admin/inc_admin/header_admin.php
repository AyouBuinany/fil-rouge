
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="gestion.php">LuxForAll</a>
			<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a href="#" class="nav-link dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bonjour, <?php echo $_SESSION['admin_nom'] ?></a>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
						<a class="dropdown-item" href="gestion_commande.php">Gestion Commande </a>
						<a class="dropdown-item" href="../inc/deconnexion.php">Déconnexion</a>
					</div>
				</li>
			</ul>
	</div>
</nav>
