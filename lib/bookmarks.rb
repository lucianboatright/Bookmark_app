require 'pg'

class Bookmarks 

  # def initialize
  #   @bookmark_log = []
  # end

  def self.all 
    if ENV['DATABASE'] == 'test'
     connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks;') 

    result.map{ |bookmark| bookmark['url'] }
  end

  def self.add(url)
    if ENV['DATABASE'] == 'test'
     connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end

end