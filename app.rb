require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "Secret"
    end

    get '/' do
        erb :'index'
    end

    post '/checkout' do
        # take params from the form and add it to the session hash.
        # the key should be 'item'.
        # binding.pry
        session[:item] = params[:item]
        @item = session[:item]
        
        # the value should be 'user_input' 
        # store the session hash in an instance variable so views can access it. 
        # render index page with item entered.
        erb :'checkout'
    end

end