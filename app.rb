require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "123"
  end
  
  get '/' do
    @session = session
    erb :index
  end
  
  post '/checkout' do
    #binding.pry
    session[:item] = params["item"]
    @session = session
    erb :checkout_page
  end
  
  
end