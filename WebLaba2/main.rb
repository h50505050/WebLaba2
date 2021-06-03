
require 'csv'
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
set :port, 3000

get '/' do
    'Привет. Это api с информацией о городах)'
end
get '/city' do 
    file = File.read('./settings.json')
    hash = JSON.parse(file)
    hash.to_json
end
post '/city' do
    file = File.read('./settings.json')
    hash = JSON.parse(file)
    hash[params['city']].to_json
end

