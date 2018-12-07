require 'selenium-webdriver'

describe 'Testing the ecommerce site' do
  before(:all) do
    @ecommerce_service = EcommerceSelenium.new
    @ecommerce_service.visit_ecommerce_site
    @generate = Generator.new
    @firstname = @generate.firstname
    @lastname = @generate.lastname
    @email = 'test@yahoo.co.uk'
    @password = 'test123'
    @company_name = @generate.get_company_name
    @address = @generate.get_street_address
    @address2 = @generate.get_secondary_address
    @city = @generate.get_city
    @postcode = @generate.get_zip_code
    @info = 'Lorem ipsum dolor sit amet.'
    @PhoneNumber = @generate.get_user_phone_number
  end

  it "should land on the ecommerce homepage" do
    expect(@ecommerce_service.get_current_url).to eq 'http://automationpractice.com/index.php'
    sleep 2
  end

  it "should navigate to the sign in page when clicked" do
    @ecommerce_service.sign_into_ecommerce_website
    expect(@ecommerce_service.get_current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account'
    sleep 2
  end

  it "should accept the email" do
    @ecommerce_service.input_email_field(@email)
    expect(@ecommerce_service.get_email_value).to eq @email
    sleep 3
  end

  it "should navigate to the registration page" do
    @ecommerce_service.submit_email_field
    sleep 3
    expect(@ecommerce_service.get_current_url).to eq 'http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation'
    sleep 2
  end

  it "should select title mr/mrs" do
    @ecommerce_service.select_title_field
    expect(@ecommerce_service.is_title_selected).to be true
    sleep 2
  end

  it "should accept the first name given" do
    @ecommerce_service.input_firstname_field(@firstname)
    expect(@ecommerce_service.get_first_name_field_value).to eq @firstname
    sleep 3
  end

  it "should accept the last name given" do
    @ecommerce_service.input_lastname_field(@lastname)
    expect(@ecommerce_service.get_last_name_field_value).to eq @lastname
    sleep 3
  end

  it "should be the email you signed up with" do
    expect(@ecommerce_service.get_value_of_email).to eq @email
    sleep 3
  end

  it "should accept the password" do
    @ecommerce_service.input_password(@password)
    expect(@ecommerce_service.get_value_of_password).to eq @password
    sleep 3
  end

  it "should select a day for the birthday field" do
    @ecommerce_service.select_day_birthday
    expect(@ecommerce_service.is_the_day_of_birthday_selected).to be true
    sleep 3
  end

  it "should select a month for the birthday field" do
    @ecommerce_service.select_month_birthday
    expect(@ecommerce_service.is_the_month_of_birthday_selected).to be true
  end

  it "should select a year for the birthday field" do
    @ecommerce_service.select_year_birthday
    expect(@ecommerce_service.is_the_year_of_birthday_selected).to be true
  end

  it "should have the newsletter checkbox selected" do
    @ecommerce_service.select_newsletter
    expect(@ecommerce_service.is_newsletter_selected).to be true
  end

  it "should have the special offers checkbox selected" do
    @ecommerce_service.special_offers
    expect(@ecommerce_service.is_special_offers_selected).to be true
  end

  it "should have the same name in the first name field at the start" do
    expect(@ecommerce_service.get_value_of_first_name).to eq @firstname
  end

  it "should have the same name in the last name field at the start" do
    expect(@ecommerce_service.get_value_of_last_name).to eq @lastname
  end

  it "should accept the company name" do
    @ecommerce_service.input_company_field(@company_name)
    expect(@ecommerce_service.get_value_of_company).to eq @company_name
    sleep 5
  end

  it "should accept the address" do
    @ecommerce_service.input_address(@address)
    expect(@ecommerce_service.get_value_of_address).to eq (@address)
    sleep 5
  end

  it "should accept the address line2 info" do
    @ecommerce_service.input_address_line2(@address2)
    expect(@ecommerce_service.get_value_of_address_line2).to eq @address2
  end

  it "should accept city " do
    @ecommerce_service.input_city(@city)
    expect(@ecommerce_service.get_value_of_city).to eq @city
    sleep 3
  end


  it "should select a state" do
    @ecommerce_service.select_state
    expect(@ecommerce_service.is_state_selected).to be true
    sleep 3
  end

  it "should accept a zipcode" do
    @ecommerce_service.input_postcode(@postcode)
    expect(@ecommerce_service.get_value_of_postcode).to eq @postcode
    sleep 2
  end

  it "should select a country" do
    @ecommerce_service.select_country
    expect(@ecommerce_service.is_country_selected).to be true
    sleep 2
  end

  it "should accept additional information" do
    @ecommerce_service.input_additional_info(@info)
    expect(@ecommerce_service.get_value_of_additional_info).to eq @info
  end

  it "should accept home phone number" do
    @ecommerce_service.input_home_phone(@PhoneNumber)
    expect(@ecommerce_service.get_value_of_home_phone).to eq @PhoneNumber
  end

  it "should accept mobile phone number" do
    @ecommerce_service.input_mobile_phone(@PhoneNumber)
    expect(@ecommerce_service.get_value_of_mobile_phone).to eq @PhoneNumber
  end

  it "should accept an address alias" do
    @ecommerce_service.get_and_delete_initial_value_of_address_field
    @ecommerce_service.input_address_alias(@address2)
    expect(@ecommerce_service.get_value_of_address_alias).to eq @address2
  end

  it "should register the account succesfully" do
    @ecommerce_service.click_register_button
    sleep 3
    expect(@ecommerce_service.current_url).to eq 'http://automationpractice.com/index.php?controller=my-account'
  end

end
