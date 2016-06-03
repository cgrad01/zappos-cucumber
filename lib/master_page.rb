require 'selenium-webdriver'

class MasterPage

  def initialize(driver)
    @@driver = driver
  end

  def go_to_homepage
    @@driver.navigate.to('https://www.zappos.com')
    HomePage.new(@@driver)
  end

  def quit
    @@driver.quit
  end

  def get_page_title
    @@driver.title
  end
end