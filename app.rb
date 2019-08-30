require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "f0001d5dd1d149dd99a06fc6d4b01f3078d3b2a4aecda4bf455faccc41e4c47c92fb19e4cf48f066b1d37e81e9edc885c31b4570fcabd3d
cae8faff1b08f4af3"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session
    erb :checkout
  end


end