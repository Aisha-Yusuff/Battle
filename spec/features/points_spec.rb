feature "personalised name" do 
  scenario "Can get players name and post names on webpage" do
    visit('/')
    fill_in :name1, with: 'Aisha'
    fill_in :name2, with: 'Jane'
    click_button 'Submit'
    expect(page).to have_content ("Jane: 100HP")
    expect(page).to have_content ("Aisha: 100HP")  
  end
end 
