require 'test_helper'

class ImmigrantsControllerTest < ActionController::TestCase
  setup do
    @immigrant = immigrants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:immigrants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create immigrant" do
    assert_difference('Immigrant.count') do
      post :create, immigrant: { first_name: @immigrant.first_name, last_name: @immigrant.last_name, nickname: @immigrant.nickname, sex: @immigrant.sex }
    end

    assert_redirected_to immigrant_path(assigns(:immigrant))
  end

  test "should show immigrant" do
    get :show, id: @immigrant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @immigrant
    assert_response :success
  end

  test "should update immigrant" do
    put :update, id: @immigrant, immigrant: { first_name: @immigrant.first_name, last_name: @immigrant.last_name, nickname: @immigrant.nickname, sex: @immigrant.sex }
    assert_redirected_to immigrant_path(assigns(:immigrant))
  end

  test "should destroy immigrant" do
    assert_difference('Immigrant.count', -1) do
      delete :destroy, id: @immigrant
    end

    assert_redirected_to immigrants_path
  end
end
