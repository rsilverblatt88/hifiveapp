// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var users = {}

users.show = function(){
  $("#new-form").hide();
    // code to run on users/:id when it loads
  $(".send-hi5").on('click', function(e){
    e.preventDefault();
    $("#new-form").load("/hifives/new", function(){
      $("#new-form").fadeToggle();
    });
    // $.ajax({
    //   url: "/highfives/new",
    //   type: "GET",
    //   dataType: "html"
    // }).done(function(data){
    //   $("#new-form").html(data);
    // })
  });
}
