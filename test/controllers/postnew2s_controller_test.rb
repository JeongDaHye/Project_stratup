require 'test_helper'

class Postnew2sControllerTest < ActionController::TestCase
  setup do
    @postnew2 = postnew2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postnew2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postnew2" do
    assert_difference('Postnew2.count') do
      post :create, postnew2: { content: @postnew2.content, title: @postnew2.title, user_id: @postnew2.user_id }
    end

    assert_redirected_to postnew2_path(assigns(:postnew2))
  end

  test "should show postnew2" do
    get :show, id: @postnew2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postnew2
    assert_response :success
  end

  test "should update postnew2" do
    patch :update, id: @postnew2, postnew2: { content: @postnew2.content, title: @postnew2.title, user_id: @postnew2.user_id }
    assert_redirected_to postnew2_path(assigns(:postnew2))
  end

  test "should destroy postnew2" do
    assert_difference('Postnew2.count', -1) do
      delete :destroy, id: @postnew2
    end

    assert_redirected_to postnew2s_path
  end
end
