class TipCalculationController < ApplicationController
    before_action :set_tip_calculation, only: [:show, :edit, :update, :destroy]

    def index
        @tip_calculations = TipCalculation.all
    end

    def new
        @tip_calculation = TipCalculation.new
    end

    def edit
    end

    def show
    end

    def create
        @tip_calculation = TipCalculation.new(tip_calculation_params)

        if @tip_calculation.save
            redirect_to calculator_show_path(@tip_calculation)
        else
            render :new
        end
    end

    def update
        @tip_calculation.assign_attributes(tip_calculation_params)

        if @tip_calculation.save
            redirect_to calculator_show_path(@tip_calculation)
        else
            render :edit
        end
    end

    def destroy
        @tip_calculation.destroy
        redirect_to calculator_index_path
    end

    def set_tip_calculation
        @tip_calculation = TipCalculation.find_by(id: params[:id])
    end

    private

    def tip_calculation_params
        params.require(:tip_calculation).permit(:bill_amount, :tip_percentage, :num_people)
    end
end
