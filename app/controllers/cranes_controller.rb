class CranesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_crane, only: [:show, :edit, :update, :destroy]

  def index
    @cranes = Crane.all
  end

  def show
  end

  def new
    @crane = Crane.new
  end

  def edit
  end

  def create
    @crane = Crane.new(crane_params)

    respond_to do |format|
      if @crane.save
        format.html { redirect_to @crane, notice: 'Crane was successfully created.' }
        format.json { render :show, status: :created, location: @crane }
      else
        format.html { render :new }
        format.json { render json: @crane.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @crane.update(crane_params)
        format.html { redirect_to @crane, notice: 'Crane was successfully updated.' }
        format.json { render :show, status: :ok, location: @crane }
      else
        format.html { render :edit }
        format.json { render json: @crane.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @crane.destroy
    respond_to do |format|
      format.html { redirect_to cranes_url, notice: 'Crane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crane
      @crane = Crane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crane_params
      params[:crane].permit(:name, :size, :brand, :year, :idlable_pic)
    end
end
