require 'test_helper'

class Pizza1sControllerTest < ActionController::TestCase
  setup do
    @pizza1 = pizza1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizza1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza1" do
    assert_difference('Pizza1.count') do
      post :create, pizza1: { nombre: @pizza1.nombre, precio: @pizza1.precio, tamano: @pizza1.tamano }
    end

    assert_redirected_to pizza1_path(assigns(:pizza1))
  end

  test "should show pizza1" do
    get :show, id: @pizza1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza1
    assert_response :success
  end

  test "should update pizza1" do
    patch :update, id: @pizza1, pizza1: { nombre: @pizza1.nombre, precio: @pizza1.precio, tamano: @pizza1.tamano }
    assert_redirected_to pizza1_path(assigns(:pizza1))
  end

  test "should destroy pizza1" do
    assert_difference('Pizza1.count', -1) do
      delete :destroy, id: @pizza1
    end

    assert_redirected_to pizza1s_path
  end
end
