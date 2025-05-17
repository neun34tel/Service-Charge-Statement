require "application_system_test_case"

class HousingUnitsTest < ApplicationSystemTestCase
  setup do
    @housing_unit = housing_units(:one)
  end

  test "visiting the index" do
    visit housing_units_url
    assert_selector "h1", text: "Housing units"
  end

  test "should create housing unit" do
    visit housing_units_url
    click_on "New housing unit"

    fill_in "Building", with: @housing_unit.building_id
    fill_in "Residential area", with: @housing_unit.residential_area
    fill_in "Total area share", with: @housing_unit.total_area_share
    fill_in "Usable area", with: @housing_unit.usable_area
    click_on "Create Housing unit"

    assert_text "Housing unit was successfully created"
    click_on "Back"
  end

  test "should update Housing unit" do
    visit housing_unit_url(@housing_unit)
    click_on "Edit this housing unit", match: :first

    fill_in "Building", with: @housing_unit.building_id
    fill_in "Residential area", with: @housing_unit.residential_area
    fill_in "Total area share", with: @housing_unit.total_area_share
    fill_in "Usable area", with: @housing_unit.usable_area
    click_on "Update Housing unit"

    assert_text "Housing unit was successfully updated"
    click_on "Back"
  end

  test "should destroy Housing unit" do
    visit housing_unit_url(@housing_unit)
    click_on "Destroy this housing unit", match: :first

    assert_text "Housing unit was successfully destroyed"
  end
end
