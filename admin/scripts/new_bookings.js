function get_bookings(search='')
{
  let xhr = new XMLHttpRequest();
  xhr.open("POST","ajax/new_bookings.php",true);
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

  xhr.onload = function(){
    document.getElementById('table-data').innerHTML = this.responseText;
  }

  xhr.send('get_bookings&search='+search);
}

let assign_room_form = document.getElementById('assign_room_form');

function assign_room(id) {
  document.querySelector('input[name="booking_id"]').value = id;
  document.querySelector('input[name="room_no"]').value = '';
}

assign_room_form.addEventListener('submit', function(e) {
  e.preventDefault();
    
  let data = new FormData();
  data.append('room_no', assign_room_form.elements['room_no'].value);
  data.append('booking_id', assign_room_form.elements['booking_id'].value);
  data.append('assign_room', '');

  let xhr = new XMLHttpRequest();
  xhr.open("POST", "ajax/new_bookings.php", true);

  xhr.onload = function() {
      if(this.responseText == 1) {
          alert('success', 'Room assigned successfully!');
          assign_room_form.reset();
          get_bookings();
          document.getElementById('assign-room').modal('hide');
      }
      else if(this.responseText == 2) {
          alert('error', 'Room already assigned!');
      }
      else {
          alert('error', 'Server error!');
      }
  }

  xhr.send(data);
});

function cancel_booking(id) 
{
  if(confirm("Are you sure, you want to cancel this booking?"))
  {
    let data = new FormData();
    data.append('booking_id',id);
    data.append('cancel_booking','');

    let xhr = new XMLHttpRequest();
    xhr.open("POST","ajax/new_bookings.php",true);

    xhr.onload = function()
    {
      if(this.responseText == 1){
        alert('success','Booking Cancelled!');
        get_bookings();
      }
      else{
        alert('error','Server Down!');
      }
    }

    xhr.send(data);
  }
}

window.onload = function(){
  get_bookings();
}