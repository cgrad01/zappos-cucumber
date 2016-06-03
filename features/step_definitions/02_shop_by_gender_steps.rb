Given(/^I am on the homepage$/) do
  @homepage = @driver.go_to_homepage
end

When(/^I select the "([^"]*)" link$/) do |gender|
  @gendered_page = @homepage.get_shoes(@user.gender)
end