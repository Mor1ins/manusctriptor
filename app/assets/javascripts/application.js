// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// bootstrap/sprockets provides individual Bootstrap Javascript files (alert.js or dropdown.js)
// while bootstrap provides a concatenated file containing all Bootstrap Javascripts.

//= require jquery
//= require jquery_ujs
//= require bootstrap/custom
//= require turbolinks
//= require_tree .

document.addEventListener("turbolinks:load", function() {
    if ($('li.active').html() != undefined) {
        $('li.active').removeClass('active');
    }
    $('a[href="' + location.pathname + '"]').parent('li').addClass('active');
});

// function onArrowClick() {
//     if (document.getElementById("btn-arrow").style.transform === "rotate(180deg)") {
//         document.getElementById("btn-arrow").style.transform = "rotate(0deg)";
//     } else {
//         document.getElementById("btn-arrow").style.transform = "rotate(180deg)";
//     }
// }

function onArrowClick() {
    let button = document.getElementById("btn-arrow");
    let menu = document.getElementById("leftmenu");
    let pos_button = 0;
    let pos_menu = -1000;
    let btn_step = 6;
    let menu_step = 10;
    if (button.style.transform === "rotate(180deg)") {
        menu_step *= (-1);
        btn_step *= (-1);
        pos_button = 178;
        pos_menu = -1;
    }

    let btn_id = setInterval(btn_frame, 4);
    let menu_id = setInterval(menu_frame, 4);

    function btn_frame() {
        if (pos_button >= 180 || pos_button < 0) {
            clearInterval(btn_id);
        } else {
            pos_button += btn_step;
            button.style.transform = "rotate(" + pos_button + 'deg)';
        }
    }


    function menu_frame() {
        menu.style.display = 'flex';
        if (pos_menu <= -1150 || pos_menu >= 0) {
            clearInterval(menu_id);
        } else {
            pos_menu += menu_step;
            menu.style.top = pos_menu + 'px';
        }
    }
}
