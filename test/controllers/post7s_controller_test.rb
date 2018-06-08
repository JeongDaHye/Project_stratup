require 'test_helper'

class Post7sControllerTest < ActionController::TestCase
  setup do
    @post7 = post7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post7" do
    assert_difference('Post7.count') do
      post :create, post7: { content: @post7.content, title: @post7.title, user_id: @post7.user_id }
    end

    assert_redirected_to post7_path(assigns(:post7))
  end

  test "should show post7" do
    get :show, id: @post7
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post7
    assert_response :success
  end

  test "should update post7" do
    patch :update, id: @post7, post7: { content: @post7.content, title: @post7.title, user_id: @post7.user_id }
    assert_redirected_to post7_path(assigns(:post7))
  end

  test "should destroy post7" do
    assert_difference('Post7.count', -1) do
      delete :destroy, id: @post7
    end

    assert_redirected_to post7s_path
  end
end
