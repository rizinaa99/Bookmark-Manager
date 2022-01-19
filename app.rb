require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :test, :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end
  get '/new_bookmark' do
    erb :new_bookmark
  end
  post '/new_bookmark' do
    Bookmark.new_bookmark(url: params[:url])
    redirect"/bookmarks"
  end
end
