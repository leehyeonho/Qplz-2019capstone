require 'test_helper'

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get member_signup_url
    assert_response :success
  end

end
