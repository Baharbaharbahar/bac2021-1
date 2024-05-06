function test1(){
    const station=document.getElementById("station").selectedIndex;
    if(station==0){
        alert("Please select a Station");
        return false;
    }
    const saison=document.getElementById("saison").selectedIndex;
    if (saison == 0) {
        alert("Please select a Saison");
        return false;
    }
    const annee1=document.getElementById("annee1").checked;
    const annee2=document.getElementById("annee2").checked;
    if(annee1==0 && annee2==0){
        alert("Vous devez choisir au moins une année pour la recherche");
        return false;
    }
    const temperature=document.getElementById("temperature").value;
    if(Number(temperature)<-5||Number(temperature)>50){
        alert("La température doit être comprise entre -5 et 50 °C.");
        return false;
    }
    const pluie=document.getElementById("pluie").value;
    if(isNaN(pluie) || parseInt(pluie) < 0){
        alert("Le champ Pluviométrie doit être un nombre entier positif.");
        return false;
    }
} 
function test2() {
    const station1=document.getElementById("station1").selectedIndex;
    if(station1==0){
        alert ("Please select a Station");
        return false;
    }
    const temperature=document.getElementById("temperature").checked;
    const pluie=document.getElementById("pluie").checked;
    if(temperature==false&&pluie==false){
        alert("You must choose at least one criterion for the search: Temperature or Rainfall");
        return false;
    }
}