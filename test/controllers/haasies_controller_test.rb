require 'test_helper'

class HaasiesControllerTest < ActionController::TestCase
  setup do
    @haasy = haasies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:haasies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create haasy" do
    assert_difference('Haasy.count') do
      post :create, haasy: { Brains: @haasy.Brains, Diversity: @haasy.Diversity, Looks: @haasy.Looks, Overall: @haasy.Overall, name: @haasy.name, surname: @haasy.surname }
    end

    assert_redirected_to haasy_path(assigns(:haasy))
  end

  test "should show haasy" do
    get :show, id: @haasy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @haasy
    assert_response :success
  end

  test "should update haasy" do
    patch :update, id: @haasy, haasy: { Brains: @haasy.Brains, Diversity: @haasy.Diversity, Looks: @haasy.Looks, Overall: @haasy.Overall, name: @haasy.name, surname: @haasy.surname }
    assert_redirected_to haasy_path(assigns(:haasy))
  end

  test "should destroy haasy" do
    assert_difference('Haasy.count', -1) do
      delete :destroy, id: @haasy
    end

    assert_redirected_to haasies_path
  end
end
