require 'test_helper'

class ConsortsControllerTest < ActionController::TestCase
  setup do
    @consort = consorts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consort" do
    assert_difference('Consort.count') do
      post :create, :consort => @consort.attributes
    end

    assert_redirected_to consort_path(assigns(:consort))
  end

  test "should show consort" do
    get :show, :id => @consort.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @consort.to_param
    assert_response :success
  end

  test "should update consort" do
    put :update, :id => @consort.to_param, :consort => @consort.attributes
    assert_redirected_to consort_path(assigns(:consort))
  end

  test "should destroy consort" do
    assert_difference('Consort.count', -1) do
      delete :destroy, :id => @consort.to_param
    end

    assert_redirected_to consorts_path
  end
end
