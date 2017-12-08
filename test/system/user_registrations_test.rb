require "application_system_test_case"

class UserRegistrationsTest < ApplicationSystemTestCase

  test "user can access registration link" do
    visit '/'
    click_link "Start (Register)"
    assert_text "Register"
  end

  test "user registers with correct details" do
    visit new_user_registration_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "1234567@"
    click_button "Sign up"
    assert_text "Welcome! You have signed up successfully"
  end

  test "user registers with incorrect password" do
    visit new_user_registration_path
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "123"
    click_button "Sign up"
    assert_text "1 error prohibited this user from being saved"
    assert_text "Password is too short"
  end

  test "user registers with blank email" do
    visit new_user_registration_path
    fill_in "Email", with: ""
    fill_in "Password", with: "1234567@"
    click_button "Sign up"
    assert_text "1 error prohibited this user from being saved"
    assert_text "Email can't be blank"
  end
end
