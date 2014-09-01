require 'test_helper'

class PppsControllerTest < ActionController::TestCase
  setup do
    @ppp = ppps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ppps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ppp" do
    assert_difference('Ppp.count') do
      post :create, ppp: { name: @ppp.name }
    end

    assert_redirected_to ppp_path(assigns(:ppp))
  end

  test "should show ppp" do
    get :show, id: @ppp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ppp
    assert_response :success
  end

  test "should update ppp" do
    patch :update, id: @ppp, ppp: { name: @ppp.name }
    assert_redirected_to ppp_path(assigns(:ppp))
  end

  test "should destroy ppp" do
    assert_difference('Ppp.count', -1) do
      delete :destroy, id: @ppp
    end

    assert_redirected_to ppps_path
  end
end
