require "test_helper"

class V1::SmsControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get v1_sms_callback_url
    assert_response :success
  end
end
