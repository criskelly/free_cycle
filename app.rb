require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require './lib/freecycle_mail'
# require 'json'

# get '/' do
#   $addresses = []
#   $addressBook = []
#   subjects = recent_offers()

#   subjects.each do |subject|
#     $address << make_offer_data(subject)
#   end
#   $addresses.reverse!
#   for i in 0..4
#     $addressBook[i] = []
#   end
# end

get '/' do
  erb :index
end

get '/update_mail' do
  return make_recent_offers_web_data()
end

# get '/note/:id/?' do
#   content_type :json
#   json subject: 'test', content: 'test'
# end

# delete '/note/:id/?' do
#   head :ok
# end
