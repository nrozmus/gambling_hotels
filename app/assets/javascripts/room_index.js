$(function () {
  loadRooms();
});

function loadRooms() {
  $('.hotel-link').on('click', function (e) {
    e.preventDefault();
    const id = $(this).data('id');
    $.get('/hotels/' + id + '/rooms', function (rooms) {
      $('#hotel-rooms').empty();
      rooms.forEach(function (room) {
        const name = room.room_type.name;
        const roomId = room.id;
        const roomTypeId = room.room_type_id;
        const photo = room.room_type.photo;
        $('#hotel-' + id).after(
          $('#hotel-rooms').append(HandlebarsTemplates['hotel_room_list']({
            name: name,
            roomId: roomId,
            roomTypeId: roomTypeId,
            photo: photo,
          }))
        );
      });
    });
  });
}
