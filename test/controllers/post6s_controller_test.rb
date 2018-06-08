require 'test_helper'

class Post6sControllerTest < ActionController::TestCase
  setup do
    @post6 = post6s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post6s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post6" do
    assert_difference('Post6.count') do
      post :create, post6: { content: @post6.content, title: @post6.title, user_id: @post6.user_id }
    end

    assert_redirected_to post6_path(assigns(:post6))
  end

  test "should show post6" do
    get :show, id: @post6
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post6
    assert_response :success
  end

  test "should update post6" do
    patch :update, id: @post6, post6: { content: @post6.content, title: @post6.title, user_id: @post6.user_id }
    assert_redirected_to post6_path(assigns(:post6))
  end

  test "should destroy post6" do
    assert_difference('Post6.count', -1) do
      delete :destroy, id: @post6
    end

    assert_redirected_to post6s_path
  end
end
