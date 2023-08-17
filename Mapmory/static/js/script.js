const darkModeKey = 'darkMode';
const languageKey = 'language';

function applyDarkMode(isDarkMode) {
  if (isDarkMode) {
    document.body.classList.add('dark-mode');
  } else {
    document.body.classList.remove('dark-mode');
  }
}

function loadAndApplyDarkMode() {
  const currentDarkModeValue = localStorage.getItem(darkModeKey) === 'true';
  applyDarkMode(currentDarkModeValue);
}

// 언어 설정 적용 함수
function applyLanguage(selectedLanguage) {
  const koreanTextElements = document.querySelectorAll('.korean-text');
  const englishTextElements = document.querySelectorAll('.english-text');
  
  if (selectedLanguage === 'en') {
    koreanTextElements.forEach(element => element.style.display = 'none');
    englishTextElements.forEach(element => element.style.display = 'block');
  } else {
    koreanTextElements.forEach(element => element.style.display = 'block');
    englishTextElements.forEach(element => element.style.display = 'none');
  }
}

// 페이지 로드 시와 뒤로가기를 처리하여 다크 모드 설정 및 언어 설정 적용
window.addEventListener('DOMContentLoaded', function () {
  loadAndApplyDarkMode();
  loadAndApplyLanguage();
});

window.addEventListener('popstate', function () {
  loadAndApplyDarkMode();
  loadAndApplyLanguage();
});

// 페이지 이동 시 다크 모드 설정 및 언어 설정 유지
window.addEventListener('beforeunload', function () {
  const currentDarkModeValue = localStorage.getItem(darkModeKey) === 'true';
  const bodyHasDarkModeClass = document.body.classList.contains('dark-mode');
  
  if (currentDarkModeValue !== bodyHasDarkModeClass) {
    localStorage.setItem(darkModeKey, bodyHasDarkModeClass.toString());
  }
});

// 언어 설정 관련 함수
function loadAndApplyLanguage() {
  const selectedLanguage = localStorage.getItem(languageKey) || 'ko';
  applyLanguage(selectedLanguage);
}

// Toggle 언어 설정
function toggleLanguage() {
  const selectedLanguage = localStorage.getItem(languageKey) || 'ko';
  const newLanguage = selectedLanguage === 'ko' ? 'en' : 'ko';
  localStorage.setItem(languageKey, newLanguage);
  applyLanguage(newLanguage);
}

// Toggle 다크 모드
function toggleDarkMode() {
  const currentDarkModeValue = localStorage.getItem(darkModeKey) === 'true';
  const newDarkModeValue = !currentDarkModeValue;

  localStorage.setItem(darkModeKey, newDarkModeValue.toString());

  applyDarkMode(newDarkModeValue);
}

