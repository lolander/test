require 'test_helper'

class CranesControllerTest < ActionController::TestCase
  setup do
    @crane = cranes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cranes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crane" do
    assert_difference('Crane.count') do
      post :create, crane: {  }
    end

    assert_redirected_to crane_path(assigns(:crane))
  end

  test "should show crane" do
    get :show, id: @crane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crane
    assert_response :success
  end

  test "should update crane" do
    patch :update, id: @crane, crane: {  }
    assert_redirected_to crane_path(assigns(:crane))
  end

  test "should destroy crane" do
    assert_difference('Crane.count', -1) do
      delete :destroy, id: @crane
    end

    assert_redirected_to cranes_path
  end
end
