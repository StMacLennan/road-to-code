require "application_system_test_case"

class UserSignInTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @password = 'password'
  end

  test "user can access sign in link" do
    visit '/'
    click_link "Continue (Log in)"
    assert_text "Log in"
  end

  test "user signs in with correct details" do
    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: @password
    click_button "Log in"
    assert_text "Signed in successfully"
  end

  test "user logs in with incorrect password" do
    visit new_user_session_path
    fill_in "Email", with: @user.email
    fill_in "Password", with: "123"
    click_button "Log in"
    assert_text "Invalid Email or password"
  end

  test "user registers with incorrect email" do
    visit new_user_session_path
    fill_in "Email", with: "thisuserdoesntexist@example.com"
    fill_in "Password", with: @password
    click_button "Log in"
    assert_text "Invalid Email or password"
  end

end
