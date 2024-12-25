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


//Отзывы

const form2 = document.getElementById('reviewForm');
const reviewsList = document.getElementById('reviewsList');
const stars = document.querySelectorAll('.star');
let selectedRating = 0;

stars.forEach((star) => {
    star.addEventListener('click', () => {
        selectedRating = star.getAttribute('data-value');
        updateStarRating(selectedRating);
    });
});

function updateStarRating(rating) {
    stars.forEach((star) => {
        star.classList.toggle('active', star.getAttribute('data-value') <= rating);
    });
}

form2.addEventListener('submit', (e) => {
    e.preventDefault();

    const reviewText = document.getElementById('reviewText').value;
    const date = new Date().toLocaleDateString();

    const reviewItem = document.createElement('div');
    reviewItem.classList.add('review_item');
    reviewItem.innerHTML = `
        <h3>Пользователь</h3>
        <div class="review_stars">${'★'.repeat(selectedRating).padEnd(5, '☆')}</div>
        <div class="review_text">${reviewText}</div>
        <div class="review_date">Дата: ${date}</div>
    `;

    reviewsList.appendChild(reviewItem);

    form2.reset();
    updateStarRating(0);
    selectedRating = 0;
});
