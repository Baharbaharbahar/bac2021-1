<?php
$station=$_POST["station"];
$annee=$_POST["annee"];
$saison=$_POST["saison"];
$temperature=$_POST["temperature"];
$pluie=$_POST["pluie"];
require ("config.php");
$conn=mysqli_connect($server,$username,$password,$bd);
$sql="select * from mesure where idstation='$station' and annee='$annee' and saision='$saison' ;";
$res=mysqli_query($conn,$sql);
$nb=mysqli_num_rows($res);
echo $nb;
// if(mysqli_num_rows($res)!=0)
//     echo "<h1>Mesures déja enregistrées</h1>";
// else{
//     $sql="insert into mesure values ('$station','$annee','$saison','$temperature','$pluie')";
//     if(mysqli_affected_rows($conn)>0){
//         echo "<h1>Ajout effectué avec succés</h1>";
//     }
// }
// mysqli_close($conn);
?>
