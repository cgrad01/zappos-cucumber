Given(/^I have chosen a category$/) do
  @category_page = @driver.go_to_homepage.get_shoes(@user.gender).get_shoes_category(@user.category)
end

When(/^I check the "([^"]*)" brand$/) do |brand|
  @category_page.choose_brand(brand)
end

Then(/^I see the search header contains "([^"]*)"$/) do |brand|
  expect(@category_page.get_search_header).to include brand
end