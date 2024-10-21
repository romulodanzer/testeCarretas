require "test_helper"

class VistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vistorium = vistoria(:one)
  end

  test "should get index" do
    get vistoria_url
    assert_response :success
  end

  test "should get new" do
    get new_vistorium_url
    assert_response :success
  end

  test "should create vistorium" do
    assert_difference('Vistorium.count') do
      post vistoria_url, params: { vistorium: { arquivo_pdf: @vistorium.arquivo_pdf, carreta_id: @vistorium.carreta_id, data: @vistorium.data, destino: @vistorium.destino, tipo_vistoria: @vistorium.tipo_vistoria, vistoriador: @vistorium.vistoriador } }
    end

    assert_redirected_to vistorium_url(Vistorium.last)
  end

  test "should show vistorium" do
    get vistorium_url(@vistorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_vistorium_url(@vistorium)
    assert_response :success
  end

  test "should update vistorium" do
    patch vistorium_url(@vistorium), params: { vistorium: { arquivo_pdf: @vistorium.arquivo_pdf, carreta_id: @vistorium.carreta_id, data: @vistorium.data, destino: @vistorium.destino, tipo_vistoria: @vistorium.tipo_vistoria, vistoriador: @vistorium.vistoriador } }
    assert_redirected_to vistorium_url(@vistorium)
  end

  test "should destroy vistorium" do
    assert_difference('Vistorium.count', -1) do
      delete vistorium_url(@vistorium)
    end

    assert_redirected_to vistoria_url
  end
end
