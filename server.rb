
get '/' do
  haml :index
end

get '/contact' do
  haml :contact
end

get '/views/*' do
  haml :page
end
