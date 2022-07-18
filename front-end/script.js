'use strict';

// OPEN MODAL
const modal1 = document.querySelector('.quick-view-modal');
const overlay = document.querySelector('.overlay');
const btnCloseModal = document.querySelector('.close-modal');
const btnsOpenModal1 = document.querySelectorAll('.item-view');

const openModal = function () {
  modal1.classList.remove('hidden');
  overlay.classList.remove('hidden');
};

const closeModal = function () {
  modal1.classList.add('hidden');
  overlay.classList.add('hidden');
};

for (let i = 0; i < btnsOpenModal1.length; i++)
  btnsOpenModal1[i].addEventListener('click', openModal);

btnCloseModal.addEventListener('click', closeModal);
overlay.addEventListener('click', closeModal);

document.addEventListener('keydown', function (e) {
  // console.log(e.key);

  if (e.key === 'Escape' && !modal1.classList.contains('hidden')) {
    closeModal();
  }
});

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
    dots[i].className = dots[i].className.replace('active', '');
  }
  slides[slideIndex - 1].style.display = 'block';
  dots[slideIndex - 1].className += ' active';
}
