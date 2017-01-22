require 'test_helper'

class UtfItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utf_item = utf_items(:one)
  end

  test "should get index" do
    get utf_items_url
    assert_response :success
  end

  test "should get new" do
    get new_utf_item_url
    assert_response :success
  end

  test "should create utf_item" do
    assert_difference('UtfItem.count') do
      post utf_items_url, params: { utf_item: { description: @utf_item.description, name: @utf_item.name } }
    end

    assert_redirected_to utf_item_url(UtfItem.last)
  end

  test "should show utf_item" do
    get utf_item_url(@utf_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_utf_item_url(@utf_item)
    assert_response :success
  end

  test "should update utf_item" do
    patch utf_item_url(@utf_item), params: { utf_item: { description: @utf_item.description, name: @utf_item.name } }
    assert_redirected_to utf_item_url(@utf_item)
  end

  test "should destroy utf_item" do
    assert_difference('UtfItem.count', -1) do
      delete utf_item_url(@utf_item)
    end

    assert_redirected_to utf_items_url
  end
end
