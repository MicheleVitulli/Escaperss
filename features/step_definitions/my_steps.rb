Given('I am Admin') do
  user = User.create!(:email => "michele.vitulli@outlook.it", :password => "michele", :roles_mask => 3) # Write code here that turns the phrase above into concrete actions
  visit '/'
  fill_in "Email",	with: "michele.vitulli@outlook.it"
  fill_in "Password",	with: "michele"
  click_button "Entra"
  expect(page).to have_text("Entrato come Amministratore")    
end

Given('I am on Escaperss home page') do
  visit '/escapes' #Get /escapes
end

When('I follow {string}') do |string|
  click_link(string) # Write code here that turns the phrase above into concrete actions
end

Then('I should be on the Aggiungi una nuova escape room Page') do
  current_path = URI.parse(current_url).path
  current_path == '/escapes/new'
   # Write code here that turns the phrase above into concrete actions
end

When('I fill in {string} with {string}') do |string, string2|
  fill_in(string, :with => string2)
  #pending # Write code here that turns the phrase above into concrete actions
end

Then('I press {string}') do |string|
  click_button(string) # Write code here that turns the phrase above into concrete actions
end
Then('I should be on Escaperss home Page') do
  current_path = URI.parse(current_url).path
  current_path == '/escapes' # Write code here that turns the phrase above into concrete actions
end

Then('I should see {string}') do |string|
  expect(page).to have_text(string) # Write code here that turns the phrase above into concrete actions
end



######
######
######


Given('I am user') do
  user = User.create!(:email => "test@test.com", :password => "password", :roles_mask => 0) # Write code here that turns the phrase above into concrete actions
  visit '/'
  fill_in "Email",	with: "test@test.com"
  fill_in "Password",	with: "password"
  click_button "Entra"
  expect(page).to have_text("test@test.com")    # Write code here that turns the phrase above into concrete actions
end

Given('There is an Escape') do
   expect(page).to have_text("Il manicomio")  # Write code here that turns the phrase above into concrete actions
end

When('I select in {string} with {string}') do |string, string2|
  select string2, :from => string# Write code here that turns the phrase above into concrete actions
end

When('I follow  confirm {string}') do |string|
  click_link(string)
  page.accept_alert # Write code here that turns the phrase above into concrete actions
end

Then('I should not see {string}') do |string|
  expect(page).not_to have_text(string) # Write code here that turns the phrase above into concrete actions
end


