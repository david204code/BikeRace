document.addEventListener("turbolinks:load", function() {

let ApiKey = '07a51e8df87139cf192c84e07c215659';
let secret = '79266948ca4fc3b6 ';
let divImages = document.getElementById('demo');

if (divImages) {

var settings = {
    "async": true,
    "crossDomain": true,
    "url": `https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=${ApiKey}&tags=bikerace%2CBoulderBikeTour&format=json&nojsoncallback=1`,
    "method": "GET",
    "headers": {}
  }

  fetch(settings.url).then(result => result.json()).then(respone =>  respone.photos.photo.forEach(element => {
      console.log(element)
      var x = document.createElement("IMG");
    x.setAttribute("src", `https://farm${element.farm}.staticflickr.com/${element.server}/${element.id}_${element.secret}.jpg `);
    x.setAttribute("class", "img-fluid mb-4");
    // x.setAttribute("height", "");
    x.setAttribute("alt", element.title);
    divImages.appendChild(x);      
      
  }))
}
}) 