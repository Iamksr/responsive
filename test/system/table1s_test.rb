require "application_system_test_case"

class Table1sTest < ApplicationSystemTestCase
  setup do
    @table1 = table1s(:one)
  end

  test "visiting the index" do
    visit table1s_url
    assert_selector "h1", text: "Table1s"
  end

  test "creating a Table1" do
    visit table1s_url
    click_on "New Table1"

    fill_in "Address", with: @table1.address
    fill_in "Date", with: @table1.date
    fill_in "Name", with: @table1.name
    fill_in "Postcode", with: @table1.postcode
    click_on "Create Table1"

    assert_text "Table1 was successfully created"
    click_on "Back"
  end

  test "updating a Table1" do
    visit table1s_url
    click_on "Edit", match: :first

    fill_in "Address", with: @table1.address
    fill_in "Date", with: @table1.date
    fill_in "Name", with: @table1.name
    fill_in "Postcode", with: @table1.postcode
    click_on "Update Table1"

    assert_text "Table1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Table1" do
    visit table1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Table1 was successfully destroyed"
  end
end
