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

    result.map{ |bookmark| bookmark['title'] }
  end

  def self.add(url, title)
    if ENV['DATABASE'] == 'test'
     connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks (url,title) VALUES('#{url}','#{title}')")
  end

end