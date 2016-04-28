require 'test_helper'

class PurchaseItemsControllerTest < ActionController::TestCase
  setup do
    @purchase_item = purchase_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_item" do
    assert_difference('PurchaseItem.count') do
      post :create, purchase_item: {  }
    end

    assert_redirected_to purchase_item_path(assigns(:purchase_item))
  end

  test "should show purchase_item" do
    get :show, id: @purchase_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_item
    assert_response :success
  end

  test "should update purchase_item" do
    patch :update, id: @purchase_item, purchase_item: {  }
    assert_redirected_to purchase_item_path(assigns(:purchase_item))
  end

  test "should destroy purchase_item" do
    assert_difference('PurchaseItem.count', -1) do
      delete :destroy, id: @purchase_item
    end

    assert_redirected_to purchase_items_path
  end
end
