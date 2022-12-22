require 'test_helper'

class ClothingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get clothings_edit_url
    assert_response :success
  end

  test "should get show" do
    get clothings_show_url
    assert_response :success
  end

  test "should get new" do
    get clothings_new_url
    assert_response :success
  end

  test "should get create" do
    get clothings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get clothings_destroy_url
    assert_response :success
  end

end
