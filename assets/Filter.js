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
                'X-Requested-With' : 'XMLHttpRequest'
            }
        })

        if(response.status >= 200 && response.status < 300){
            const data = await response.text()
            this.content.innerHTML = data
        } else {
            console.log('error')
        }
    }
}
