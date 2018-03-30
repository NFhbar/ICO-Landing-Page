require 'test_helper'

class LandingControllerTest < ActionDispatch::IntegrationTest

  test "should get land" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
