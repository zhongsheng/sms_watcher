require "application_system_test_case"

class EntryLogsTest < ApplicationSystemTestCase
  setup do
    @entry_log = entry_logs(:one)
  end

  test "visiting the index" do
    visit entry_logs_url
    assert_selector "h1", text: "Entry Logs"
  end

  test "creating a Entry log" do
    visit entry_logs_url
    click_on "New Entry Log"

    fill_in "Detail", with: @entry_log.detail
    fill_in "Phone", with: @entry_log.phone
    click_on "Create Entry log"

    assert_text "Entry log was successfully created"
    click_on "Back"
  end

  test "updating a Entry log" do
    visit entry_logs_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @entry_log.detail
    fill_in "Phone", with: @entry_log.phone
    click_on "Update Entry log"

    assert_text "Entry log was successfully updated"
    click_on "Back"
  end

  test "destroying a Entry log" do
    visit entry_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entry log was successfully destroyed"
  end
end
