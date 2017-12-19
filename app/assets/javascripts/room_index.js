$(function () {
  loadRooms();
})

function loadRooms() {
  $('.hotel-link').on('click', function (e) {
    e.preventDefault();
    const id = $(this).data("id");
    $.get('/rooms/' + id, function (rooms) {
      $('#hotel-rooms').empty();
      rooms.forEach(function (room) {
        $('#hotel-' + id).after($('#hotel-rooms').append(room.room_type.name));
      });
    });
  });
}
