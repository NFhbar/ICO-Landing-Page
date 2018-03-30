require 'test_helper'

class PolicyControllerTest < ActionDispatch::IntegrationTest

  test "should get privacy" do
    get policy_privacy_url
    assert_response :success
    assert_select "title", "Privacy Statement | #{@base_title}"
  end

  test "should get promise" do
    get policy_promise_url
    assert_response :success
    assert_select "title", "Promise | #{@base_title}"
  end

  test "should get acceptable" do
    get policy_aup_url
    assert_response :success
    assert_select "title", "Acceptable use Policy | #{@base_title}"
  end

end
