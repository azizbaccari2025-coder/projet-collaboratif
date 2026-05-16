<?php
$cnx=mysqli_connect("localhost","root","","diving_club");
$cin=$_POST['cin1'];
$nom=$_POST['nom'];
$pren=$_POST['pre'];
$gen=$_POST['g'];
$age=$_POST['age'];
$nompre=$nom.$pren;
$req="select * from participant where CinPart='$cin'";
$res=mysqli_query($cnx,$req);
if (mysqli_num_rows($res)>0) {
    echo "Participant déjà inscrit";
}else {
    $req2="insert into participant values ('$cin','$nompre','$gen','$age')";
    $res2=mysqli_query($cnx,$req2);
    echo "inscription réussie";
}
mysqli_close($cnx);
?>