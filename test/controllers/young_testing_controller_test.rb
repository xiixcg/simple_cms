require 'test_helper'

class YoungTestingControllerTest < ActionDispatch::IntegrationTest
  test "should get base" do
    get young_testing_base_url
    assert_response :success
  end

end
