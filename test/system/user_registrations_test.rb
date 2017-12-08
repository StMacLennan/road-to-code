require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase

  # Test that user can clisk a register link from root
  test "user can access registration link" do
    visit '/'
    click_link "Start (Register)"
    assert_text "Register"
  end

  # Test successful user registration
  test "user registers with correct details" do
    visit new_user_registration_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "1234567@"
    click_button "Sign up"
    assert_text "Welcome! You have signed up successfully"
  end

  # Test unsuccessful registration bad password
  test "user registers with incorrect password" do
    visit new_user_registration_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "123"
    click_button "Sign up"
    assert_text "1 error prohibited this user from being saved"
    assert_text "Password is too short"
  end

  # Test unsuccessful registration with no email
  test "user registers with blank email" do
    visit new_user_registration_path
    fill_in "Email", with: ""
    fill_in "Password", with: "1234567@"
    click_button "Sign up"
    assert_text "1 error prohibited this user from being saved"
    assert_text "Email can't be blank"
  end
end
