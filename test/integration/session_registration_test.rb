require 'test_helper'

class SessionRegistrationTest < ActionDispatch::IntegrationTest
  def setup
    @user1 = users(:user1)
  end

  test "must not signUp with invalid information" do
    get "/sign_up"
    assert_no_difference 'User.count' do
      post "/sign_up", user: { username:  "",                # username must not be blank
                               email: "user@invalid",        # invalid email
                               password:              "foo", # password is too short
                               password_confirmation: "bar"  # password not match
                              }
    end
    assert response.body.include? "3 errors prohibited this user from being saved:"
    assert response.body.include? "Email is invalid"
    assert response.body.include? "Password is too short (minimum is 8 characters)"
    assert_template 'clerk_first/user/registrations/new'
  end

  test "must signUp with valid information" do
    get "/sign_up"
    assert_difference 'User.count', 1 do
      post "/sign_up", user: { username: "XXX", email: "user@gmail.com", password: "12345678", password_confirmation: "12345678" }
    end
    assert_response 302 #redirected
  end

  test "registration page form test" do
    #get "/"
    #assert_response :success
  end

end
