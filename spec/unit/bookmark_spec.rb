require_relative '../../lib/bookmarks.rb'

describe Bookmarks do
  describe '#all' do
    it 'shows all bookmarks' do
      expect(subject.all).to include 'http://www.google.com'
    end
  end
end

