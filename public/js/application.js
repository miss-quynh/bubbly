$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  signinFormListener()
});

var signinFormListener = function() {
  $('.sign_in_button').on('click', function(event) {
    event.preventDefault();
    console.log("this")

    var link = $(this)
    var method = link.attr('method')
    var url = link.attr('href')
    var data = link.serialize()

    var call = $.ajax({
      method:method,
      url: url,
      data: data
    })

    call.done(function( response ) {
      $('.link_buttons').hide();
      $('.link_buttons').after(response);
    })

    call.fail(function( response ) {
      console.log('failed')
    })
  })
}
