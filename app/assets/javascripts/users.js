// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var users = {}

users.show = function(){
  // I'm setting an empty div(new-form) to a variable called $newForm
  var $newForm = $("#new-form");
  // this hides the div so it will appear when we call an event on it later.
  $newForm.hide();
    // code to run on users/:id when it loads
  $(".send-hi5").on('click', function(e){
    e.preventDefault();
    // this grabs the data which is specific to each user and is passed through the data
    var userId    = $(this).data('userId');
    var userPhone = $(this).data('userPhone');
    console.log(this);

    console.log('clicked for new hi5', userId, userPhone);

    // $newForm.show();
    $newForm.load("/hifives/new", function(){
      // set the input field's value
      $newForm.find("#hifive_phone").val(userPhone);
      // create hidden tags
      // $hiddenTag = $("<input type='hidden'>").attr('name', 'user-id')
      //                                        .val(userId);
      // $newForm.append($hiddenTag);
      // $newForm.fadeToggle();
      $newForm.modal('hide');
    });
  });
}
    // $.ajax({
    //   url:      "/highfives/new",
    //   type:     "GET",
    //   dataType: "html"
    // }).done(function(data){
    //   $("#new-form").html(data);
    // })
