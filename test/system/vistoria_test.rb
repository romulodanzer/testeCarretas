require "application_system_test_case"

class VistoriaTest < ApplicationSystemTestCase
  setup do
    @vistorium = vistoria(:one)
  end

  test "visiting the index" do
    visit vistoria_url
    assert_selector "h1", text: "Vistoria"
  end

  test "creating a Vistorium" do
    visit vistoria_url
    click_on "New Vistorium"

    fill_in "Arquivo pdf", with: @vistorium.arquivo_pdf
    fill_in "Carreta", with: @vistorium.carreta_id
    fill_in "Data", with: @vistorium.data
    fill_in "Destino", with: @vistorium.destino
    fill_in "Tipo vistoria", with: @vistorium.tipo_vistoria
    fill_in "Vistoriador", with: @vistorium.vistoriador
    click_on "Create Vistorium"

    assert_text "Vistorium was successfully created"
    click_on "Back"
  end

  test "updating a Vistorium" do
    visit vistoria_url
    click_on "Edit", match: :first

    fill_in "Arquivo pdf", with: @vistorium.arquivo_pdf
    fill_in "Carreta", with: @vistorium.carreta_id
    fill_in "Data", with: @vistorium.data
    fill_in "Destino", with: @vistorium.destino
    fill_in "Tipo vistoria", with: @vistorium.tipo_vistoria
    fill_in "Vistoriador", with: @vistorium.vistoriador
    click_on "Update Vistorium"

    assert_text "Vistorium was successfully updated"
    click_on "Back"
  end

  test "destroying a Vistorium" do
    visit vistoria_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vistorium was successfully destroyed"
  end
end
