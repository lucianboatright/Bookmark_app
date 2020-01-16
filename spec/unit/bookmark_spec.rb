require_relative '../../lib/bookmarks.rb'

describe Bookmarks do

  describe '#all' do
    it 'shows all bookmarks' do

      connection = PG.connect(:dbname => 'bookmark_manager_test')
      Bookmarks.add('http://www.bbc.com','bbc')
      expect(Bookmarks.all).to include 'http://www.bbc.com'
    end
  end

  describe '#add' do
    it 'added bookmarks are stores in database' do
      Bookmarks.add('http://www.bunnies.com','bunnies')
      expect(Bookmarks.all).to include 'http://www.bunnies.com'
    end
  end
end

