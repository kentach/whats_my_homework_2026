document.addEventListener('turbo:load', () => {

  const searchInput = document.getElementById('searchInput');
  const searchSuggest = document.getElementById('searchSuggest');
  const searchOverlay = document.getElementById('searchOverlay');
  const modalCloseBtn = document.querySelector('.modal-close-button');
  const EikenClassItems = document.querySelectorAll('.suggest-item');
  const searchBtn = document.querySelector('.search-button');
  const modalSearchInput = document.querySelector('.modal-search-input');
  const eikenTabs = document.querySelectorAll('.eiken-level-tab');

  if (!searchInput) return

  searchInput.addEventListener('focus', () => {
    searchOverlay.classList.add('active');
    searchSuggest.classList.add('active');
  })

  eikenTabs.forEach(tab => {
    tab.addEventListener('click', () => {
      eikenTabs.forEach(t => {
        t.classList.remove('active');
      }); //タブのactiveクラスを全て削除する。
  
      tab.classList.add('active');
    });
  });
  

  modalCloseBtn.addEventListener('click', () => {
    searchOverlay.classList.remove('active');
    searchSuggest.classList.remove('active');
    searchInput.value = '';
  })
  
  EikenClassItems.forEach(item => {
    item.addEventListener('click', () => {
      modalSearchInput.value = item.textContent.trim();
      searchInput.value = item.textContent.trim();
      //.valueにすれば、文字を検索欄に入れることができる。
      //trim()で空欄を削除する。
    })
  })

  searchBtn.addEventListener('click', () => {
    searchOverlay.classList.remove('active');
    searchSuggest.classList.remove('active');
  })

})