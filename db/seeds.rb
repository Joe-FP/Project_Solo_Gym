require_relative( "../models/booking.rb" )
require_relative( "../models/member.rb" )
require_relative( "../models/session.rb" )
require("pry-byebug")

# Booking.delete_all()
Member.delete_all()
# Session.delete_all()

member1 = Member.new({
  'name'=>'Joe Pollock',
  'contact_number'=>'07468310987',
  'email'=>'abc@gmail.com',
  'address'=>'5 Moon Lane, MO1 L10',
  'premium_member'=>true
  })
member1.save()

member2 = Member.new({
  'name'=>'John Smith',
  'contact_number'=>'07899645243',
  'email'=>'vev@gmail.com',
  'address'=>'5 Star Lane, MO1 L11',
  'premium_member'=>false
  })
member2.save()


binding.pry
nil
