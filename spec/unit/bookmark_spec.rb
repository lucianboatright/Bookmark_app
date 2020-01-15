require_relative '../../lib/bookmarks.rb'

describe Bookmarks do
  describe '#all' do
    it 'shows all bookmarks' do
      connection = PG.connect(:dbname => 'bookmark_manager_test')
      connect_and_clear_db
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.bbc.com');")  
      expect(subject.all).to include 'http://www.bbc.com'
    end
  end
end

