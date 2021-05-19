Given('I am on Escaperss home page') do
  visit 'escapes' #Get /escapes
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
  expect(page).to have_selector("th", text:string) # Write code here that turns the phrase above into concrete actions
end
