require( 'sinatra' )
require( 'sinatra/contrib/all' )
also_reload( '../models/*' )

get '/admin' do
  erb (:password)
end

post '/admin/settings' do
  if params['psw'] == 'a'
    erb (:settings)
  else
    redirect to ('/')
  end
end
