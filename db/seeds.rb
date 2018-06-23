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
  'name'=>'John McCollum',
  'contact_number'=>'07468 310 987',
  'email'=>'jmc@gmail.com',
  'address'=>'5 CodeClan Terrace, CC1 L10',
  'premium_member'=>'true'
  })

member2 = Member.new({
  'name'=>'Colin Bell',
  'contact_number'=>'07899 645 243',
  'email'=>'cb@gmail.com',
  'address'=>'6 CodeClan Terrace, CC1 L10',
  'premium_member'=>'true'
  })

member3 = Member.new({
  'name'=>'Louise Reid',
  'contact_number'=>'07895 435 123',
  'email'=>'lr@gmail.com',
  'address'=>'7 CodeClan Terrace, CC1 L10',
  'premium_member'=>'true'
  })

member4 = Member.new({
  'name'=>'Steve MJ',
  'contact_number'=>'07899 444 332',
  'email'=>'smj@gmail.com',
  'address'=>'8 CodeClan Terrace, CC1 L10',
  'premium_member'=>'true'
  })

member1.save()
member2.save()
member3.save()
member4.save()

# --------------------
# Add sessions.
# --------------------

session1 = Session.new({
  'title'=>'Full Body',
  'session_date'=>'2018/06/19',
  'session_time'=>'07:15',
  'duration_mins'=>60,
  'max_capacity'=>2,
  'min_capacity'=>0,
  'type'=>'Weighted Circuit',
  'intensity_level'=>'Moderate'
  })

session2 = Session.new({
  'title'=>'Core BLAST',
  'session_date'=>'2018/06/21',
  'session_time'=>'12:15',
  'duration_mins'=>45,
  'max_capacity'=>2,
  'min_capacity'=>0,
  'type'=>'BW Circuit',
  'intensity_level'=>'Moderate'
  })

session3 = Session.new({
  'title'=>'Cardio Blast',
  'session_date'=>'2018/06/21',
  'session_time'=>'12:15',
  'duration_mins'=>30,
  'max_capacity'=>2,
  'min_capacity'=>0,
  'type'=>'HIIT',
  'intensity_level'=>'High'
  })

  session1.save()
  session2.save()
  session3.save()

  # --------------------
  # Add bookings.
  # --------------------

  # booking1 = Booking.new({
  #   'member_id'=>member1.id,
  #   'session_id'=>session1.id
  #   })
  #
  # booking2 = Booking.new({
  #   'member_id'=>member2.id,
  #   'session_id'=>session2.id
  #   })
  #
  # booking1.save()
  # booking2.save()

binding.pry
nil
