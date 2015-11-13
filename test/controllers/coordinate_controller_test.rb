require 'test_helper'

class CoordinateControllerTest < ActionController::TestCase
  test "should get insert" do
    get :insert
    assert_response :success
  end

  test "should get polygons" do
    get :polygons
    assert_response :success
  end

end
