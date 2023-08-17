document.addEventListener('DOMContentLoaded', function () {
    const languageToggle = document.querySelector('.Rectangle5');
    const koreanText = document.querySelectorAll('.korean-text');
    const englishText = document.querySelectorAll('.english-text');
    let isEnglish = false;

    languageToggle.addEventListener('click', () => {
        isEnglish = !isEnglish;
        const selectedLanguage = isEnglish ? 'en' : 'ko';
        localStorage.setItem('language', selectedLanguage);
        applyLanguage(selectedLanguage);
    });

    // Load and apply language settings on page load
    const savedLanguage = localStorage.getItem('language');
    if (savedLanguage === 'en') {
        isEnglish = true;
    }
    applyLanguage(savedLanguage);
});

function applyLanguage(selectedLanguage) {
    if (selectedLanguage === 'en') {
        koreanText.forEach(element => element.style.display = 'none');
        englishText.forEach(element => element.style.display = 'block');
    } else {
        koreanText.forEach(element => element.style.display = 'block');
        englishText.forEach(element => element.style.display = 'none');
    }
}
