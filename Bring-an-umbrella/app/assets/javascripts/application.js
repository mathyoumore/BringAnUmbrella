// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
function show_about() {
    var span = document.getElementById('About');
    span.style.display = span.style.display == 'none' ? 'block' : 'none';
    return false;
}

function one_time_check() {
    var result = document.getElementById('zip').value
    var span = document.getElementById('Result');
    span.style.display = span.style.display == 'none' ? 'block' : 'block';
    span.innerHTML = result? result : "Enter in a zip code, stupid.";
    return false;
}
