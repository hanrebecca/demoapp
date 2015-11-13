class HaasiesController < ApplicationController
  before_action :set_haasie, only: [:show, :edit, :update, :destroy]

  # GET /haasies
  # GET /haasies.json
  def index
    @haasies = Haasie.all
  end

  # GET /haasies/1
  # GET /haasies/1.json
  def show
  end

  # GET /haasies/new
  def new
    @haasies = Haasie.new
  end

  # GET /haasies/1/edit
  def edit
  end

  # POST /haasies
  # POST /haasies.json
  def create
    @haasies = Haasie.new(haasies_params)

    respond_to do |format|
      if @haasy.save
        format.html { redirect_to @haasy, notice: 'Haasie was successfully created.' }
        format.json { render :show, status: :created, location: @haasy }
      else
        format.html { render :new }
        format.json { render json: @haasy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /haasies/1
  # PATCH/PUT /haasies/1.json
  def update
    respond_to do |format|
      if @haasy.update(haasy_params)
        format.html { redirect_to @haasy, notice: 'Haasie was successfully updated.' }
        format.json { render :show, status: :ok, location: @haasy }
      else
        format.html { render :edit }
        format.json { render json: @haasy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /haasies/1
  # DELETE /haasies/1.json
  def destroy
    @haasy.destroy
    respond_to do |format|
      format.html { redirect_to haasies_url, notice: 'Haasie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_haasy
      @haasy = Haasie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def haasy_params
      params.require(:haasy).permit(:name, :surname, :Looks, :Brains, :Diversity, :Overall)
    end
end
