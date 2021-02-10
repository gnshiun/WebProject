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
