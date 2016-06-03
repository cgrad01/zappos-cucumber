class NoSizePage < MasterPage

  def initialize(driver)
    super(driver)
  end

  def switch_to_second_window
    sleep(3)
    handles = @@driver.window_handles
    @@driver.switch_to.window(handles[1])
    NoSizePage.new(@@driver)
  end

  def input_email(email)
    @@driver.find_element(:id, "email").send_keys(email)
    NoSizePage.new(@@driver)
  end

  def choose_color(color)
    dropdown = @@driver.find_element(:id, "styleId")
    options = dropdown.find_elements(:tag_name, "option")
    select_option(options, color)
    NoSizePage.new(@@driver)
  end

  def choose_size(size)
    dropdown = @@driver.find_element(:id, "dimensionValueIds")
    options = dropdown.find_elements(:tag_name, "option")
    select_option(options, size)
    NoSizePage.new(@@driver)
  end

  def fill_in_form(user)
    input_email(user.email)
    choose_color(user.color)
    choose_size(user.size)
  end

  def select_option(options, selection)
    options.each do |option|
      if selection == option.text
        option.click
      end
    end
  end

  def submit_form
    @@driver.find_element(:name, "saveStockId").click
    NoSizeConfirmationPage.new(@@driver)
  end
end