require 'test_helper'

class BrandsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get brands_create_url
    assert_response :success
  end

  test "should get show" do
    get brands_show_url
    assert_response :success
  end

  test "should get update" do
    get brands_update_url
    assert_response :success
  end

  test "should get delete" do
    get brands_delete_url
    assert_response :success
  end

end
