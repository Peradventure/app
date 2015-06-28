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
});
