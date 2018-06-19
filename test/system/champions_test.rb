require "application_system_test_case"

class ChampionsTest < ApplicationSystemTestCase
  setup do
    @champion = champions(:one)
  end

  test "visiting the index" do
    visit champions_url
    assert_selector "h1", text: "Champions"
  end

  test "creating a Champion" do
    visit champions_url
    click_on "New Champion"

    click_on "Create Champion"

    assert_text "Champion was successfully created"
    click_on "Back"
  end

  test "updating a Champion" do
    visit champions_url
    click_on "Edit", match: :first

    click_on "Update Champion"

    assert_text "Champion was successfully updated"
    click_on "Back"
  end

  test "destroying a Champion" do
    visit champions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Champion was successfully destroyed"
  end
end
