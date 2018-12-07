require 'selenium-webdriver'

class EcommerceSelenium

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @ecommerce_url = 'http://automationpractice.com/index.php'
    @sign_in_link = 'Sign in'
    @create_user_email = 'email_create'
    @create_account = 'SubmitCreate'
    @title_mrs = 'id_gender2'
  end

  def visit_ecommerce_site
    @chrome_driver.get(@ecommerce_url)
  end

  def get_current_url
      @chrome_driver.current_url
  end

  def sign_into_ecommerce_website
    @chrome_driver.find_element(:link_text, @sign_in_link).click
  end

  def input_email_field(text)
    @chrome_driver.find_element(:name, @create_user_email).send_keys(text)
  end

  def get_email_value
    @chrome_driver.find_element(:name, @create_user_email).attribute('value')
  end

  def submit_email_field
    @chrome_driver.find_element(:name, @create_account).click
  end

  def select_title_field
    @chrome_driver.find_element(:id, @title_mrs).click
  end

  def is_title_selected
    @chrome_driver.find_element(:id, @title_mrs).selected?
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, 'customer_firstname').send_keys(text)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:name, 'customer_firstname').attribute('value')
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, 'customer_lastname').send_keys(text)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:name, 'customer_lastname').attribute('value')
  end

  def get_value_of_email
    @chrome_driver.find_element(:name, 'email').attribute('value')
  end

  def input_password(text)
    @chrome_driver.find_element(:name, 'passwd').send_keys(text)
  end

  def get_value_of_password
    @chrome_driver.find_element(:name, 'passwd').attribute('value')
  end

  def select_day_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'days')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '22')
  end

  def is_the_day_of_birthday_selected
    @chrome_driver.find_element(:id, 'days').text.include?('22')
  end

  def select_month_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'months')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '4')
  end

  def is_the_month_of_birthday_selected
    @chrome_driver.find_element(:id, 'months').text.include?('4')
  end

  def select_year_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'years')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '2005')
  end

  def is_the_year_of_birthday_selected
    @chrome_driver.find_element(:id, 'years').text.include?('2005')
  end

  def select_newsletter
    @chrome_driver.find_element(:name, 'newsletter').click
  end

  def is_newsletter_selected
    @chrome_driver.find_element(:name, 'newsletter').selected?
  end

  def special_offers
    @chrome_driver.find_element(:name, 'optin').click
  end

  def is_special_offers_selected
    @chrome_driver.find_element(:name, 'optin').selected?
  end

  def get_value_of_first_name
    @chrome_driver.find_element(:id, 'firstname').attribute('value')
  end

  def get_value_of_last_name
    @chrome_driver.find_element(:id, 'lastname').attribute('value')
  end

  def input_company_field(text)
    @chrome_driver.find_element(:name, 'company').send_keys(text)
  end

  def get_value_of_company
    @chrome_driver.find_element(:name, 'company').attribute('value')
  end

  def input_address(text)
    @chrome_driver.find_element(:name, 'address1').send_keys(text)
  end

  def get_value_of_address
    @chrome_driver.find_element(:name, 'address1').attribute('value')
  end

  def input_address_line2(text)
    @chrome_driver.find_element(:name, 'address2').send_keys(text)
  end

  def get_value_of_address_line2
    @chrome_driver.find_element(:name, 'address2').attribute('value')
  end

  def input_city(text)
    @chrome_driver.find_element(:name, 'city').send_keys(text)
  end

  def get_value_of_city
    @chrome_driver.find_element(:name, 'city').attribute('value')
  end

  def select_state
    dropDownMenu = @chrome_driver.find_element(:id, 'id_state')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '20')
  end

  def is_state_selected
    @chrome_driver.find_element(:id, 'id_state').text.include?('20')
  end

  def input_postcode(text)
    @chrome_driver.find_element(:id, 'postcode').send_keys(text)
  end

  def get_value_of_postcode
    @chrome_driver.find_element(:id, 'postcode').attribute('value')
  end

  def select_country
    dropDownMenu = @chrome_driver.find_element(:id, 'id_country')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '21')
  end

  def is_country_selected
    @chrome_driver.find_element(:id, 'id_country').text.include?('21')
  end

  def input_additional_info(text)
    @chrome_driver.find_element(:id, 'other').send_keys(text)
  end

  def get_value_of_additional_info
    @chrome_driver.find_element(:id, 'other').attribute('value')
  end

  def input_home_phone(text)
    @chrome_driver.find_element(:id, 'phone').send_keys(text)
  end

  def get_value_of_home_phone
    @chrome_driver.find_element(:id, 'phone').attribute('value')
  end

  def input_mobile_phone(text)
    @chrome_driver.find_element(:id, 'phone_mobile').send_keys(text)
  end

  def get_value_of_mobile_phone
    @chrome_driver.find_element(:id, 'phone_mobile').attribute('value')
  end

  def get_and_delete_initial_value_of_address_field
    @chrome_driver.find_element(:id, 'alias').clear
  end

  def input_address_alias(text)
    @chrome_driver.find_element(:id, 'alias').send_keys(text)
  end

  def get_value_of_address_alias
    @chrome_driver.find_element(:id, 'alias').attribute('value')
  end

  def click_register_button
    @chrome_driver.find_element(:name, 'submitAccount').click
  end

end
