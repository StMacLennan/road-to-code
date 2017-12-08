require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase
  test "user registers with correct details" do
    visit '/'
    click_link "Start (Register)"
    assert_text "Register"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "1234567@"
    click_button "Sign up"
    assert_text "Welcome! You have signed up successfully"
  end
end
