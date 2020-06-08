class ContersController < ApplicationController
  before_action :set_conter, only: [:show, :edit, :update, :destroy]

  # GET /conters
  # GET /conters.json
  def index
    @conters = Conter.all
  end

  # GET /conters/1
  # GET /conters/1.json
  def show
  end

  # GET /conters/new
  def new
    @conter = Conter.new
  end

  # GET /conters/1/edit
  def edit
  end

  # POST /conters
  # POST /conters.json
  def create
    @conter = Conter.new(conter_params)

    respond_to do |format|
      if @conter.save
        format.html { redirect_to @conter, notice: 'Conter was successfully created.' }
        format.json { render :show, status: :created, location: @conter }
      else
        format.html { render :new }
        format.json { render json: @conter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conters/1
  # PATCH/PUT /conters/1.json
  def update
    respond_to do |format|
      if @conter.update(conter_params)
        format.html { redirect_to @conter, notice: 'Conter was successfully updated.' }
        format.json { render :show, status: :ok, location: @conter }
      else
        format.html { render :edit }
        format.json { render json: @conter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conters/1
  # DELETE /conters/1.json
  def destroy
    @conter.destroy
    respond_to do |format|
      format.html { redirect_to conters_url, notice: 'Conter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conter
      @conter = Conter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conter_params
      params.require(:conter).permit(:count)
    end
end
