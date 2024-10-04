void function unhide(id){
    id=String(id);
    let elm = document.getElementById(id);
    elm.setAttribute("display", "flex");
}

function main(){
    let elm0 = document.getElementById("0");
    elm0.addEventListener("click", (event) => {unhide("showme")})
}

main();