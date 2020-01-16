feature 'Bookmark list' do
  scenario 'shows bookmark list' do
    connection = PG.connect(:dbname => 'bookmark_manager_test')
    Bookmarks.add('http://www.google.com','google')
    Bookmarks.add('http://www.makers.com','makers')
    visit '/'
    click_button 'Show'
    expect(page).to have_content('google')
    expect(page).to have_content('makers')
  end

  scenario 'shows bookmark list' do
    connection = PG.connect(:dbname => 'bookmark_manager_test')
    Bookmarks.add('http://www.cats.com','cats')
    visit '/'
    click_button 'Show'
    expect(page).to have_content('cats') # not_to to test correct 
  end
end