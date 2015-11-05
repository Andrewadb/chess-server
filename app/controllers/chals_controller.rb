class ChalsController < ApplicationController
  before_action :set_chal, only: [:show, :edit, :update, :destroy]

  # GET /chals
  # GET /chals.json
  def index
    @chals = Chal.all
  end

  # GET /chals/1
  # GET /chals/1.json
  def show
  end

  # GET /chals/new
  def new
    @chal = Chal.new
  end

  # GET /chals/1/edit
  def edit
  end

  # POST /chals
  # POST /chals.json
  def create
    @chal = Chal.new(chal_params)

    respond_to do |format|
      if @chal.save
        format.html { redirect_to @chal, notice: 'Chal was successfully created.' }
        format.json { render :show, status: :created, location: @chal }
      else
        format.html { render :new }
        format.json { render json: @chal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chals/1
  # PATCH/PUT /chals/1.json
  def update
    respond_to do |format|
      if @chal.update(chal_params)
        format.html { redirect_to @chal, notice: 'Chal was successfully updated.' }
        format.json { render :show, status: :ok, location: @chal }
      else
        format.html { render :edit }
        format.json { render json: @chal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chals/1
  # DELETE /chals/1.json
  def destroy
    @chal.destroy
    respond_to do |format|
      format.html { redirect_to chals_url, notice: 'Chal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chal
      @chal = Chal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chal_params
      params.require(:chal).permit(:challenger, :challenged)
    end
end
