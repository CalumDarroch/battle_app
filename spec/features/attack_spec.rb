feature 'Attack player 2' do

  scenario 'attacks player 2 and receives confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Conan attacked Dutch!'
  end

  scenario 'reduces player 2s HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Dutch: 100HP'
    expect(page).to have_content 'Dutch: 90HP'
  end

end
