class HousingUnitsController < ApplicationController
  before_action :set_housing_unit, only: %i[ show edit update destroy ]
  before_action :set_building

  # GET /housing_units
  def index
    @housing_units = @building.housing_units.all
  end

  # GET /housing_units/1
  def show
  end

  # GET /housing_units/new
  def new
    @housing_unit = @building.housing_units.new
  end

  # GET /housing_units/1/edit
  def edit
  end

  # POST /housing_units
  def create
    @housing_unit = @building.housing_units.new(housing_unit_params)

    if @housing_unit.save
      redirect_to building_housing_units_path(@building), notice: "Housing unit was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /housing_units/1
  def update
    if @housing_unit.update(housing_unit_params)
      redirect_to building_housing_unit_path, notice: "Housing unit was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /housing_units/1
  def destroy
    @housing_unit.destroy!

    redirect_to building_housing_units_path, status: :see_other, notice: "Housing unit was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_building
    @building = Building.find(params.expect(:building_id))
  end

  def set_housing_unit
    @housing_unit = HousingUnit.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def housing_unit_params
    params.expect(housing_unit: [ :residential_area, :usable_area, :total_area_share, :description ])
  end
end
