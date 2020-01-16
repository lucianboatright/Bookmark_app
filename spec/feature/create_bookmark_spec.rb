feature 'Create New Bookmark' do
  scenario 'User can add new bookmark via Add button' do
    visit '/'
    fill_in 'url', with: 'http://www.dogs.com'
    fill_in 'title', with: 'Dogs, dogs, dogs'
    click_button 'Add'
    expect(page).to have_link('Dogs, dogs, dogs', href: 'http://www.dogs.com')
  end
end