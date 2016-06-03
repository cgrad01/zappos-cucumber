class HomePage < MasterPage

  def initialize(driver)
    super(driver)
  end

  def get_shoes(gender)
    shoe_links = @@driver.find_elements(:link, "Shoes")
    if gender.downcase == "mens"
      shoe_links[2].click
    elsif gender.downcase == "womens"
      shoe_links[1].click
    end
    GenderedShoesPage.new(@@driver)
  end
end