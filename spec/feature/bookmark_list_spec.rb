feature 'Bookmark list' do
  scenario 'shows bookmark list' do
    connection = PG.connect(:dbname => 'bookmark_manager_test')
    connect_and_clear_db
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makers.com');")
    visit '/'
    click_button 'Submit'
    expect(page).to have_content('google')
    expect(page).to have_content('makers')
  end
end