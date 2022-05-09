require "test_helper"

class BranchsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get branchs_index_url
    assert_response :success
  end
end
