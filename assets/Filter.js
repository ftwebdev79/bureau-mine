import {Flipper} from "flip-toolkit";

export default class Filter {
    // /**
    //  * @param {HTMLElement | null}
    //  */


    constructor(element) {
        if (element === null) {
            return
        }
        this.category = element.querySelector('.js-filter-category')
        this.content = element.querySelector('.js-filter-content')
        this.wrapper = element.querySelector('.card-wrapper')
        this.bindEvents()
    }


    bindEvents() {
        this.category.querySelectorAll('a').forEach(a => {
            a.addEventListener('click', e => {
                e.preventDefault()
                this.loadUrl(a.getAttribute('href'))
            })
        })
    }

    async loadUrl(url) {
        const response = await fetch(url, {
            headers: {
                'X-Requested-With': 'XMLHttpRequest'
            }
        })

        if (response.status >= 200 && response.status < 300) {
            const data = await response.text()
            // console.log(data)
           this.content.innerHTML = data
            // this.flipContent(data)
        } else {
            console.log('error')
        }
    }

    flipContent(content) {
        const flipper = new Flipper({
            element: this.content

        })
        flipper.addFlipped({
            element: this.wrapper,
            flipId: this.wrapper.id,
            shouldFlip: false,
            onExit: (element, index, remove) => {
                window.setTimeout(() => {
                    remove()
                }, 2000)
            }
        })

        flipper.recordBeforeUpdate()
        this.content.innerHTML = content
        flipper.addFlipped({
            element: this.wrapper,
            flipId: this.wrapper.id,
        })
        flipper.update();
    }

}
