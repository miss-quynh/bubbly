$( document ).ready(function() {
  resizeButtonContainer()
  windowResizeListener()
})

var resizeButtonContainer = function() {
  var welcomeWidth = $('#welcome').width()
  $('.link_buttons').css("width", welcomeWidth)
}

var windowResizeListener = function() {
  $(window).resize(resizeButtonContainer)
}