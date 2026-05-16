<?php
$cnx=mysqli_connect("localhost","root","","diving_club");
echo "<table border=1>
        <tr>
            <td>Cin Participant</td>
            <td>Nom Participant</td>
            <td>Cin Maitre</td>
            <td>Nom Maitre</td>
            <td>Nom Site</td>
            <td>Date Heure</td>
        </tr>";
$req="select q.CinPart , p.NomPart , q.cinMait , m.NomMait , s.NomSite , q.DateHeurePlong
        from participant as p, plongee as q , Maitre_plongeur as m , Site as s 
        where q.CinPart=p.CinPart and q.cinMait=m.cinMait and q.IdSite=s.IdSite and q.DateHeurePlong>now()
        order by s.IdSite";
$res=mysqli_query($cnx,$req);
while ($t=mysqli_fetch_array($res)) {
    echo "<tr>
            <td>".$t[0]."</td>
            <td>".$t[1]."</td>
            <td>".$t[2]."</td>
            <td>".$t[3]."</td>
            <td>".$t[4]."</td>
            <td>".$t[5]."</td>
        </tr>";
}
"</table>";
mysqli_close($cnx);
?>