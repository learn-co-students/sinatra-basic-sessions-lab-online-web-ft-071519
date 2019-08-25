require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions 
    set :session_secret, "secret"
  end 
  
  get '/' do 
    erb :index 
  end 
  
  post '/checkout' do 
    session[:item] = params[:item] #takes params from forms and adds to sessnion hash; key is item and value is item they picked 
    @session = session #store as an instance variable so can access from views 
    erb :checkout 
    # where does that :checkout lead to?
  end 
  
  
end