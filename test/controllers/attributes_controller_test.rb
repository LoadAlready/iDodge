require 'test_helper'

class AttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attribute = attributes(:one)
  end

  test "should get index" do
    get attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_attribute_url
    assert_response :success
  end

  test "should create attribute" do
    assert_difference('Attribute.count') do
      post attributes_url, params: { attribute: {  } }
    end

    assert_redirected_to attribute_url(Attribute.last)
  end

  test "should show attribute" do
    get attribute_url(@attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_attribute_url(@attribute)
    assert_response :success
  end

  test "should update attribute" do
    patch attribute_url(@attribute), params: { attribute: {  } }
    assert_redirected_to attribute_url(@attribute)
  end

  test "should destroy attribute" do
    assert_difference('Attribute.count', -1) do
      delete attribute_url(@attribute)
    end

    assert_redirected_to attributes_url
  end
end
