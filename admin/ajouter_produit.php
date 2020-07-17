<?php
    require '../inc/admin_function.php';
   if(!isset($_SESSION['admin_id']))
		header('Location: connexion_admin.php');
   /* Ajouter produit */
        if(isset($_POST["ajouter"]) && !empty($_POST["ajouter"])){
        $libelle= htmlspecialchars($_POST["libelle"]);
        $prix= htmlspecialchars($_POST["prix"]);
        $quantite= htmlspecialchars($_POST["quantite"]);
        $image= $_POST["image"];
        $description= htmlspecialchars($_POST["libelle"]);
        //appel function AjouterProduit
        AjouterProduit($libelle,$prix,$quantite,$image,$description, $db);
            header("location:gestion.php");
        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Ajouter Produit | LuxForAll</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body class="goto-here">
<?php require '../inc/header_admin.php'; ?>
    <section class="ftco-section contact-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 order-md-last d-flex">
					<form action="" method="POST" class="bg-white p-5 contact-form">
                        <div class="form-group">
                            <h3 class="text-center">Ajouter Produit</h3>
						</div>
						<div class="form-group">
                           <label>libelle</label> <input class="form-control" name="libelle" placeholder="libelle" type="text" required >
                        </div>
                        <div class="form-group">
						<label>prix</label>	<input class="form-control" name="prix" placeholder="prix" type="text" required>
						</div>
						<div class="form-group">
                        <label>quantite</label><input class="form-control" name="quantite" placeholder="quantite" type="text" required >
						</div>
						<div class="form-group">
                        <label>image </label><input type="file" class="form-control" name="image">
                        </div>
                        <div class="form-group">
                        <label>description </label><textarea class="form-control" name="description" required>
                            </textarea>
						</div>
						<div class="form-group text-center">
							<input class="btn btn-primary py-3 px-5" name="ajouter" type="submit" value="Ajouter">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>