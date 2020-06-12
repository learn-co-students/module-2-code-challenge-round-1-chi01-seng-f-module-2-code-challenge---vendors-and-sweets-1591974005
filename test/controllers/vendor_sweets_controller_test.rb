require 'test_helper'

class VendorSweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get vendor_sweets_create_url
    assert_response :success
  end

end
