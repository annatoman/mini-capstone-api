class Product < ApplicationRecord
  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  has_many :images
  # def images
  #   Image.where(productid: id)
  # end
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :product_categories
  has_many :categories, through: :product_categories
   
  # def is_discounted?
    #     if price <= 10
    #       return true
    #     else
    #       return false  
    #     end
    # end

    # def tax
    #     tax = price * 1.09
    #     return tax.round(2)
    # end

    # def total
    #     total = price + tax
    #     return total
    # end

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :price, presence: true
    validates :price, numericality: {greater_than: 0}
    validates :description, presence: true
  
end