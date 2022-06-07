feature "personalised name" do 
  scenario "submitting player names" do
  sign_in_and_play
    expect(page).to have_content 'Aisha vs Jane'
  end
end 
