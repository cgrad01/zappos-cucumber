Given(/^I have filtered by brand$/) do
  @brand_page = @driver.go_to_homepage.get_shoes(@user.gender).get_shoes_category(@user.category).choose_brand(@user.brand)
end

When(/^I select a shoe with multiple colors$/) do
  @shoe_page = @brand_page.select_a_multi_color
end

Then(/^I see the title contains "([^"]*)"$/) do |brand|
  expect(@shoe_page.get_page_title).to include brand
end

Then(/^I see I have more than one color choice$/) do
  expect(@shoe_page.get_color_choices.length).to be > 1
end