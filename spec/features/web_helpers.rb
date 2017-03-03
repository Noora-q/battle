
def sign_in_and_play
  visit "/names"
  fill_in "player1", :with => "Noora"
  fill_in "player2", :with => "Alex"
  click_button "Submit"
end
