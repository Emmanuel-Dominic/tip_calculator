require "test_helper"

class TipCalculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tip_calculation = tip_calculations(:one)
  end

  test "should get index" do
    get tip_calculations_url
    assert_response :success
  end

  test "should get new" do
    get new_tip_calculation_url
    assert_response :success
  end

  test "should create tip_calculation" do
    assert_difference("TipCalculation.count") do
      post tip_calculations_url, params: { tip_calculation: { bill_amount: @tip_calculation.bill_amount, num_people: @tip_calculation.num_people, per_person_amount: @tip_calculation.per_person_amount, timestamp: @tip_calculation.timestamp, tip_amount: @tip_calculation.tip_amount, tip_percentage: @tip_calculation.tip_percentage, total_bill: @tip_calculation.total_bill } }
    end

    assert_redirected_to tip_calculation_url(TipCalculation.last)
  end

  test "should show tip_calculation" do
    get tip_calculation_url(@tip_calculation)
    assert_response :success
  end

  test "should get edit" do
    get edit_tip_calculation_url(@tip_calculation)
    assert_response :success
  end

  test "should update tip_calculation" do
    patch tip_calculation_url(@tip_calculation), params: { tip_calculation: { bill_amount: @tip_calculation.bill_amount, num_people: @tip_calculation.num_people, per_person_amount: @tip_calculation.per_person_amount, timestamp: @tip_calculation.timestamp, tip_amount: @tip_calculation.tip_amount, tip_percentage: @tip_calculation.tip_percentage, total_bill: @tip_calculation.total_bill } }
    assert_redirected_to tip_calculation_url(@tip_calculation)
  end

  test "should destroy tip_calculation" do
    assert_difference("TipCalculation.count", -1) do
      delete tip_calculation_url(@tip_calculation)
    end

    assert_redirected_to tip_calculations_url
  end
end
