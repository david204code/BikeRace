require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get root" do
    get '/'
    assert_response :success
  end

  test "should get photo" do 
    get photo_path
    assert_response :success
  end

  test "should get location" do
    get location_path
    assert_response :success
  end

end
