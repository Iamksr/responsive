require "application_system_test_case"

class RoyalpassesTest < ApplicationSystemTestCase
  setup do
    @royalpass = royalpasses(:one)
  end

  test "visiting the index" do
    visit royalpasses_url
    assert_selector "h1", text: "Royalpasses"
  end

  test "creating a Royalpass" do
    visit royalpasses_url
    click_on "New Royalpass"

    fill_in "Name", with: @royalpass.name
    fill_in "Pts", with: @royalpass.pts
    fill_in "Rnk", with: @royalpass.rnk
    fill_in "Rp", with: @royalpass.rp
    click_on "Create Royalpass"

    assert_text "Royalpass was successfully created"
    click_on "Back"
  end

  test "updating a Royalpass" do
    visit royalpasses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @royalpass.name
    fill_in "Pts", with: @royalpass.pts
    fill_in "Rnk", with: @royalpass.rnk
    fill_in "Rp", with: @royalpass.rp
    click_on "Update Royalpass"

    assert_text "Royalpass was successfully updated"
    click_on "Back"
  end

  test "destroying a Royalpass" do
    visit royalpasses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Royalpass was successfully destroyed"
  end
end
