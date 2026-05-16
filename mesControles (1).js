let cinMaits=["01222333","01333222","03333222"];
function alpha(ch){
    let i=0;
    ch=ch.toLowerCase();
    while(i<ch.length && ch[i]>="a" && ch[i]<="z")
        i++;
    return i==ch.length;
}
function numerique(ch){
    let i=0;
    while(i<ch.length && ch[i]>="0" && ch[i]<="9")
        i++;
    return i==ch.length;
}

function verifier() {
    cin=document.getElementById("cin1").value;
    nom=document.getElementById("nom").value;
    pren=document.getElementById("pre").value;
    fem=document.getElementById("F").checked;
    masc=document.getElementById("H").checked;
    age=document.getElementById("age").value;
    if (cin.length!=8 || numerique(cin)==false) {
        alert("verifier le cin")
        return false
    }
    if (nom=="" || alpha(nom)==false) {
        alert("verifier le nom")
        return false
    }
    if (pren=="" || alpha(pren)==false) {
        alert("verifier le prenom")
        return false
    }
    if (fem==false && masc==false) {
        alert("veuillez choisir le genre")
        return false
    }
    if (verifage(age)) {
        alert("verif l'age")
        return false
    }

}

function verifage(ch) {
    d=new Date (ch)
    d2=new Date()
    diff=d.getFullYear()-d2.getFullYear()
    if (diff<18 || diff>70) {
        return false
    }else{
        return true
    }
}


function choixSite(ch,id) {
    document.getElementById("site").value=ch;
    document.getElementById("siteId").value=id;
}



function valider() {
    cin=document.getElementById("cin").value;
    site=document.getElementById("site").value;
    date1=document.getElementById("date").value;
    heure=document.getElementById("heure").value;
    if (cin.length!=8 || numerique(cin)==false) {
        alert("verifier le cin")
        return false
    }
    if (date1=="" || verifd(date1)==false) {
        alert("verifier la date")
        return false
    }
    if (heure!="06:00" && heure!="09:00") {
        alert("verifier l'heure")
        return false
    }
    if (site=="") {
        alert("verifier le site")
        return false
    }
    alea=Math.floor(Math.random()*cinMaits.length)
    document.getElementById("cinMait").value=cinMaits[alea];
}

/*
function soundPlay() {
    audio=document.getElementById("aud");
    audio.currentTime=0
    audio.play()
}
function play(idPlayer, control) {
    var player = document.querySelector('#audioPlayer1');
   
    if (player.paused) {
        player.play();
        control.textContent = 'Pause';
    } else {
        player.pause();
        control.textContent = 'Play';
    }
}*/
//musique2
    function soundPlay(idPlayer, control) {
    var player = document.querySelector('#aud');
   
    if (player.paused) {
        player.play();
        control.textContent = 'Pause';
    } else {
        player.pause();
        control.textContent = 'Play';
    }
}


function verifd(ch){
    d=new Date()
    d2=new Date(ch)
    if (d2<d) {
        return false
    }else{
        return true
    }
}