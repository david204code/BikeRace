document.addEventListener("turbolinks:load", function() {

  let ApiKey = '07a51e8df87139cf192c84e07c215659';
  let secret = '79266948ca4fc3b6 ';
  let divImages = document.getElementById('demo');

  if (divImages) {
  function getPhotos(pageCount){

    var settings = {
      "async": true,
      "crossDomain": true,
      "url": `https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=${ApiKey}&tags=%23bikeraces%2CBoulderBikeTour&per_page=11&page=${pageCount}&format=json&nojsoncallback=1`,
      "method": "GET",
      "headers": {}
    }

    fetch(settings.url).then(result => result.json()).then(respone =>  respone.photos.photo.forEach(element => {
    // console.log(element)
      var x = document.createElement("IMG");
      x.setAttribute("src", `https://farm${element.farm}.staticflickr.com/${element.server}/${element.id}_${element.secret}.jpg `);
      x.setAttribute("class", "img-fluid mb-4");
      // x.setAttribute("height", "");
      x.setAttribute("alt", element.title);
      divImages.appendChild(x);      

      }))
    } 

    var pageCount = 0;
    window.addEventListener('scroll', function() {
      // console.log("David");
      var scrollTop = $(document).scrollTop();
      var windowHeight = $(window).height();
      var bodyHeight = $(document).height() - windowHeight;
      var scrollPercentage = (scrollTop / bodyHeight);
      // if the scroll is more than 90% from the top, load more content.
      if(scrollPercentage > 0.98 && pageCount <= 12) {
      // Load content
        getPhotos(pageCount++);
        console.log(pageCount);

      }

      })
    getPhotos(pageCount);

  }
}) 