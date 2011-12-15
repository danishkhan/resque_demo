require 'test_helper'

class AtesControllerTest < ActionController::TestCase
  setup do
    @ate = ates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ate" do
    assert_difference('Ate.count') do
      post :create, :ate => @ate.attributes
    end

    assert_redirected_to ate_path(assigns(:ate))
  end

  test "should show ate" do
    get :show, :id => @ate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ate.to_param
    assert_response :success
  end

  test "should update ate" do
    put :update, :id => @ate.to_param, :ate => @ate.attributes
    assert_redirected_to ate_path(assigns(:ate))
  end

  test "should destroy ate" do
    assert_difference('Ate.count', -1) do
      delete :destroy, :id => @ate.to_param
    end

    assert_redirected_to ates_path
  end
end
