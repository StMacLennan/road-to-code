function changeActive (id) {
  document.getElementByClassName("retro-link").classList.remove('active');
  document.getElementById(id).classList.add('active');
}
