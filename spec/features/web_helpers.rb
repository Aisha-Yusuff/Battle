def sign_in_and_play
  visit "/"
  fill_in :name1, with: 'Aisha'
  fill_in :name2, with: 'Jane'
  click_button 'Submit'
end