require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/member.rb' )
require_relative( '../models/session.rb' )
require_relative( '../models/booking.rb' )
also_reload( '../models/*' )

get '/bookings' do
  @bookings = Booking.all
  erb (:"bookings/index")
end

get '/bookings/new' do
  @members = Member.all
  @sessions = Session.all
  erb(:"bookings/new")
end

post '/bookings/:id' do
  Booking.destroy(params['id'].to_i)
  redirect to '/bookings'
end

# delete '/bookings/:id' do
#   booking = Booking.find(params['id'])
#   booking.delete
#   redirect to '/bookings'
# end

post '/bookings' do
  Booking.new(params).save
  redirect to '/bookings'
end

# post '/bookings/:id/delete' do
#   booking = Booking.find(params['id'])
#   booking.delete
#   redirect to '/bookings'
# end
