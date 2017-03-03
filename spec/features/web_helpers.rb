
def sign_in_and_play
  visit "/"
  fill_in "player1", :with => "Noora"
  fill_in "player2", :with => "Nick"
  click_button "Submit"
end
