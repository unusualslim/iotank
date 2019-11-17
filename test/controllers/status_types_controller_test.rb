require 'test_helper'

class StatusTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get status_types_index_url
    assert_response :success
  end

end
