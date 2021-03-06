// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require jquery-ui
//= require bootstrap-sprockets
//= require activestorage
//= require turbolinks
//= require_tree .

function tweetSubmitted() {
  $('#tweet-button').click(function() {
    message = $('#message_body').val();
    alert("Hey, I tweeted: \"" + message + "\"");
  });
}
 $(document).ready(tweetSubmitted);
 function deleteTweet(id) {
  $("#message-" + id).slideUp();
}

function deleteTweet(id) {
  $.ajax({
      url: '/messages/' + id,
      type: 'DELETE',
      data: { authenticity_token: $('[name="csrf-token"]')[0].content},
      success: function(result) {
        $('#message-' + id).fadeOut(500);
      }
  });
}
