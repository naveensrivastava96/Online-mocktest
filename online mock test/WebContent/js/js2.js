/*-----Studytonight jQuery
 ------Author : Abhishek Ahlawat
 ------Copyright material
*/

// Test Score Box
$(document).ready(function(){
//open popup
 $("#get_result").on('click', function(){
 	$("#overlay_form").fadeIn(1000);
 	$("#shadow").fadeIn("normal");
 	$('html,body').scrollTop(0);
  	positionPopup();
 });
 //close popup and show answers
 $("#close_popup_show_answers").on('click', function(){
 	$("#overlay_form").fadeOut(1000);
  	$("#shadow").fadeOut("normal");
  	$(".quiz_answer_holder").show();
  	var url = window.location.href;
  	var urlParts = url.split("/tests/");
  	$.getJSON(urlParts[1]+"_answer.json", function(data){
        $.each(data, function(i, field){
            var div = document.getElementsByClassName('quiz_content')[i];
            var answer_div = div.getElementsByClassName('quiz_answer_holder');
   	    answer_div[0].innerHTML = field.answer;
        });
    });
  	
 });

});

//position the popup at the center of the page
function positionPopup(){
  if(!$("#overlay_form").is(':visible')){
    return;} 
  $("#overlay_form").css({
      left: ($(window).width() - $('#overlay_form').width()) / 2,
      top: ($(window).width() - $('#overlay_form').width()) / 7,
      position:'absolute'});}
//maintain the popup at center of the page when browser resized
$(window).bind('resize',positionPopup);