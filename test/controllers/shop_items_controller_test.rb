require 'test_helper'

class ShopItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_item = shop_items(:one)
  end

  test "should get index" do
    get shop_items_url
    assert_response :success
  end

  test "should get new" do
    get new_shop_item_url
    assert_response :success
  end

  test "should create shop_item" do
    assert_difference('ShopItem.count') do
      post shop_items_url, params: { shop_item: { item_name: @shop_item.item_name, shop_id: @shop_item.shop_id } }
    end

    assert_redirected_to shop_item_url(ShopItem.last)
  end

  test "should show shop_item" do
    get shop_item_url(@shop_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_shop_item_url(@shop_item)
    assert_response :success
  end

  test "should update shop_item" do
    patch shop_item_url(@shop_item), params: { shop_item: { item_name: @shop_item.item_name, shop_id: @shop_item.shop_id } }
    assert_redirected_to shop_item_url(@shop_item)
  end

  test "should destroy shop_item" do
    assert_difference('ShopItem.count', -1) do
      delete shop_item_url(@shop_item)
    end

    assert_redirected_to shop_items_url
  end
end
