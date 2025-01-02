require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get load_posts" do
    get index_load_posts_url
    assert_response :success
  end

  test "should get index" do
    get index_index_url
    assert_response :success
  end
end
