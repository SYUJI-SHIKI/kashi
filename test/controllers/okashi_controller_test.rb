require "test_helper"

class OkashiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get okashi_index_url
    assert_response :success
  end
end
