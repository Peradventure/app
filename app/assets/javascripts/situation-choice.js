$( document ).on('page:load ready', function(){
  $('#situation_ending').change(function() {
      console.log('changed ending option')
      if( this.checked) {
          $("#choices").hide()
      } else {
          $("#choices").show();
      }
      return false;
  });
  $('#situation_ending').trigger('change');


$(function() {
  $('a#show_title_help').click(function(event){
    event.preventDefault();
    $('div#title_help').toggle();
  });
});

$(function() {
  $('a#show_sit_rep_help').click(function(event){
    event.preventDefault();
    $('div#sit_rep_help').toggle();
  });
});

$(function() {
  $('a#show_choice_1_label_help').click(function(event){
    event.preventDefault();
    $('div#choice_1_label_help').toggle();
  });
});

$(function() {
  $('a#show_choice_1_help').click(function(event){
    event.preventDefault();
    $('div#choice_1_help').toggle();
  });
});

$(function() {
  $('a#show_choice_2_label_help').click(function(event){
    event.preventDefault();
    $('div#choice_2_label_help').toggle();
  });
});

$(function() {
  $('a#show_choice_2_help').click(function(event){
    event.preventDefault();
    $('div#choice_2_help').toggle();
  });
});
});
