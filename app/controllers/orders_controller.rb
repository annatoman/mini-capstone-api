class OrdersController < ApplicationController
    def create
        @order = Order.create(
            user_id: params[:user_id],
            product_id: params[:product_id],
            quantity: params[:quantity],
            subtotal: Product.find_by(id: :price),
            tax: params[:tax],
            total: params[:total]
        )
        render :show
    end

    def show
        @order = Order.find_by(id: params[:id])
        render :show
    end

    def index
        @orders = Order.all
        render :index
    end

end
