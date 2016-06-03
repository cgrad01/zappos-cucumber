When(/^I click the "([^"]*)" link/) do |link|
  @no_size_page = @shoe_page.dont_see_size
  @no_size_page.switch_to_second_window
end

Then(/^I see the form page title "([^"]*)"$/) do |title|
  expect(@no_size_page.get_page_title).to eq title
end