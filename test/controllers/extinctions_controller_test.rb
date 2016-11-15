require 'test_helper'

class ExtinctionsControllerTest < ActionController::TestCase
  setup do
    @extinction = extinctions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extinctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extinction" do
    assert_difference('Extinction.count') do
      post :create, extinction: { animal_name: @extinction.animal_name, approx_extinction_at: @extinction.approx_extinction_at }
    end

    assert_redirected_to extinction_path(assigns(:extinction))
  end

  test "should show extinction" do
    get :show, id: @extinction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extinction
    assert_response :success
  end

  test "should update extinction" do
    patch :update, id: @extinction, extinction: { animal_name: @extinction.animal_name, approx_extinction_at: @extinction.approx_extinction_at }
    assert_redirected_to extinction_path(assigns(:extinction))
  end

  test "should destroy extinction" do
    assert_difference('Extinction.count', -1) do
      delete :destroy, id: @extinction
    end

    assert_redirected_to extinctions_path
  end
end
