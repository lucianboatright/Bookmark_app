feature 'Create New Bookmark' do
  scenario 'User can add new bookmark via Add button' do
    visit '/'
    fill_in 'url', with: 'http://www.dogs.com'
    click_button 'Add'
    expect(page).to have_content 'http://www.dogs.com'
  end
end