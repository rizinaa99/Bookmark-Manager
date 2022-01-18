require 'pg'
class Bookmark
  attr_reader :title, :url
  def initialize(title, url)
    @title = title
    @url = url
  end

  def self.all
    # [
    #   Bookmark.new('Google', 'https://www.google.com/'),
    #   Bookmark.new('Instagram', ''),
    #   Bookmark.new('Makers', "http://makers.tech")
    # ]
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end