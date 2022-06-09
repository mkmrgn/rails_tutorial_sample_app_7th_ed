require "application_system_test_case"

class SignupTest < ApplicationSystemTestCase
   test "successfully signing up as a new user" do
     annotate "Visiting root path"
     visit root_url
     click_on "Sign up now!"
     annotate "Filling in the signup form"
     fill_in :user_name, with: "John Smith"
     fill_in :user_email, with: "john@example.com"
     fill_in :user_password, with: "password"
     fill_in :user_password_confirmation, with: "password"
     annotate "Creating the account"
     click_on "Create my account"
   end

   def annotate(message)
    Buildkite::TestCollector.annotate(message)
   end
end
