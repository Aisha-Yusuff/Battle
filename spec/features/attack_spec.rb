feature "attack" do 
  scenario "Player 1 attacks Player 2" do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Aisha has attacked Jane"
  end

  scenario "Player 2 points reduces by 10 points" do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Jane: 90HP"
    expect(page).not_to have_content "Jane: 100HP"
  end

  scenario "Player 2 attacks player 1" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch'
    click_button 'Attack'
    expect(page).to have_content "Jane has attacked Aisha"
  end

  scenario "Player 1 points reduces by 10 points" do 
    sign_in_and_play
    click_button "Attack"
    click_button 'Switch'
    click_button 'Attack'
    click_button 'Switch'
    expect(page).to have_content "Aisha: 90HP"
    expect(page).not_to have_content "Aisha: 100HP"
  end

end 