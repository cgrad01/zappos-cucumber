class ShoePage < MasterPage

  def initialize(driver)
    super(driver)
  end

  def get_color_choices
    dropdown = @@driver.find_element(:id, "color")
    options = dropdown.find_elements(:tag_name, "option")
  end

  def get_warning
    @@driver.find_element(:id, "cartInfoPopWarn-d3").text
  end

  def add_to_cart
    @@driver.find_element(:id, "addToCart").click
    ShoePage.new(@@driver)
  end

  def dont_see_size
    @@driver.find_element(:id, "notifyMePopupLink").click
    NoSizePage.new(@@driver)
  end
end
