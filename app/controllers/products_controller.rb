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
            name: "Ranunculus",
            price: 3,
            image_url: "test.jpg",
            description: "A beautiful and delicate flower that comes in a variety of colors"
        )
        render :show
    end

end
