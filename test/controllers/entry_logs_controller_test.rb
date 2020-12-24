require "test_helper"

class EntryLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_log = entry_logs(:one)
  end

  test "should get index" do
    get entry_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_log_url
    assert_response :success
  end

  test "should create entry_log" do
    assert_difference('EntryLog.count') do
      post entry_logs_url, params: { entry_log: { detail: @entry_log.detail, phone: @entry_log.phone } }
    end

    assert_redirected_to entry_log_url(EntryLog.last)
  end

  test "should show entry_log" do
    get entry_log_url(@entry_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_log_url(@entry_log)
    assert_response :success
  end

  test "should update entry_log" do
    patch entry_log_url(@entry_log), params: { entry_log: { detail: @entry_log.detail, phone: @entry_log.phone } }
    assert_redirected_to entry_log_url(@entry_log)
  end

  test "should destroy entry_log" do
    assert_difference('EntryLog.count', -1) do
      delete entry_log_url(@entry_log)
    end

    assert_redirected_to entry_logs_url
  end
end
