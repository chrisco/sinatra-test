require "sinatra"

get '/' do
  @name = %w(Larry Moe Curly Arvid).sample
  erb :index # calling the erb templating system (ships w/ Ruby)
end

get '/secret' do
  "This is a 'secret' page. Boo!"
end

get '/hello' do
  @visitor = params[:name] # params hash is provided by Sinatra
  erb :index
end

