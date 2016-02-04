function open_menu() {
  $("#close_side").hide();
  $("#open_side").fadeIn();
}

function hidden_menu() {
  $("#open_side").hide();
  $("#close_side").fadeIn("slow");
}

// function transition() { //これ。これがサイドバー表示する関数
//   if ($("#open_side").css("display") == "none"){
//     $("#close_side").hide();
//     $("#open_side").fadeIn();
//   }
// })

function cng_col() {
  var sel_col = document.getElementById('sel_col').value;
  $("#user_image").css("border-color", sel_col);
}
