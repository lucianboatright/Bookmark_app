require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

 get '/' do
   erb :index
 end

 get '/bookmark' do
    # session[:bookmarks] = Bookmarks.new
    @bookmark = Bookmarks.all
    erb :bookmark
 end

 post '/bookmark' do
  Bookmarks.add(params[:url],params[:title])
  redirect '/bookmark'
 end

 run! if app_file == $0
end
