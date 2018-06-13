require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/members_controller')
require_relative('controllers/sessions_controller')
require_relative('controllers/bookings_controller')
also_reload( '../models/*' )

get '/' do
  @member_count = Member.count
  @session_count = Session.count
  @booking_count = Booking.count
  erb( :index )
end
