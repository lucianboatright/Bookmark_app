require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base
 enable :sessions

 get '/' do
   erb :index
 end

 get '/bookmark' do
    @bookmark = Bookmarks.new
    erb :bookmark
 end

 post '/bookmark' do
  session[:url] = params[:url]
  redirect '/bookmark'
 end

 run! if app_file == $0
end
