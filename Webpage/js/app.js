$(document).ready(function(){

  var position = 4;
  var gender = "string";
  var first = true;
  var count = 4;


  $(".buddy").on("swiperight",function(){
    count--;
    console.log(count);
    $(this).addClass('rotate-left').delay(500).fadeOut(1);
    $('.buddy').find('.status').remove();

      //$(this).remove();
      if (count < 1) {
        $("#container").css("display", "none");
        $("#container2").css("display", "block");

        var title = document.getElementById('title');
        title.innerHTML = "Your Status:";

        determineStats(gender, position);

        var text = "<p>paragraph 2</p>";
      }

      $(this).append('<div class="status like">Like!</div>');      
      if ( $(this).is(':last-child') ) {
        $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
        $(this).remove();
      } else {
        $(this).next().removeClass('rotate-left rotate-right').fadeIn(400);
      }
    });  

/////////////////////// right --> left ///////////////////////////

  $(".buddy").on("swipeleft",function(){
    $(this).addClass('rotate-right').delay(500).fadeOut(1);
    $('.buddy').find('.status').remove();
    count--;
    console.log(count);


    if (count < 1) {
      $("#container").css("display", "none");
      $("#container2").css("display", "block");

      var title = document.getElementById('title');
      title.innerHTML = "Your Status:";

      determineStats(gender, position);
    }
   

   $(this).append('<div class="status dislike">Dislike!</div>');

   if ( $(this).is(':last-child') ) {
     $('.buddy:nth-child(1)').removeClass ('rotate-left rotate-right').fadeIn(300);
     $(this).remove();
     
   } else {
    $(this).next().removeClass('rotate-left rotate-right').fadeIn(400);

  } 
});

});


//////////////////////////////

//toggle side
$(document).ready(function () {
  $('#sidebarCollapse').on('click', function () {
    $('#sidebar').toggleClass('active');
    $(this).toggleClass('active');
    // if ($(window).width() < 769) {
    //   $('#page-title').toggleClass('invisible');
    // }
  });
});





