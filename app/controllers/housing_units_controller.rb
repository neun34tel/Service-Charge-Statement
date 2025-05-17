class HousingUnitsController < ApplicationController
  before_action :set_housing_unit, only: %i[ show edit update destroy ]

  # GET /housing_units or /housing_units.json
  def index
    @housing_units = HousingUnit.all
  end

  # GET /housing_units/1 or /housing_units/1.json
  def show
  end

  # GET /housing_units/new
  def new
    @housing_unit = HousingUnit.new
  end

  # GET /housing_units/1/edit
  def edit
  end

  # POST /housing_units or /housing_units.json
  def create
    @housing_unit = HousingUnit.new(housing_unit_params)

    respond_to do |format|
      if @housing_unit.save
        format.html { redirect_to @housing_unit, notice: "Housing unit was successfully created." }
        format.json { render :show, status: :created, location: @housing_unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @housing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housing_units/1 or /housing_units/1.json
  def update
    respond_to do |format|
      if @housing_unit.update(housing_unit_params)
        format.html { redirect_to @housing_unit, notice: "Housing unit was successfully updated." }
        format.json { render :show, status: :ok, location: @housing_unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @housing_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housing_units/1 or /housing_units/1.json
  def destroy
    @housing_unit.destroy!

    respond_to do |format|
      format.html { redirect_to housing_units_path, status: :see_other, notice: "Housing unit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing_unit
      @housing_unit = HousingUnit.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def housing_unit_params
      params.expect(housing_unit: [ :residential_area, :usable_area, :total_area_share, :building_id ])
    end
end
