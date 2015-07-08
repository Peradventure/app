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
    $.each(['title','sit_rep','choice_1','choice_1_label','choice_2','choice_2_label'], function(index, name){
      $('a#show_' + name + '_help').click(function(event){
        event.preventDefault();
        $('div#' + name +'_help').toggle();
      });
    });
  });
});
