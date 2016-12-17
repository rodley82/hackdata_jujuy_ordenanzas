require 'test_helper'

class OrdenanzasControllerTest < ActionController::TestCase
  setup do
    @ordenanza = ordenanzas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenanzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordenanza" do
    assert_difference('Ordenanza.count') do
      post :create, ordenanza: { fecha: @ordenanza.fecha, titulo: @ordenanza.titulo }
    end

    assert_redirected_to ordenanza_path(assigns(:ordenanza))
  end

  test "should show ordenanza" do
    get :show, id: @ordenanza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordenanza
    assert_response :success
  end

  test "should update ordenanza" do
    patch :update, id: @ordenanza, ordenanza: { fecha: @ordenanza.fecha, titulo: @ordenanza.titulo }
    assert_redirected_to ordenanza_path(assigns(:ordenanza))
  end

  test "should destroy ordenanza" do
    assert_difference('Ordenanza.count', -1) do
      delete :destroy, id: @ordenanza
    end

    assert_redirected_to ordenanzas_path
  end
end
