require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get shows_results_url
    assert_response :success
  end

end