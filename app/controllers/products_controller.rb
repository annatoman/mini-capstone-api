class ProductsController < ApplicationController
    def index
        @products = Product.all
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        render :show
    end

    def create
        @product = Product.create(
            supplier_id: params[:supplier_id],
            name: params[:name],
            price: params[:price],
            description: params[:description],
            quantity_in_stock: params[:quantity_in_stock]
        )
        if @product.valid?
            Image.create(product_id: @product_id, url: params[:image_url])
            render :show
        else
            render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def update
        @product = Product.find_by(id: params[:id])
        @product.update(
        name: params[:name] || @product.name,
        price: params[:price] || @product.price,
        description: params[:description] || @product.description,
        quantity_in_stock: params[:quantity_in_stock] || @product.quantity_in_stock
        )
        render :show
        if @product.valid?
            render :show
        else
            render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy
        @product = Product.find_by(id: params[:id])
        @product.destroy
        render json: {message: "This product has been deleted!"}
    end
end