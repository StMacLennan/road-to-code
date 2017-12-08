require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
   test "visiting the index" do
     visit root_url

     assert_selector "a", text: "Start (Register)"
     assert_selector "a", text: "Continue (Log in)"
   end
end
