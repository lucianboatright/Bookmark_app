feature 'Bookmark list' do
  scenario 'shows bookmark list' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content('Netflix')
    expect(page).to have_content('BBC')
  end
end