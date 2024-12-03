class TipCalculation < ApplicationRecord
    validates :bill_amount, :tip_percentage, :num_people, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :tip_percentage, numericality: { in: 0..100 }
    validates :num_people, numericality: { greater_than: 0 }

    before_save :calculate_derived_attributes

    private

    def calculate_derived_attributes
        self.tip_amount = (bill_amount * tip_percentage) / 100
        self.total_bill = bill_amount + tip_amount
        self.per_person_amount = total_bill / num_people
        self.timestamp ||= Time.current
    end
end
