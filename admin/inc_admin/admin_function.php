<?php
require '../inc/config.php';

//Ajouter Produit
function AjouterProduit($libelle,$prix,$quantite,$image,$description, $db)
{
   $sql = "INSERT INTO `produits`(`libelle`, `prix`, `quantite`, `image`, `description`) VALUES (:libelle,:prix,:quantite,:image,:description)";
   $stat= $db->prepare($sql);
   $data=[
        'libelle' => $libelle,
        'prix' => $prix,
        'quantite' => $quantite,
        'image'=>$image,
        'description' => $description
   ];
   if($stat->execute($data)) {
      return true;
   }
}


//Modifier Produit
function ModifierProduit($idp,$libelle,$prix,$quantite,$description, $db)
{
   $sql = "UPDATE `produits` SET `libelle`=:libelle,`prix`=:prix,`quantite`=:quantite,`description`=:description WHERE id=:idp";
   $stat= $db->prepare($sql);
   $data=[
        'libelle' => $libelle,
        'prix' => $prix,
        'quantite' => $quantite,
        'description' => $description,
        'idp'=>$idp
   ];
   if($stat->execute($data)) {
      return true;
   }
}


// supprimer produit
function SupprimerProduit($idp, $db)
{
   $sql = "DELETE FROM produits WHERE id = :idp";
   $stat= $db->prepare($sql);
   $stat->bindValue(':idp', $idp);
   if($stat->execute()) {
      $sql2 = "DELETE FROM panier WHERE idProduit = :idp";
      $stat2= $db->prepare($sql2);
      $stat2->bindValue(':idp', $idp);
      if($stat2->execute()) {
      return true;
      }
   }
}

?>