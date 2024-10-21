require "test_helper"

class CarretaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carretum = carreta(:one)
  end

  test "should get index" do
    get carreta_url
    assert_response :success
  end

  test "should get new" do
    get new_carretum_url
    assert_response :success
  end

  test "should create carretum" do
    assert_difference('Carretum.count') do
      post carreta_url, params: { carretum: { eixos: @carretum.eixos, placa: @carretum.placa, tamanho: @carretum.tamanho, tipo: @carretum.tipo } }
    end

    assert_redirected_to carretum_url(Carretum.last)
  end

  test "should show carretum" do
    get carretum_url(@carretum)
    assert_response :success
  end

  test "should get edit" do
    get edit_carretum_url(@carretum)
    assert_response :success
  end

  test "should update carretum" do
    patch carretum_url(@carretum), params: { carretum: { eixos: @carretum.eixos, placa: @carretum.placa, tamanho: @carretum.tamanho, tipo: @carretum.tipo } }
    assert_redirected_to carretum_url(@carretum)
  end

  test "should destroy carretum" do
    assert_difference('Carretum.count', -1) do
      delete carretum_url(@carretum)
    end

    assert_redirected_to carreta_url
  end
end
