require 'test_helper'

class ChampionPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @champion_property = champion_properties(:one)
  end

  test "should get index" do
    get champion_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_champion_property_url
    assert_response :success
  end

  test "should create champion_property" do
    assert_difference('ChampionProperty.count') do
      post champion_properties_url, params: { champion_property: {  } }
    end

    assert_redirected_to champion_property_url(ChampionProperty.last)
  end

  test "should show champion_property" do
    get champion_property_url(@champion_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_champion_property_url(@champion_property)
    assert_response :success
  end

  test "should update champion_property" do
    patch champion_property_url(@champion_property), params: { champion_property: {  } }
    assert_redirected_to champion_property_url(@champion_property)
  end

  test "should destroy champion_property" do
    assert_difference('ChampionProperty.count', -1) do
      delete champion_property_url(@champion_property)
    end

    assert_redirected_to champion_properties_url
  end
end
