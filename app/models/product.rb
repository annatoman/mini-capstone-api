class Product < ApplicationRecord
    def is_discounted?
        if price <= 10
          return true
        else
          return false  
        end
    end

    def tax
        tax = price * 1.09
        return tax.round(2)
    end

    def total
        total = price + tax
        return total
    end

    validates :name, presence: true, uniqueness: true, length: { maximum: 12 }
    validates :price, presence: true, numericality: true, numericality: { greater_than: 0}
    validates :description, length: { minimum: 10}
  
end