class TipCalculation < ApplicationRecord
    validates :bill_amount, :tip_percentage, :num_people, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :tip_percentage, numericality: { in: 0..100 }
    validates :num_people, numericality: { greater_than: 0 }
end
