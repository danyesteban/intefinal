require 'test_helper'

class AutomotorasControllerTest < ActionController::TestCase
  setup do
    @automotora = automotoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:automotoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create automotora" do
    assert_difference('Automotora.count') do
      post :create, automotora: { codigo: @automotora.codigo, color: @automotora.color, marca: @automotora.marca, modelo: @automotora.modelo, precio: @automotora.precio, usuario_id: @automotora.usuario_id }
    end

    assert_redirected_to automotora_path(assigns(:automotora))
  end

  test "should show automotora" do
    get :show, id: @automotora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @automotora
    assert_response :success
  end

  test "should update automotora" do
    patch :update, id: @automotora, automotora: { codigo: @automotora.codigo, color: @automotora.color, marca: @automotora.marca, modelo: @automotora.modelo, precio: @automotora.precio, usuario_id: @automotora.usuario_id }
    assert_redirected_to automotora_path(assigns(:automotora))
  end

  test "should destroy automotora" do
    assert_difference('Automotora.count', -1) do
      delete :destroy, id: @automotora
    end

    assert_redirected_to automotoras_path
  end
end
