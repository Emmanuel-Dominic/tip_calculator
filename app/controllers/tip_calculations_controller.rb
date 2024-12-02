class TipCalculationsController < ApplicationController
  before_action :set_tip_calculation, only: %i[ show edit update destroy ]

  # GET /tip_calculations or /tip_calculations.json
  def index
    @tip_calculations = TipCalculation.all
  end

  # GET /tip_calculations/1 or /tip_calculations/1.json
  def show
  end

  # GET /tip_calculations/new
  def new
    @tip_calculation = TipCalculation.new
  end

  # GET /tip_calculations/1/edit
  def edit
  end

  # POST /tip_calculations or /tip_calculations.json
  def create
    @tip_calculation = TipCalculation.new(tip_calculation_params)

    respond_to do |format|
      if @tip_calculation.save
        format.html { redirect_to @tip_calculation, notice: "Tip calculation was successfully created." }
        format.json { render :show, status: :created, location: @tip_calculation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tip_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tip_calculations/1 or /tip_calculations/1.json
  def update
    respond_to do |format|
      if @tip_calculation.update(tip_calculation_params)
        format.html { redirect_to @tip_calculation, notice: "Tip calculation was successfully updated." }
        format.json { render :show, status: :ok, location: @tip_calculation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tip_calculation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_calculations/1 or /tip_calculations/1.json
  def destroy
    @tip_calculation.destroy!

    respond_to do |format|
      format.html { redirect_to tip_calculations_path, status: :see_other, notice: "Tip calculation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip_calculation
      @tip_calculation = TipCalculation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tip_calculation_params
      params.require(:tip_calculation).permit(:bill_amount, :tip_percentage, :tip_amount, :total_bill, :num_people, :per_person_amount, :timestamp)
    end
end
