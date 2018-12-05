require 'selenium-webdriver'

class YourLogoFormSelenium

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @your_logo_url = 'http://automationpractice.com/index.php'
    @sign_in_link = 'Sign in'
    @create_user_email = 'email_create'
    @create_account = 'SubmitCreate'
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

  def create_account_field
    @chrome_driver.find_element(:name, @create_account).click
  end

  # def select_title_field
  #   @chrome_driver.find_element(:id, 'id_gender2').click
  # end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, 'customer_firstname').send_keys(text)
  end

end

test = YourLogoFormSelenium.new
test.visit_your_logo_form
test.sign_into_your_logo_website
test.input_email_field('hadedayo@spartaglobal.com')
test.create_account_field
test.input_firstname_field('Hassanat')
sleep 5
