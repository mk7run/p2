$(document).ready(function(){

  $("#post_form").on("submit", function(event){
    event.preventDefault();

    var $form = $(this);
    var url = $form.attr("action");
    var method = $form.attr("method");
    var data = $form.serialize();

    $.ajax({
      url: url,
      method: method,
      data: data
    }).done(function(response){
      $("#posts").prepend(response);
    }).fail(function(response){
      $form.before(response.responseText);
    });
  });

  $("#posts").on("submit", ".post", function(event){
    event.preventDefault();
    var $article = $(this);
    var $form = $article.children("form");

    var url = $form.attr("action");
    var $likes = $article.children("p.post_details").children("span");

    $.ajax({
      url: url,
      method: "put"
    }).done(function(response){
      $likes.replaceWith(response);
    });
  });
});
