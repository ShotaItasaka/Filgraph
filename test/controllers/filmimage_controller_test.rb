require "test_helper"

class FilmimageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get filmimage_new_url
    assert_response :success
  end

  test "should get index" do
    get filmimage_index_url
    assert_response :success
  end

  test "should get show" do
    get filmimage_show_url
    assert_response :success
  end
end
