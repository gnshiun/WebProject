var map = {};

function addToCart(name, price) {
    if (!(name in map)) {
        map[name] = price
    }
    for (key in map) {
        var temp = key + " " + map[key]
        console.log(temp)
    }
}

function addElementDiv(obj) {
    removeElementDiv(obj)
    for (key in map) {
        var parent = document.getElementById(obj)
        var div = document.createElement("div")
        div.setAttribute("id", "item")
        div.innerHTML = key
        parent.appendChild(div)
    }
}

function clearItem(obj) {
    removeElementDiv(obj)
    map = {}
}

function removeElementDiv(obj) {
    var parent = document.getElementById(obj)
    var childs = parent.childNodes
    for (var i = childs.length - 1; i >= 0; i--) {
        parent.removeChild(childs[i]);
    }
}