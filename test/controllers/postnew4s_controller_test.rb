require 'test_helper'

class Postnew4sControllerTest < ActionController::TestCase
  setup do
    @postnew4 = postnew4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postnew4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postnew4" do
    assert_difference('Postnew4.count') do
      post :create, postnew4: { content: @postnew4.content, title: @postnew4.title, user_id: @postnew4.user_id }
    end

    assert_redirected_to postnew4_path(assigns(:postnew4))
  end

  test "should show postnew4" do
    get :show, id: @postnew4
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postnew4
    assert_response :success
  end

  test "should update postnew4" do
    patch :update, id: @postnew4, postnew4: { content: @postnew4.content, title: @postnew4.title, user_id: @postnew4.user_id }
    assert_redirected_to postnew4_path(assigns(:postnew4))
  end

  test "should destroy postnew4" do
    assert_difference('Postnew4.count', -1) do
      delete :destroy, id: @postnew4
    end

    assert_redirected_to postnew4s_path
  end
end
