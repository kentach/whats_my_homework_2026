document.addEventListener('turbo:load', () => {
  const hamburgerBtn = document.getElementById('hamburger-btn');
  const menuOverlay = document.getElementById('menu-overlay');
  const sideMenu = document.getElementById('side-menu');

  hamburgerBtn.addEventListener('click', () => {
    menuOverlay.classList.add('active');
    sideMenu.classList.add('active');
  })

  menuOverlay.addEventListener('click', () => {
    menuOverlay.classList.remove('active');
    sideMenu.classList.remove('active');
  })

})