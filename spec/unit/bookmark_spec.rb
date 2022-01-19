require 'bookmark'

describe Bookmark do
  subject { described_class.new('Google', 'https://www.google.com/') }

  describe '.all' do
    it 'returns a list of bookmarks' do
      Bookmark.new_bookmark(url: "https://www.makersacademy.com")
      Bookmark.new_bookmark(url: "https://www.destroyallsoftware.com")
      Bookmark.new_bookmark(url: "https://www.google.com/")
      bookmarks = Bookmark.all
      expect(bookmarks).to include('https://www.google.com/')
    end
  end
  describe "new_bookmark" do
    it "creates new bookmarks" do
    Bookmark.new_bookmark(url: "www.you.com")
    expect(Bookmark.all).to include "www.you.com"
    end
  end 

end