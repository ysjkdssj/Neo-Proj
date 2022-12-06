let btns = []
let priceDom = null
let priceSumDom = null
let inputDom = null
let idInputDom = null

let currentPrice = 0

window.addEventListener('load', ()=>{
    btns = document.querySelectorAll('.open-shopping')
    priceDom = document.querySelector('span.price')
    priceSumDom = document.querySelector('span.price-sum')
    inputDom = document.querySelector('#count-input')
    idInputDom = document.querySelector('#id-input')

    eventInit()
})

function eventInit() {
    btns.forEach(x=>{
        x.addEventListener('click', (e)=>{
            currentPrice = e.target.dataset.price
            idInputDom.value = e.target.dataset.id
            setPrice()
        })
    })

    inputDom.addEventListener('change', (e)=>{
        setPrice()
    })
}

function setPrice() {
    priceDom.innerHTML = currentPrice

    const count = inputDom.value

    priceSumDom.innerHTML = parseInt(currentPrice) * parseInt(count)
}