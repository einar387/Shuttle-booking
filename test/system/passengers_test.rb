require "application_system_test_case"

class PassengersTest < ApplicationSystemTestCase
  setup do
    @passenger = passengers(:one)
  end

  test "visiting the index" do
    visit passengers_url
    assert_selector "h1", text: "Passengers"
  end

  test "should create passenger" do
    visit passengers_url
    click_on "New passenger"

    fill_in "Contact number", with: @passenger.contact_number
    fill_in "Email", with: @passenger.email
    fill_in "First name", with: @passenger.first_name
    fill_in "Last name", with: @passenger.last_name
    fill_in "Number of seat", with: @passenger.number_of_seat
    fill_in "Service", with: @passenger.service_id
    click_on "Create Passenger"

    assert_text "Passenger was successfully created"
    click_on "Back"
  end

  test "should update Passenger" do
    visit passenger_url(@passenger)
    click_on "Edit this passenger", match: :first

    fill_in "Contact number", with: @passenger.contact_number
    fill_in "Email", with: @passenger.email
    fill_in "First name", with: @passenger.first_name
    fill_in "Last name", with: @passenger.last_name
    fill_in "Number of seat", with: @passenger.number_of_seat
    fill_in "Service", with: @passenger.service_id
    click_on "Update Passenger"

    assert_text "Passenger was successfully updated"
    click_on "Back"
  end

  test "should destroy Passenger" do
    visit passenger_url(@passenger)
    click_on "Destroy this passenger", match: :first

    assert_text "Passenger was successfully destroyed"
  end
end
