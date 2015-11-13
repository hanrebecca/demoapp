require 'test_helper'

class WhosControllerTest < ActionController::TestCase
  setup do
    @who = whos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create who" do
    assert_difference('Who.count') do
      post :create, who: { age: @who.age, are: @who.are, you: @who.you }
    end

    assert_redirected_to who_path(assigns(:who))
  end

  test "should show who" do
    get :show, id: @who
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @who
    assert_response :success
  end

  test "should update who" do
    patch :update, id: @who, who: { age: @who.age, are: @who.are, you: @who.you }
    assert_redirected_to who_path(assigns(:who))
  end

  test "should destroy who" do
    assert_difference('Who.count', -1) do
      delete :destroy, id: @who
    end

    assert_redirected_to whos_path
  end
end
