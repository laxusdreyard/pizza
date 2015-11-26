require 'test_helper'

class BoletaControllerTest < ActionController::TestCase
  setup do
    @boletum = boleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boletum" do
    assert_difference('Boletum.count') do
      post :create, boletum: { ingrediente_id: @boletum.ingrediente_id, pizza1_id: @boletum.pizza1_id, usuario_id: @boletum.usuario_id }
    end

    assert_redirected_to boletum_path(assigns(:boletum))
  end

  test "should show boletum" do
    get :show, id: @boletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boletum
    assert_response :success
  end

  test "should update boletum" do
    patch :update, id: @boletum, boletum: { ingrediente_id: @boletum.ingrediente_id, pizza1_id: @boletum.pizza1_id, usuario_id: @boletum.usuario_id }
    assert_redirected_to boletum_path(assigns(:boletum))
  end

  test "should destroy boletum" do
    assert_difference('Boletum.count', -1) do
      delete :destroy, id: @boletum
    end

    assert_redirected_to boleta_path
  end
end
