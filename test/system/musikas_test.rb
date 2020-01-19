require "application_system_test_case"

class MusikasTest < ApplicationSystemTestCase
  setup do
    @musika = musikas(:one)
  end

  test "visiting the index" do
    visit musikas_url
    assert_selector "h1", text: "Musikas"
  end

  test "creating a Musika" do
    visit musikas_url
    click_on "New Musika"

    fill_in "Singer", with: @musika.singer
    fill_in "Title", with: @musika.title
    click_on "Create Musika"

    assert_text "Musika was successfully created"
    click_on "Back"
  end

  test "updating a Musika" do
    visit musikas_url
    click_on "Edit", match: :first

    fill_in "Singer", with: @musika.singer
    fill_in "Title", with: @musika.title
    click_on "Update Musika"

    assert_text "Musika was successfully updated"
    click_on "Back"
  end

  test "destroying a Musika" do
    visit musikas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Musika was successfully destroyed"
  end
end
