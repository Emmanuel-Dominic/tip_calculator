require "application_system_test_case"

class TipCalculationsTest < ApplicationSystemTestCase
  setup do
    @tip_calculation = tip_calculations(:one)
  end

  test "visiting the index" do
    visit tip_calculations_url
    assert_selector "h1", text: "Tip calculations"
  end

  test "should create tip calculation" do
    visit tip_calculations_url
    click_on "New tip calculation"

    fill_in "Bill amount", with: @tip_calculation.bill_amount
    fill_in "Num people", with: @tip_calculation.num_people
    fill_in "Per person amount", with: @tip_calculation.per_person_amount
    fill_in "Timestamp", with: @tip_calculation.timestamp
    fill_in "Tip amount", with: @tip_calculation.tip_amount
    fill_in "Tip percentage", with: @tip_calculation.tip_percentage
    fill_in "Total bill", with: @tip_calculation.total_bill
    click_on "Create Tip calculation"

    assert_text "Tip calculation was successfully created"
    click_on "Back"
  end

  test "should update Tip calculation" do
    visit tip_calculation_url(@tip_calculation)
    click_on "Edit this tip calculation", match: :first

    fill_in "Bill amount", with: @tip_calculation.bill_amount
    fill_in "Num people", with: @tip_calculation.num_people
    fill_in "Per person amount", with: @tip_calculation.per_person_amount
    fill_in "Timestamp", with: @tip_calculation.timestamp.to_s
    fill_in "Tip amount", with: @tip_calculation.tip_amount
    fill_in "Tip percentage", with: @tip_calculation.tip_percentage
    fill_in "Total bill", with: @tip_calculation.total_bill
    click_on "Update Tip calculation"

    assert_text "Tip calculation was successfully updated"
    click_on "Back"
  end

  test "should destroy Tip calculation" do
    visit tip_calculation_url(@tip_calculation)
    click_on "Destroy this tip calculation", match: :first

    assert_text "Tip calculation was successfully destroyed"
  end
end
