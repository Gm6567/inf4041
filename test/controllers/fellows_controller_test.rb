require 'test_helper'

class FellowsControllerTest < ActionController::TestCase
  test "should get findex" do
    get :findex
    assert_response :success
  end

end
