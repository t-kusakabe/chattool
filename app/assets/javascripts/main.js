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
