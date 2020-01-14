require 'sinatra/base'
require_relative './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

 get '/' do
   erb :index
 end

 get '/bookmark' do
    @bookmark = Bookmarks.new
    erb :bookmark
 end

 run! if app_file == $0
end
