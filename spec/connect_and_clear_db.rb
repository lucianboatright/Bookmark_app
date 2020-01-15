def connect_and_clear_db
  connection = PG.connect(:dbname => 'bookmark_manager_test')
  connection.exec("TRUNCATE bookmarks;")  
end