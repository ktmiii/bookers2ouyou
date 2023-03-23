require "test_helper"

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get followings" do
    get relationships_followings_url
    assert_response :success
  end

  test "should get followes" do
    get relationships_followes_url
    assert_response :success
  end
end
