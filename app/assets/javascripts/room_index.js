$(function () {
  loadRooms();
})

function loadRooms() {
  $('.hotel-link').on('click', function (e) {
    e.preventDefault();
    alert('a pic was clicked');
  });
}
