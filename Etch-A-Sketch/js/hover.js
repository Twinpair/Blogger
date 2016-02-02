var height = 16;
var width = 16;
var color = 'red';
$(document).ready(function(){
    create(height, width);
    boxDimensions()

    $("#button").click(function(){
        $('.box').css('background-color', 'black'); 
        var newH = prompt("What new height would you like? (Max: 100)");
        while (newH > 100){
            newH = prompt("Height has to be less than 100, what would you like it to be? (Max: 100)");
        }
        var newW = prompt("What new width would you like? (Max: 90)");
        while (newW > 90){
            ewH = prompt("Width has to be less than 90, what would you like it to be? (Max: 90)");
        }
        height = newH;
        width = newW;
        $(".box").remove();
        $('.break').remove();
        create();
        boxDimensions();
        $(".box").hover(function(){
            $(this).css('background-color', color); 
        });
    });

    
    $(".box").hover(function(){
    $(this).css('background-color', color); 
    });
});

function create(){
    var i = 0;
        while (i < height){
            k = 0
            while (k < width){
                $("#Wrapper").append('<div class = "box"></div>');
                k++;
            }
            $("#Wrapper").append('<br class = "break">');
            i++;
        }
}

function boxDimensions(){
    $(".box").height(($("#Wrapper").height() - (2 * height)) / height);
    $(".box").width(($("#Wrapper").width() - (2 * width)) / width);
}