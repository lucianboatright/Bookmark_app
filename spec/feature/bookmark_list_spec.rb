feature 'Bookmark list' do
  scenario 'shows bookmark list' do
    
    visit '/'
    click_button 'Submit'
    expect(page).to have_content('google')
    expect(page).to have_content('makers')
  end
end