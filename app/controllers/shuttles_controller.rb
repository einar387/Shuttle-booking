class ShuttlesController < ApplicationController
  before_action :get_service, except: %i[ show edit ]
  before_action :set_shuttle, only: %i[ update destroy ]

  # GET /shuttles or /shuttles.json
  def index
    @shuttles = @service.shuttles
  end

  # GET /shuttles/1 or /shuttles/1.json
  def show
    @shuttle = Shuttle.find(params[:id])
    @service = @shuttle.service
  end

  # GET /shuttles/new
  def new
    @shuttle = @service.shuttles.build
  end

  # GET /shuttles/1/edit
  def edit
    @shuttle = Shuttle.find(params[:id])
    @service = @shuttle.service
  end

  # POST /shuttles or /shuttles.json
  def create
    @shuttle = @service.shuttles.build(shuttle_params)

    respond_to do |format|
      if @shuttle.save
        format.html { redirect_to service_shuttles_url(params[:service_id]), notice: "Shuttle was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shuttles/1 or /shuttles/1.json
  def update
    respond_to do |format|
      if @shuttle.update(shuttle_params)
        format.html { redirect_to service_shuttle_url(@shuttle), notice: "Shuttle was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shuttles/1 or /shuttles/1.json
  def destroy
    @shuttle.destroy

    respond_to do |format|
      format.html { redirect_to service_shuttles_url(@shuttle), notice: "Shuttle was successfully destroyed." }
    end
  end

  private

    def get_service
      @service = Service.find(params[:service_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_shuttle
      @shuttle = @service.shuttles.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shuttle_params
      params.permit(:description, :setoff_time, :max_capacity, :service_id)
    end
end
