require 'test_helper'

class NewItemsControllerTest < ActionController::TestCase
  setup do
    @new_item = new_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_item" do
    assert_difference('NewItem.count') do
      post :create, new_item: { content: @new_item.content, flagged: @new_item.flagged, title: @new_item.title, url: @new_item.url, user_id: @new_item.user_id, votes: @new_item.votes }
    end

    assert_redirected_to new_item_path(assigns(:new_item))
  end

  test "should show new_item" do
    get :show, id: @new_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_item
    assert_response :success
  end

  test "should update new_item" do
    patch :update, id: @new_item, new_item: { content: @new_item.content, flagged: @new_item.flagged, title: @new_item.title, url: @new_item.url, user_id: @new_item.user_id, votes: @new_item.votes }
    assert_redirected_to new_item_path(assigns(:new_item))
  end

  test "should destroy new_item" do
    assert_difference('NewItem.count', -1) do
      delete :destroy, id: @new_item
    end

    assert_redirected_to new_items_path
  end
end
