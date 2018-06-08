require 'test_helper'

class Postnew3sControllerTest < ActionController::TestCase
  setup do
    @postnew3 = postnew3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postnew3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postnew3" do
    assert_difference('Postnew3.count') do
      post :create, postnew3: { content: @postnew3.content, title: @postnew3.title, user_id: @postnew3.user_id }
    end

    assert_redirected_to postnew3_path(assigns(:postnew3))
  end

  test "should show postnew3" do
    get :show, id: @postnew3
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postnew3
    assert_response :success
  end

  test "should update postnew3" do
    patch :update, id: @postnew3, postnew3: { content: @postnew3.content, title: @postnew3.title, user_id: @postnew3.user_id }
    assert_redirected_to postnew3_path(assigns(:postnew3))
  end

  test "should destroy postnew3" do
    assert_difference('Postnew3.count', -1) do
      delete :destroy, id: @postnew3
    end

    assert_redirected_to postnew3s_path
  end
end
