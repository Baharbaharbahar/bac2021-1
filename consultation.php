<?php
$station1=$_POST["station1"];
require("config.php");
$conn=mysqli_connect($server,$username,$password,$bd);
$sql="select saision,annee,pluie,nom,temperature,pluie from statin,mesure where mesure.idstation='$station1' and mesure.idstation=statin.idstation";
$res=mysqli_query($conn,$sql);
$nb=mysqli_num_rows($res);
?>
<table border="1">
<tr>
    <p>Station:</p>
    <th>Saison</th>
    <th>Année</th>
    <th>Mesure enregistrée</th>
    <?php
    for($i=0;$i<$nb;$i++)
    {
        $enreg=mysqli_fetch_array($res);
       ?>
           <tr>
            <p><?php echo $enreg['nom']; ?></p>
        <td><?php echo $enreg['saision']; ?></td>
        <td><?php echo $enreg['annee']; ?></td>
        <td><?php echo $enreg['temperature'];echo $enreg['pluie']; ?></td>
    </tr>
       <?php
    }
    ?>
</table>
