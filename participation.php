<?php
$cnx=mysqli_connect("localhost","root","","diving_club");
$cin=$_POST['cin'];
$site=$_POST['siteId'];
$dat=$_POST['date'];
$heur=$_POST['heure'];
$cinmai=$_POST['cinMait'];
$prof=rand(1000,5000);
$date1=$dat." ".$heur;
$req="select * from participant where '$cin'=cinPart";
$res=mysqli_query($cnx,$req);
if (mysqli_num_rows($res)==0) {
    echo "participant inexistant";
}else {
    $req2="select p.* from plongee as p , maitre_plongeur as m , site as s where p.cinMait=m.cinMait and p.IdSite=s.IdSite and CinPart='$cin' and s.IdSite='$site' and DateHeurePlong='$date1'";
    $res2=mysqli_query($cnx,$req2);
    if (mysqli_num_rows($res2)>0) {
        echo "Participant déjà enregistrer";
    }else {
        $req3="insert into plongee(IdSite,cinMait,CinPart,DateHeurePlong,Profondeur) values('$site','$cinmai','$cin','$date1','$prof')";
        $res3=mysqli_query($cnx,$req3);
        echo "participation ajouté avec succées";
    }
}
mysqli_close($cnx);
?>