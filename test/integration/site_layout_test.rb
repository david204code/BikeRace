require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "header links" do
    get root_path
    assert_template 'layouts/_header'
    assert_select "a[href=?]", home_path, count:2
    assert_select "a[href=?]", photo_path
    assert_select "a[href=?]", location_path
    assert_select "a[href=?]", riders_path
    assert_select "a[href=?]", contests_path
  end

end
