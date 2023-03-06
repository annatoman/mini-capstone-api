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
end
