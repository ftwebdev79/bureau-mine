'use strict'

// vanilla JS
// init with element
let grid = document.querySelector('.grid');
let masonryFirst = new Masonry( grid, {
    // options...
    itemSelector: '.grid-item',
    columnWidth: 200
});

// init with selector
let masonry = new Masonry( '.grid', {
    // options...
});