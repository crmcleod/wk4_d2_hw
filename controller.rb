require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('./models/film')
also_reload('./models/*')

get '/films' do
    @film_list = Film.all()
    erb( :index )
end

get '/films/:num1' do
    index = (params[:num1].to_i)-1
    @film_hash = Film.all()[index]
    erb( :result )
end


    