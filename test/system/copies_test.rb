require "application_system_test_case"

class CopiesTest < ApplicationSystemTestCase
  setup do
    @copy = copies(:one)
  end

  test "visiting the index" do
    visit copies_url
    assert_selector "h1", text: "Copies"
  end

  test "creating a Copie" do
    visit copies_url
    click_on "New Copie"

    fill_in "Code", with: @copy.code
    fill_in "Place", with: @copy.place
    click_on "Create Copie"

    assert_text "Copie was successfully created"
    click_on "Back"
  end

  test "updating a Copie" do
    visit copies_url
    click_on "Edit", match: :first

    fill_in "Code", with: @copy.code
    fill_in "Place", with: @copy.place
    click_on "Update Copie"

    assert_text "Copie was successfully updated"
    click_on "Back"
  end

  test "destroying a Copie" do
    visit copies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Copie was successfully destroyed"
  end
end
