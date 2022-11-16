class oner {
    constructor() {
        this.oner = $('#oner')
        this.oner.css('display', 'none')
        this.addEvent()
    }

    addEvent() {
        this.basket = $('.basket_btn')
        this.basket.click((e)=> {
            this.oner.css('display', 'block')
            this.writeInfo(e)
        })

        $('#close').click(()=> {
            this.oner.css('display', 'none')
            $('.oner-container > h2').html('')
        })
    }

    writeInfo(e) {
        // console.log(e.target.dataset.name);
        this.name = e.target.dataset.name;
        console.log(this.name);
        $('.oner-container > h2').html(this.name)
    }
}

new oner()