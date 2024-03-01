function verif() {
  n = document.getElementById("nom").value;
  ag = document.getElementById("age").value;
  e = document.getElementById("email").value;
  rp = document.getElementById("rpwd").value;
  p = document.getElementById("pwd").value;
  f = document.getElementById("F").checked;
  m = document.getElementById("m").checked;
  sel = document.getElementById("sel").selected;
  if (n == "" || rp == "" || e == "" || p == "" || ag == "") {
    alert("invalid fill in the form");
    return false;
  }
  if (f == false && mm == false) {
    alert("choose gender");
    return false;
  }
  if (sel == false) {
    alert("choose a therapy");
    return false;
  }
  if (rp != p) {
    alert("check your password it doesn't match");
    return false;
  }return true;
}
function test() {
  e = document.getElementById("email").value;
  p = document.getElementById("pwd").value;
  if (e == "" || p == "") {
    alert("invalid fill in the form");
    return false;
  }return true;
}
