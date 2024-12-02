class CreateTipCalculations < ActiveRecord::Migration[7.2]
  def change
    create_table :tip_calculations do |t|
      t.decimal :bill_amount
      t.decimal :tip_percentage
      t.decimal :tip_amount
      t.decimal :total_bill
      t.integer :num_people
      t.decimal :per_person_amount
      t.datetime :timestamp

      t.timestamps
    end
  end
end
