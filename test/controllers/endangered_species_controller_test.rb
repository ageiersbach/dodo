require 'test_helper'

class EndangeredSpeciesControllerTest < ActionController::TestCase
  setup do
    @endangered_specy = endangered_species(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endangered_species)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endangered_specy" do
    assert_difference('EndangeredSpecy.count') do
      post :create, endangered_specy: { candidate: @endangered_specy.candidate, name: @endangered_specy.name, priority: @endangered_specy.priority }
    end

    assert_redirected_to endangered_specy_path(assigns(:endangered_specy))
  end

  test "should show endangered_specy" do
    get :show, id: @endangered_specy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endangered_specy
    assert_response :success
  end

  test "should update endangered_specy" do
    patch :update, id: @endangered_specy, endangered_specy: { candidate: @endangered_specy.candidate, name: @endangered_specy.name, priority: @endangered_specy.priority }
    assert_redirected_to endangered_specy_path(assigns(:endangered_specy))
  end

  test "should destroy endangered_specy" do
    assert_difference('EndangeredSpecy.count', -1) do
      delete :destroy, id: @endangered_specy
    end

    assert_redirected_to endangered_species_path
  end
end
