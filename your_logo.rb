require 'selenium-webdriver'

class YourLogoFormSelenium

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @your_logo_url = 'http://automationpractice.com/index.php'
    @sign_in_link = 'Sign in'
    @create_user_email = 'email_create'
    @create_account = 'SubmitCreate'
    @title_mrs = 'id_gender2'
  end

  def visit_your_logo_form
    @chrome_driver.get(@your_logo_url)
  end

  def sign_into_your_logo_website
    @chrome_driver.find_element(:link_text, @sign_in_link).click
  end

  def input_email_field(text)
    @chrome_driver.find_element(:name, @create_user_email).send_keys(text)
  end

  def submit_email_field
    @chrome_driver.find_element(:name, @create_account).click
  end

  def select_title_field
    @chrome_driver.find_element(:id, @title_mrs).click
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, 'customer_firstname').send_keys(text)
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, 'customer_lastname').send_keys(text)
  end

  def input_password(text)
    @chrome_driver.find_element(:name, 'passwd').send_keys(text)
  end

  def select_day_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'days')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '22')
  end

  def select_month_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'months')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '4')
  end

  def select_year_birthday
    dropDownMenu = @chrome_driver.find_element(:id, 'years')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '2005')
  end

  def select_newsletter
    @chrome_driver.find_element(:name, 'newsletter').click
  end

  def special_offers
    @chrome_driver.find_element(:name, 'optin').click
  end

  def input_company_field(text)
    @chrome_driver.find_element(:name, 'company').send_keys(text)
  end

  def input_address(text)
    @chrome_driver.find_element(:name, 'address1').send_keys(text)
  end

  def input_address_line2(text)
    @chrome_driver.find_element(:name, 'address2').send_keys(text)
  end

  def input_city(text)
    @chrome_driver.find_element(:name, 'city').send_keys(text)
  end

  def select_state
    dropDownMenu = @chrome_driver.find_element(:id, 'id_state')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '20')
  end

  def input_postcode(text)
    @chrome_driver.find_element(:id, 'postcode').send_keys(text)
  end

  def select_country
    dropDownMenu = @chrome_driver.find_element(:id, 'id_country')
    option = Selenium::WebDriver::Support::Select.new(dropDownMenu)
    option.select_by(:value, '21')
  end

  def input_additional_info(text)
    @chrome_driver.find_element(:id, 'other').send_keys(text)
  end

  def input_home_phone(text)
    @chrome_driver.find_element(:id, 'phone').send_keys(text)
  end

  def input_mobile_phone(text)
    @chrome_driver.find_element(:id, 'phone_mobile').send_keys(text)
  end

  def get_and_delete_initial_value_of_address_field
    @chrome_driver.find_element(:id, 'alias').clear
  end

  def input_address_alias(text)
    @chrome_driver.find_element(:id, 'alias').send_keys(text)
  end

  def register
    @chrome_driver.find_element(:name, 'submitAccount').click
  end

end

test = YourLogoFormSelenium.new
test.visit_your_logo_form
test.sign_into_your_logo_website
test.input_email_field('hadedayo@spartaglobal.com')
sleep 2
test.submit_email_field
sleep 5
test.select_title_field
test.input_firstname_field('Hassanat')
sleep 3
test.input_lastname_field('Ade')
sleep 3
test.input_password('123456')
sleep 3
test.select_day_birthday
test.select_month_birthday
test.select_year_birthday
test.select_newsletter
test.special_offers
test.input_company_field('Sparta Global')
test.input_address("63 Bing Road")
sleep 3
test.input_address_line2("Richmond")
test.input_city('London')
sleep 3
test.select_state
test.input_postcode('10435')
test.select_country
sleep 3
test.input_additional_info('Other')
test.input_home_phone('07984494321')
sleep 3
test.input_mobile_phone('07984494321')
test.get_and_delete_initial_value_of_address_field
sleep 3
test.input_address_alias('30th Fifth Avenue')
test.register
sleep 8
