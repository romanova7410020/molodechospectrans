document.addEventListener('DOMContentLoaded', function() {
  // Фильтры каталога
  const filterBtns = document.querySelectorAll('.filter_btn');
  const catalogItems = document.querySelectorAll('.catalog_item');
  
  filterBtns.forEach(button => {
    button.addEventListener('click', () => {
      filterBtns.forEach(btn => btn.classList.remove('active'));
      button.classList.add('active');
      
      const filterValue = button.getAttribute('data-category');
      
      catalogItems.forEach(item => {
        const itemCategory = item.getAttribute('data-category');
        
        if (filterValue === 'all' || filterValue === itemCategory) {
          item.style.display = 'block';
          item.style.opacity = '1';
          item.style.transform = 'translateY(0)';
        } else {
          item.style.opacity = '0';
          item.style.transform = 'translateY(20px)';
          setTimeout(() => item.style.display = 'none', 300);
        }
      });
    });
  }); 

  // Бургер
  const burger = document.querySelector('.burger');
  const nav = document.querySelector('.nav');
  
  if (burger && nav) {
    burger.addEventListener('click', () => {
      burger.classList.toggle('active');
      nav.classList.toggle('active');
    });
    
    document.querySelectorAll('.nav_link').forEach(link => {
      link.addEventListener('click', () => {
        burger.classList.remove('active');
        nav.classList.remove('active');
      });
    });
  }

  // попап
  const form = document.querySelector('.calc_formpop');
  const toggle = document.getElementById('popup-toggle');
  
  if (form && toggle) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();
      if (form.checkValidity()) {
        alert('Заявка отправлена! Перезвоним.');
        form.reset();
        toggle.checked = false;
      } else {
        alert('Заполните имя и телефон.');
      }
    });
    
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') toggle.checked = false;
    });
  }

  
  function setAllCheckboxes() {
    document.querySelectorAll('.checkbox_input').forEach(cb => {
      cb.checked = true;
    });
  
    const consentCheckbox = document.getElementById('consent');
    if (consentCheckbox) {
      consentCheckbox.checked = true;
    }

    document.querySelectorAll('[class*="acceptance"]').forEach(cb => {
      if (cb.type === 'checkbox') cb.checked = true;
    });
  }

  setAllCheckboxes();

 });
