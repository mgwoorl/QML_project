function toggleMenu() {
    const menu = document.getElementById('main-menu');
    menu.classList.toggle('hidden');
}

function showPage(page) {
    const pages = document.querySelectorAll('.page');
    pages.forEach(p => p.classList.add('hidden')); // Скрыть все страницы
    document.getElementById(page).classList.remove('hidden'); // Показать выбранную страницу
}

//Регистрация
const form = document.getElementById('registrationForm');
const modal = document.getElementById('successModal');
const closeModal = document.getElementById('closeModal');

form.addEventListener('submit', (e) => {
    e.preventDefault(); // Предотвращаем отправку формы
    modal.classList.add('active');
});

closeModal.addEventListener('click', () => {
    modal.classList.remove('active');
    form.reset(); // Очищаем форму
});
