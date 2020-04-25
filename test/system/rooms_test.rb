require "application_system_test_case"

class RoomsTest < ApplicationSystemTestCase
  setup do
    @room = rooms(:one)
  end

  test "visiting the index" do
    visit rooms_url
    assert_selector "h1", text: "Rooms"
  end

  test "creating a Room" do
    visit rooms_url
    click_on "New Room"

    fill_in "Description", with: @room.description
    fill_in "Image url", with: @room.image_url
    fill_in "Owner name", with: @room.owner_name
    fill_in "Price", with: @room.price
    fill_in "Rating", with: @room.rating
    fill_in "Title", with: @room.title
    click_on "Create Room"

    assert_text "Room was successfully created"
    click_on "Back"
  end

  test "updating a Room" do
    visit rooms_url
    click_on "Edit", match: :first

    fill_in "Description", with: @room.description
    fill_in "Image url", with: @room.image_url
    fill_in "Owner name", with: @room.owner_name
    fill_in "Price", with: @room.price
    fill_in "Rating", with: @room.rating
    fill_in "Title", with: @room.title
    click_on "Update Room"

    assert_text "Room was successfully updated"
    click_on "Back"
  end

  test "destroying a Room" do
    visit rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room was successfully destroyed"
  end
end
