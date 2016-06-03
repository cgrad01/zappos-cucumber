class ShoesCategoryPage < MasterPage

  def initialize(driver)
    super(driver)
  end

  def choose_brand(brand)
    sleep(3)
    @@driver.find_element(:partial_link_text, brand).click
    ShoesCategoryPage.new(@@driver)
  end

  def select_a_multi_color
    sleep(3)
    items = @@driver.find_elements(:css, "span.productName")
    find_repeat(items).click
    ShoePage.new(@@driver)
  end

  def get_search_header
    sleep(3)
    @@driver.find_element(:id, "searchHeaderTerm").text
  end

  def find_repeat(items)
    if !(items.empty?)
      focus = items.slice!(0)
      text_names = items.map { |item| item.text }
      if text_names.include?(focus.text)
        focus
      else
        find_repeat(items)
      end
    end
  end
end