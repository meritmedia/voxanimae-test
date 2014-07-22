var myPage = new Array;
myPage[1] = "home";
myPage[2] = "contact";
myPage[3] = "advertising";
myPage[4] = "donate";

var html="";


function getpage(p) {
    $("#content").load(myPage[p] + ".html");
}



function isValidEmailAddress(emailAddress) {
    var pattern = new RegExp(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/);
    return pattern.test(emailAddress);
};

function grabemail(addy) {
    var addy = document.getElementById("addy").value;
    var goodtogo = isValidEmailAddress(addy);
    if (goodtogo) {
        $.post("putaddy.asp", { addy: addy })

        .done(function (data) {
            //alert("Data Loaded: " + data);
            $(".status").html("Thank you for joining our list!");
        });
        
    } else {$(".status").html("Bad email address." ); }
}