  $(document).ready(function(){
    $("#initialize").click(function(){
    $(".hidden input, textarea").fadeIn().css('display', 'block');
    $(".mindmap input, textarea").not('.submit').addClass('shrink');

    $(".brainstorm").addClass('clicked');
    $("#initialize").hide();
    $('hr').hide();
    });
  });
