var anima_D = document.getElementById("D");
var anima_I = document.getElementById("I");
var anima_E = document.getElementById("E");
var anima_T = document.getElementById("T");
var anima_X = document.getElementById("X");

anima_D.addEventListener("animationend", D_end, false);
anima_I.addEventListener("animationend", I_end, false);
anima_E.addEventListener("animationend", E_end, false);
anima_T.addEventListener("animationend", T_end, false);
anima_X.addEventListener("animationend", X_end, false);

function D_end() {
    anima_D.classList.remove('opacity');
}
function I_end() {

    anima_I.classList.remove('opacity');
}
function E_end() {
    anima_E.classList.remove('opacity');
}
function T_end() {
    anima_T.classList.remove('opacity');
}
function X_end() {
    anima_X.classList.remove('opacity');
}

