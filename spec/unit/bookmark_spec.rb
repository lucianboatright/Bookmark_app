require_relative '../../lib/bookmarks.rb'

describe Bookmarks do

  describe '#all' do
    it 'shows all bookmarks' do

      connection = PG.connect(:dbname => 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.com');")  
      expect(Bookmarks.all).to include 'http://www.bbc.com'
    end
  end

  describe '#add' do
    it 'added bookmarks are stores in database' do
      Bookmarks.add('http://www.bunnies.com')
      expect(Bookmarks.all).to include 'http://www.bunnies.com'
    end
  end
end

