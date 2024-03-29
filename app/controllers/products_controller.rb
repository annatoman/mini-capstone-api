class ProductsController < ApplicationController
    before_action :authenticate_admin, except: [:index, :show]

    def index
        @products = Product.all

        if params[:category]
            category = Category.find_by(name: params[:category])
            @products = category.products
        end

        render :index
    end

    def create
        @product = Product.new(
            supplier_id: params[:supplier_id],
            name: params[:name],
            price: params[:price],
            description: params[:description],
            quantity_in_stock: params[:quantity_in_stock]
        )
        @product.save
        if @product.save
            Image.create(product_id: @product.id, url: params[:url])
            render :show
        else
            render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def show
        @product = Product.find_by(id: params[:id])
        render :show
    end

    def update
        @product = Product.find_by(id: params[:id])
        @product.update(
            name: params[:name] || @product.name,
            price: params[:price] || @product.price,
            description: params[:description] || @product.description,
            quantity_in_stock: params[:quantity_in_stock] || @product.quantity_in_stock
        )
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