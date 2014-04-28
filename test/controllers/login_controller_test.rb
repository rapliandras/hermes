require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get auth" do
    get :auth
    assert_response :success
  end

end
