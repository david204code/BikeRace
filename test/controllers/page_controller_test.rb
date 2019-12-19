require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @full_title = "Boulder Bike Tour"
  end
  
  test "should get root" do
    get '/'
    assert_response :success
    assert_select "title", "Home - #{@full_title}"
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home - #{@full_title}"
  end

  test "should get photo" do 
    get photo_path
    assert_response :success
    assert_select "title", "Photo - #{@full_title}"
  end

  test "should get location" do
    get location_path
    assert_response :success
    assert_select "title", "Location - #{@full_title}"
  end

end
