require "application_system_test_case"

class ShuttlesTest < ApplicationSystemTestCase
  setup do
    @shuttle = shuttles(:one)
  end

  test "visiting the index" do
    visit shuttles_url
    assert_selector "h1", text: "Shuttles"
  end

  test "should create shuttle" do
    visit shuttles_url
    click_on "New shuttle"

    fill_in "Description", with: @shuttle.description
    fill_in "Max capacity", with: @shuttle.max_capacity
    fill_in "Service", with: @shuttle.service_id
    fill_in "Setoff time", with: @shuttle.setoff_time
    click_on "Create Shuttle"

    assert_text "Shuttle was successfully created"
    click_on "Back"
  end

  test "should update Shuttle" do
    visit shuttle_url(@shuttle)
    click_on "Edit this shuttle", match: :first

    fill_in "Description", with: @shuttle.description
    fill_in "Max capacity", with: @shuttle.max_capacity
    fill_in "Service", with: @shuttle.service_id
    fill_in "Setoff time", with: @shuttle.setoff_time
    click_on "Update Shuttle"

    assert_text "Shuttle was successfully updated"
    click_on "Back"
  end

  test "should destroy Shuttle" do
    visit shuttle_url(@shuttle)
    click_on "Destroy this shuttle", match: :first

    assert_text "Shuttle was successfully destroyed"
  end
end
