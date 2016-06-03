Given(/^I have chosen a shoe$/) do
  @shoe_page = @driver.go_to_homepage.get_shoes(@user.gender).get_shoes_category(@user.category).choose_brand(@user.brand).select_a_multi_color
end

When(/^I add the shoe to my cart$/) do
  @warned = @shoe_page.add_to_cart
end

Then(/^I see the warning text "([^"]*)"$/) do |warning|
  expect(@warned.get_warning).to eq warning
end