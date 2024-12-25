function toggleMenu() {
    const menu = document.getElementById('main-menu');
    menu.classList.toggle('hidden');
}

function showPage(page) {
    const pages = document.querySelectorAll('.page');
    pages.forEach(p => p.classList.add('hidden')); // Скрыть все страницы
    document.getElementById(page).classList.remove('hidden'); // Показать выбранную страницу
}

