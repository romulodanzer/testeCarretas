require "application_system_test_case"

class CarretaTest < ApplicationSystemTestCase
  setup do
    @carretum = carreta(:one)
  end

  test "visiting the index" do
    visit carreta_url
    assert_selector "h1", text: "Carreta"
  end

  test "creating a Carretum" do
    visit carreta_url
    click_on "New Carretum"

    fill_in "Eixos", with: @carretum.eixos
    fill_in "Placa", with: @carretum.placa
    fill_in "Tamanho", with: @carretum.tamanho
    fill_in "Tipo", with: @carretum.tipo
    click_on "Create Carretum"

    assert_text "Carretum was successfully created"
    click_on "Back"
  end

  test "updating a Carretum" do
    visit carreta_url
    click_on "Edit", match: :first

    fill_in "Eixos", with: @carretum.eixos
    fill_in "Placa", with: @carretum.placa
    fill_in "Tamanho", with: @carretum.tamanho
    fill_in "Tipo", with: @carretum.tipo
    click_on "Update Carretum"

    assert_text "Carretum was successfully updated"
    click_on "Back"
  end

  test "destroying a Carretum" do
    visit carreta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carretum was successfully destroyed"
  end
end
