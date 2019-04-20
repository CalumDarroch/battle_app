feature 'Attack player 2' do
  scenario 'attacks player 2 and receives confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Conan attacked Dutch!'
  end
end
