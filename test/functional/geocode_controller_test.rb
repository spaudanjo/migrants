require 'test_helper'

class GeocodeControllerTest < ActionController::TestCase
  test "should get geocode" do
    get :geocode
    assert_response :success
  end

  test "should get reverse_geocode" do
    get :reverse_geocode
    assert_response :success
  end

end
