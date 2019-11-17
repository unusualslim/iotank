require 'test_helper'

class ReportTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get report_types_index_url
    assert_response :success
  end

end
