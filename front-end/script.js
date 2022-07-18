'use strict';

// LOG IN MODAL
const modal2 = document.querySelector('.log-in-modal');
const btnsOpenModal2 = document.querySelectorAll('.log-in');
const overlay1 = document.querySelector('.overlay-login');
const btnCloseModal2 = document.querySelector('.close-modal-login');

const openModal2 = function () {
  modal2.classList.remove('hidden1');
  overlay1.classList.remove('hidden1');
};

const closeModal2 = function () {
  modal2.classList.add('hidden1');
  overlay1.classList.add('hidden1');
};

for (let i = 0; i < btnsOpenModal2.length; i++)
  btnsOpenModal2[i].addEventListener('click', openModal2);

btnCloseModal2.addEventListener('click', closeModal2);
overlay1.addEventListener('click', closeModal2);

document.addEventListener('keydown', function (e) {
  if (e.key === 'Escape' && !modal2.classList.contains('hidden1')) {
    closeModal();
  }
});

// CAROUSEL
let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides((slideIndex += n));
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides((slideIndex = n));
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName('mySlides');
  let dots = document.getElementsByClassName('dot');
  if (n > slides.length) {
    slideIndex = 1;
  }
  if (n < 1) {
    slideIndex = slides.length;
  }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = 'none';
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(' active', '');
  }
  slides[slideIndex - 1].style.display = 'block';
  dots[slideIndex - 1].className += ' active';
}
