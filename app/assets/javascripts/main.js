function open_menu() {
  $("#close_side").hide();
  $("#open_side").fadeIn();
}

function hidden_menu() {
  $("#open_side").hide();
  $("#close_side").fadeIn("slow");
}

var check = 0;
function group_fnc(){
  if(check == 0){
    $('#list_group_add_delete').fadeIn(150);
    check++;
  }
  else{
    $('#list_group_add_delete').hide();
    check--;
  }
}


$('#ul_list').ready(function(){
  var contentHeight = document.getElementById("ul_list").scrollHeight;
  $('#content').animate({scrollTop: $('#ul_list').height()});
});



function cng_col() {
  var sel_col = document.getElementById('sel_col').value;
  $("#user_image").css("border-color", sel_col);
}
