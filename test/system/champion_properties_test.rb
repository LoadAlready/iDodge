require "application_system_test_case"

class ChampionPropertiesTest < ApplicationSystemTestCase
  setup do
    @champion_property = champion_properties(:one)
  end

  test "visiting the index" do
    visit champion_properties_url
    assert_selector "h1", text: "Champion Properties"
  end

  test "creating a Champion property" do
    visit champion_properties_url
    click_on "New Champion Property"

    click_on "Create Champion property"

    assert_text "Champion property was successfully created"
    click_on "Back"
  end

  test "updating a Champion property" do
    visit champion_properties_url
    click_on "Edit", match: :first

    click_on "Update Champion property"

    assert_text "Champion property was successfully updated"
    click_on "Back"
  end

  test "destroying a Champion property" do
    visit champion_properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Champion property was successfully destroyed"
  end
end
