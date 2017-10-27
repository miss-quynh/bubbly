$(document).ready(function() {
  displayAuthorListener();
  hideAuthorListener();
});

var displayAuthorListener = function() {
  $(".quote-body-text").on("mouseover", function(event) {
    event.preventDefault();

    $(".quote-author-text").toggle()
  })
};

var hideAuthorListener = function() {
  $(".quote-body-text").on("mouseoff", function(event) {
    console.log('mouse out')
    event.preventDefault();

    $(".quote-author-text").toggle()
  })
};

// var Quote = function(author, quote) {
//   this.author = author;
//   this.quote = quote;
// };

// Quote.prototype.quote_of_the_day = function() {

//   var xhr = new XMLHttpRequest();
//   xhr.open("GET", "http://quotes.rest/qod.json?category=inspire", false);
//   xhr.send();
//   var result = JSON.parse(xhr.response);
//   var quote = result["contents"]["quotes"][0]["quote"]
//   var author = result["contents"]["quotes"][0]["author"]

//   console.log(xhr.status);
//   console.log(xhr.statusText);
// }