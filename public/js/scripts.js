$(document).ready(function() {
  $('#player_1_span').on('click', function() {
    $('#player_1').hide()
  })
  $('#player_2_span').on('click', function() {
    $('#player_2').hide()
  });
  $('#computer-play').on('click', function() {
    selector = Math.floor(Math.random() * 4)
    array = ['rock', 'paper', 'scissors']
    value = array[selector]
    $('#player_2').val(value)
  })
});
