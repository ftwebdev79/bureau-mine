/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file
 * (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.scss in this case)
import './styles/app.scss';

// start the Stimulus application
import './bootstrap';

import './styles/JS/scripts';
import './scrollMenuSticky';
import './textAnimate';
import Filter from "./Filter";

new Filter(document.querySelector('.js-filter'));

// Import Swiper and modules
// import Swiper, {Navigation, Pagination, Scrollbar} from 'swiper';
//
// const swiper = document.querySelector('.swiper').swiper;
//
// swiper.slideNext();
// swiper.slidePrev();
//
//
//
// // Now you can use Swiper
// const swiper = new Swiper('.swiper', {
//     // Install modules
//     modules: [Navigation, Pagination, Scrollbar],
//     speed: 500,
//     navigation: {
//         nextEl: '.swiper-button-next',
//         prevEl: '.swiper-button-prev',
//     },
//     breakpoints: {
//         '@0.75': {
//             slidesPerView: 2,
//             spaceBetween: 20,
//         },
//         '@1.00': {
//             slidesPerView: 3,
//             spaceBetween: 40,
//         },
//         '@1.50': {
//             slidesPerView: 4,
//             spaceBetween: 50,
//         },
//     autoHeight: true,
//     }
//
// });
//
//
//
