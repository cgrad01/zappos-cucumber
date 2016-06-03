require 'user'
require 'master_page'
require 'home_page'
require 'gendered_shoes_page'
require 'shoes_category_page'
require 'shoe_page'
require 'no_size_page'
require 'no_size_confirmation_page'


Before do
  @driver = MasterPage.new(Selenium::WebDriver.for(:firefox))
  @user = User.new("Mens", "Athletic", "Inov", "jim@example.com", "Grey/Blue/Orange", "UK 9.5 (US Men's 10.5)")
end

After do
  @driver.quit
end

Given(/^I am a User$/) do
  @user = User.new("Mens", "Athletic", "Inov", "jim@example.com", "Grey/Blue/Orange", "UK 9.5 (US Men's 10.5)")
end

Given(/^I go to the homepage$/) do
  @homepage = @driver.go_to_homepage
end

Then(/^I want to see the title "([^"]*)"$/) do |page_title|
  expect(@homepage.get_page_title).to eq page_title
end