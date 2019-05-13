require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Course App"
  end

  test "should get locations" do
    get static_pages_locations_url
    assert_response :success
    assert_select "title", "Locations | Ruby on Rails Tutorial Course App"
  end
  
  test "should get category" do
    get static_pages_category_url
    assert_select "title", "Category | Ruby on Rails Tutorial Course App"
  end
  
  test "should get media" do
    get static_pages_media_url
    assert_response :success
    assert_select "title", "Media | Ruby on Rails Tutorial Course App"
    
  end
end
