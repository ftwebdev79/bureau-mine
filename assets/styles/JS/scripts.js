'use strict'
let sliderWrap = document.querySelector('.slider-wrap')
let slider = document.querySelector('.slider')
let cloneWidth;
let sliderWidth;
let clones =[];
let disableScroll = false;
let scrollPos;

let items = [...document.querySelectorAll('.slider-items')];
let images = [...document.querySelectorAll('.img-div')];

images.forEach((image, idx)=>{
    image.style.backgroundImage = `url(./images/${idx+1}.jpeg`
})