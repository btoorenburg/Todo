require 'test_helper'

class ZeilbootsControllerTest < ActionController::TestCase
  setup do
    @zeilboot = zeilboots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zeilboots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zeilboot" do
    assert_difference('Zeilboot.count') do
      post :create, :zeilboot => @zeilboot.attributes
    end

    assert_redirected_to zeilboot_path(assigns(:zeilboot))
  end

  test "should show zeilboot" do
    get :show, :id => @zeilboot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @zeilboot.to_param
    assert_response :success
  end

  test "should update zeilboot" do
    put :update, :id => @zeilboot.to_param, :zeilboot => @zeilboot.attributes
    assert_redirected_to zeilboot_path(assigns(:zeilboot))
  end

  test "should destroy zeilboot" do
    assert_difference('Zeilboot.count', -1) do
      delete :destroy, :id => @zeilboot.to_param
    end

    assert_redirected_to zeilboots_path
  end
end
