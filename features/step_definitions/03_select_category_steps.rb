Given(/^I have chosen a gender$/) do
  @gendered_page = @driver.go_to_homepage.get_shoes(@user.gender)
end

When(/^I navigate to the "([^"]*)" category$/) do |category|
  @category_page = @gendered_page.get_shoes_category(@user.category)
end

Then(/^I see the category title "([^"]*)"$/) do |page_title|
  expect(@category_page.get_page_title).to eq page_title
end