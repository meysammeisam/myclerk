require 'test_helper'

class SessionRegistrationTest < ActionDispatch::IntegrationTest
  def setup
    @user1 = users(:user1)
  end

  test "test" do
    assert true
  end

  test "registration page form test" do
    get "/"
    assert_response :success
  end

end
