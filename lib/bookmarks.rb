# frozen_string_literal: true

require 'pg'

class Bookmarks
  attr_reader :id, :url, :title

  def initialize(id, url, title)
    @id = id
    @url = url
    @title = title
  end

  def self.add(url, title)
    connection = if ENV['DATABASE'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end

    connection.exec("INSERT INTO bookmarks (url,title) VALUES('#{url}','#{title}')")
  end

  def self.all
    connection = if ENV['DATABASE'] == 'test'
                   PG.connect(dbname: 'bookmark_manager_test')
                 else
                   PG.connect(dbname: 'bookmark_manager')
                 end

    result = connection.exec('SELECT * FROM bookmarks;')

    result.map { |bookmark| Bookmarks.new(bookmark['id'], bookmark['url'], bookmark['title']) }
  end

end
