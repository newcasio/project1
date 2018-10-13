require 'test_helper'

class ContinentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get continents_index_url
    assert_response :success
  end

  test "should get show" do
    get continents_show_url
    assert_response :success
  end

  test "should get edit" do
    get continents_edit_url
    assert_response :success
  end

  test "should get update" do
    get continents_update_url
    assert_response :success
  end

end
