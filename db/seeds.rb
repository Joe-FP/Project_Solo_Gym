require_relative( "../models/booking.rb" )
require_relative( "../models/member.rb" )
require_relative( "../models/session.rb" )
require("pry-byebug")

Booking.delete_all()
Member.delete_all()
Session.delete_all()

# --------------------
# Add members.
# --------------------

member1 = Member.new({
  'name'=>'Joe Pollock',
  'contact_number'=>'07468310987',
  'email'=>'abc@gmail.com',
  'address'=>'5 Moon Lane, MO1 L10',
  'premium_member'=>'true'
  })

member2 = Member.new({
  'name'=>'John Smith',
  'contact_number'=>'07899645243',
  'email'=>'vev@gmail.com',
  'address'=>'5 Star Lane, MO1 L11',
  'premium_member'=>'false'
  })

member1.save()
member2.save()

# --------------------
# Add sessions.
# --------------------

session1 = Session.new({
  'title'=>'Wake up!',
  'session_date'=>'2018/06/19',
  'session_time'=>'07:15',
  'duration_mins'=>30,
  'max_capacity'=>20,
  'min_capacity'=>3,
  'type'=>'HIIT',
  'intensity_level'=>'High'
  })

  session2 = Session.new({
    'title'=>'Stay awake!',
    'session_date'=>'2018/06/21',
    'session_time'=>'12:15',
    'duration_mins'=>30,
    'max_capacity'=>20,
    'min_capacity'=>3,
    'type'=>'DB Circuits',
    'intensity_level'=>'Moderate'
    })

  session1.save()
  session2.save()

  # --------------------
  # Add bookings.
  # --------------------

  booking1 = Booking.new({
    'member_id'=>member1.id,
    'session_id'=>session1.id
    })

  booking2 = Booking.new({
    'member_id'=>member2.id,
    'session_id'=>session2.id
    })

  booking3 = Booking.new({
    'member_id'=>member1.id,
    'session_id'=>session2.id
    })

  booking1.save()
  booking2.save()
  booking3.save()

































binding.pry
nil
