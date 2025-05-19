class BuildingsController < ApplicationController
  before_action :set_building, only: %i[ show edit update destroy ]

  # GET /buildings
  def index
    @buildings = Building.all
  end

  # GET /buildings/1
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings or
  def create
    @building = Building.new(building_params)

    if @building.save
      redirect_to @building, notice: "Building was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buildings/1
  def update
    if @building.update(building_params)
      redirect_to @building, notice: "Building was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /buildings/1
  def destroy
    @building.destroy!

    redirect_to buildings_path, status: :see_other, notice: "Building was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def building_params
      params.expect(building: [ :total_residential_area, :total_usable_area, :plot_area, :name, :street, :house_number,\
                               :zip_code, :city, :state, :country ])
    end
end
