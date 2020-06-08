require "application_system_test_case"

class ContersTest < ApplicationSystemTestCase
  setup do
    @conter = conters(:one)
  end

  test "visiting the index" do
    visit conters_url
    assert_selector "h1", text: "Conters"
  end

  test "creating a Conter" do
    visit conters_url
    click_on "New Conter"

    fill_in "Count", with: @conter.count
    click_on "Create Conter"

    assert_text "Conter was successfully created"
    click_on "Back"
  end

  test "updating a Conter" do
    visit conters_url
    click_on "Edit", match: :first

    fill_in "Count", with: @conter.count
    click_on "Update Conter"

    assert_text "Conter was successfully updated"
    click_on "Back"
  end

  test "destroying a Conter" do
    visit conters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conter was successfully destroyed"
  end
end
