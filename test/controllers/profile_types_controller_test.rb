require 'test_helper'

class ProfileTypesControllerTest < ActionController::TestCase
  setup do
    @profile_type = profile_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_type" do
    assert_difference('ProfileType.count') do
      post :create, profile_type: { name: @profile_type.name }
    end

    assert_redirected_to profile_type_path(assigns(:profile_type))
  end

  test "should show profile_type" do
    get :show, id: @profile_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_type
    assert_response :success
  end

  test "should update profile_type" do
    patch :update, id: @profile_type, profile_type: { name: @profile_type.name }
    assert_redirected_to profile_type_path(assigns(:profile_type))
  end

  test "should destroy profile_type" do
    assert_difference('ProfileType.count', -1) do
      delete :destroy, id: @profile_type
    end

    assert_redirected_to profile_types_path
  end
end
