require "test_helper"

class FilialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filial = filials(:one)
  end

  test "should get index" do
    get filials_url
    assert_response :success
  end

  test "should get new" do
    get new_filial_url
    assert_response :success
  end

  test "should create filial" do
    assert_difference('Filial.count') do
      post filials_url, params: { filial: { empresa_id: @filial.empresa_id, nome: @filial.nome } }
    end

    assert_redirected_to filial_url(Filial.last)
  end

  test "should show filial" do
    get filial_url(@filial)
    assert_response :success
  end

  test "should get edit" do
    get edit_filial_url(@filial)
    assert_response :success
  end

  test "should update filial" do
    patch filial_url(@filial), params: { filial: { empresa_id: @filial.empresa_id, nome: @filial.nome } }
    assert_redirected_to filial_url(@filial)
  end

  test "should destroy filial" do
    assert_difference('Filial.count', -1) do
      delete filial_url(@filial)
    end

    assert_redirected_to filials_url
  end
end
