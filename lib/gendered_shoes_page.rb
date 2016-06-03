class GenderedShoesPage < MasterPage

  def initialize(driver)
    super(driver)
  end

  def get_shoes_category(category)
    @@driver.find_element(:link, category).click
    ShoesCategoryPage.new(@@driver)
  end

end

