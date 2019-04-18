feature "hit points" do
  scenario "hit points are displayed next to player 2" do
    sign_in_and_play
    expect(page).to have_content 'Dutch: 100HP'
  end
end
