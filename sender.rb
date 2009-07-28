require 'rubygems'
require 'sinatra'
require 'datamapper'
require 'lib/gravatar'

$:.unshift File.dirname(__FILE__) + '/models'

DataMapper::setup(:default, ENV['DATABASE'] || "sqlite3://#{Dir.pwd}/sender.db")

require 'models'

user = User.new(:name => 'Ben', :email => 'bensales@reevoo.com')
climb = Climb.new(:name => 'Serenade Arete')
tick = Tick.new(:user => user, :climb => climb).save
Location.new(:name => 'Bowles').save

get '/' do
  @header = 'Mouses'
  @users = User.all
  erb :main
end

get '/add/*' do
  @locations = Location.all
  erb :add_climb
end

post '/add_climb' do
  p params
  Climb.new(:name => params[:name]).save
  redirect '/'
end


