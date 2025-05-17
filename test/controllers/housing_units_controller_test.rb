require "test_helper"

class HousingUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housing_unit = housing_units(:one)
  end

  test "should get index" do
    get housing_units_url
    assert_response :success
  end

  test "should get new" do
    get new_housing_unit_url
    assert_response :success
  end

  test "should create housing_unit" do
    assert_difference("HousingUnit.count") do
      post housing_units_url, params: { housing_unit: { building_id: @housing_unit.building_id, residential_area: @housing_unit.residential_area, total_area_share: @housing_unit.total_area_share, usable_area: @housing_unit.usable_area } }
    end

    assert_redirected_to housing_unit_url(HousingUnit.last)
  end

  test "should show housing_unit" do
    get housing_unit_url(@housing_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_housing_unit_url(@housing_unit)
    assert_response :success
  end

  test "should update housing_unit" do
    patch housing_unit_url(@housing_unit), params: { housing_unit: { building_id: @housing_unit.building_id, residential_area: @housing_unit.residential_area, total_area_share: @housing_unit.total_area_share, usable_area: @housing_unit.usable_area } }
    assert_redirected_to housing_unit_url(@housing_unit)
  end

  test "should destroy housing_unit" do
    assert_difference("HousingUnit.count", -1) do
      delete housing_unit_url(@housing_unit)
    end

    assert_redirected_to housing_units_url
  end
end
