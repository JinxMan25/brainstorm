require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get force" do
    get :force
    assert_response :success
  end

end
