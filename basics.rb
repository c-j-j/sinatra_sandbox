require 'sinatra'

get '/' do
  "Hello, world !!!"
end

get '/hello/:name' do
   "Hello #{params[:name]}"
end

get '/form' do
   erb :form
end

post '/form' do
   "You said '#{params[:message]}'"
end

get '/secret' do
   erb :secret
end

not_found do
  halt 404, "page not found"
end
