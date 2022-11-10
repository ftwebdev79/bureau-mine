import * as json from "express";

export default class Filter {

    /**
     *
     * @param element {HTMLElement|null} element
     */

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
                e.preventDefault();
                this.loadUrl(a.getAttribute('href')).then(r => json.response );
            })
        })
    }

   async loadUrl(url) {
        const response = await fetch(url, {
            headers: {
                'X-requested-With' : 'XMLHttpRequest'
            }
        })

       if(response.status >= 200 && response.status < 300) {
           const data = await response.json()
           console.log(data)
           this.content.innerHTML = data.content
       }else{
           console.error(response)
       }
    }

}

