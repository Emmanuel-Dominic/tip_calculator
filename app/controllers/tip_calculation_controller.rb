class TipCalculationController < ApplicationController
    def index
        @tip_calculations = TipCalculation.all
    end

    def new
        @tip_calculation = TipCalculation.new
    end

    def edit
        @tip_calculation = TipCalculation.find_by(id: params[:id])
        if @tip_calculation.nil?
            render plain: "Record not found", status: :not_found
        end
    end

    def show
        @tip_calculation = TipCalculation.find_by(id: params[:id])
        if @tip_calculation.nil?
            render plain: "Record not found", status: :not_found
        end
    end

    def create
        bill_amount = params[:bill_amount].to_f
        tip_percentage = params[:tip_percentage].to_f
        num_people = params[:num_people].to_i

        tip_amount = (bill_amount * tip_percentage) / 100
        total_bill = bill_amount + tip_amount
        per_person_amount = total_bill / num_people

        @tip_calculation = TipCalculation.new(
            bill_amount: bill_amount,
            tip_percentage: tip_percentage,
            tip_amount: tip_amount,
            total_bill: total_bill,
            num_people: num_people,
            per_person_amount: per_person_amount,
            timestamp: Time.current
        )

        if @tip_calculation.save
            redirect_to calculator_show_path(@tip_calculation)
        else
            render :new
        end
    end

    def update
        @tip_calculation = TipCalculation.find_by(id: params[:id])

        if @tip_calculation.nil?
            render plain: "Record not found", status: :not_found
            return
        end

        @tip_calculation.assign_attributes(tip_calculation_params)

        @tip_calculation.tip_amount = (@tip_calculation.bill_amount * @tip_calculation.tip_percentage) / 100
        @tip_calculation.total_bill = @tip_calculation.bill_amount + @tip_calculation.tip_amount
        @tip_calculation.per_person_amount = @tip_calculation.total_bill / @tip_calculation.num_people
        @tip_calculation.timestamp ||= Time.current

        if @tip_calculation.save
            redirect_to calculator_show_path(@tip_calculation)
        else
            render :edit
        end
    end

    def destroy
        @tip_calculation = TipCalculation.find_by(id: params[:id])

        if @tip_calculation.nil?
            render plain: "Record not found", status: :not_found
            return
        else
            @tip_calculation.destroy
            redirect_to calculator_index_path
        end
    end

    private

    def tip_calculation_params
        params.require(:tip_calculation).permit(:bill_amount, :tip_percentage, :num_people)
    end
end
