require 'test_helper'

class VistaTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vista_test_index_url
    assert_response :success
  end

end
