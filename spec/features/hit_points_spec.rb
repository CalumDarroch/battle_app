feature "hit points" do
  scenario "hit points are displayed next to player 2" do
    visit('/')
    fill_in :player_1_name, with: 'Conan'
    fill_in :player_2_name, with: 'Dutch'
    click_button 'Submit'
    expect(page).to have_content 'Dutch: 100HP'
  end
end
