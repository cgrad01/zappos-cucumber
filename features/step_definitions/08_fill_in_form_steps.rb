Given(/^I navigated to the form page$/) do
  @no_size_page = @driver.go_to_homepage.get_shoes(@user.gender).get_shoes_category(@user.category).choose_brand(@user.brand).select_a_multi_color.dont_see_size
  @no_size_page.switch_to_second_window
end

When(/^I fill in the form$/) do
  @no_size_page.fill_in_form(@user)
end

When(/^I click submit$/) do
  @no_size_page.submit_form
end

Then(/^I see the page title "([^"]*)"$/) do |title|
  expect(@no_size_page.get_page_title).to eq title
end