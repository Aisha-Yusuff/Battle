feature "switch" do 
  scenario "to see current player before switch" do 
    sign_in_and_play
    expect(page).to have_content "Aisha is now in control" 
  end 

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch'
    expect(page).to have_content "Jane is now in control" 
    expect(page).not_to have_content "Aisha is now in control" 
  end
end