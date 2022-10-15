require "test_helper"

class Authentication::SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:gaby)
    end
    test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should login an user by username" do
    post sessions_url, params: { login: @user.username, password: 'testme'} 
    assert_redirected_to vehicles_url
  end
end