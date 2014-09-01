class PppsController < ApplicationController
  before_action :set_ppp, only: [:show, :edit, :update, :destroy]

  # GET /ppps
  # GET /ppps.json
  def index
    @ppps = Ppp.all
  end

  # GET /ppps/1
  # GET /ppps/1.json
  def show
  end

  # GET /ppps/new
  def new
    @ppp = Ppp.new
  end

  # GET /ppps/1/edit
  def edit
  end

  # POST /ppps
  # POST /ppps.json
  def create
    @ppp = Ppp.new(ppp_params)

    respond_to do |format|
      if @ppp.save
        format.html { redirect_to @ppp, notice: 'Ppp was successfully created.' }
        format.json { render :show, status: :created, location: @ppp }
      else
        format.html { render :new }
        format.json { render json: @ppp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ppps/1
  # PATCH/PUT /ppps/1.json
  def update
    respond_to do |format|
      if @ppp.update(ppp_params)
        format.html { redirect_to @ppp, notice: 'Ppp was successfully updated.' }
        format.json { render :show, status: :ok, location: @ppp }
      else
        format.html { render :edit }
        format.json { render json: @ppp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ppps/1
  # DELETE /ppps/1.json
  def destroy
    @ppp.destroy
    respond_to do |format|
      format.html { redirect_to ppps_url, notice: 'Ppp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ppp
      @ppp = Ppp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ppp_params
      params.require(:ppp).permit(:name)
    end
end
