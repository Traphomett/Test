require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Año", with: @vehicle.año
    fill_in "Dealership", with: @vehicle.dealership_id
    fill_in "Estado", with: @vehicle.estado
    fill_in "Marca", with: @vehicle.marca
    fill_in "Modelo", with: @vehicle.modelo
    fill_in "Precio", with: @vehicle.precio
    fill_in "Tipo", with: @vehicle.tipo
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Año", with: @vehicle.año
    fill_in "Dealership", with: @vehicle.dealership_id
    fill_in "Estado", with: @vehicle.estado
    fill_in "Marca", with: @vehicle.marca
    fill_in "Modelo", with: @vehicle.modelo
    fill_in "Precio", with: @vehicle.precio
    fill_in "Tipo", with: @vehicle.tipo
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
