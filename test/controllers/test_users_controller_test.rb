require 'test_helper'

class TestUsersControllerTest < ActionController::TestCase
  setup do
    @test_user = test_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_user" do
    assert_difference('TestUser.count') do
      post :create, test_user: { Test_name: @test_user.Test_name, test_login: @test_user.test_login, tsai.stephen@gmail.com: @test_user.tsai.stephen@gmail.com }
    end

    assert_redirected_to test_user_path(assigns(:test_user))
  end

  test "should show test_user" do
    get :show, id: @test_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_user
    assert_response :success
  end

  test "should update test_user" do
    patch :update, id: @test_user, test_user: { Test_name: @test_user.Test_name, test_login: @test_user.test_login, tsai.stephen@gmail.com: @test_user.tsai.stephen@gmail.com }
    assert_redirected_to test_user_path(assigns(:test_user))
  end

  test "should destroy test_user" do
    assert_difference('TestUser.count', -1) do
      delete :destroy, id: @test_user
    end

    assert_redirected_to test_users_path
  end
end
