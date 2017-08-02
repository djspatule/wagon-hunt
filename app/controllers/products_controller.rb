class ProductsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
    def index
        if params[:filter] != nil
            @products = Product.select { |product| product[:category] == params[:filter] }
        elsif params[:sort] != nil
            sort_key = params[:sort]
            @products = Product.order(sort_key)
        else
            @products = Product.all
        end
    end

    def show
       @product = Product.find(params[:id].to_i)
    end

    def create
        @product = Product.new(products_params)
        @product.user = current_user
        if @product.save
           redirect_to products_path
        else
            render :new
        end
    end

    def new
        @product = Product.new
    end

    def edit
        @product = Product.find(params[:id].to_i)
        if @product.user != current_user
        redirect_to products_path
        end
    end

    def update
        @product = Product.find(params[:id].to_i)
        if @product.update(products_params)
           redirect_to products_path
        else
            render :edit
        end
    end

    def destroy
        @product = Product.find(params[:id].to_i)
        if @product.user == current_user
            if @product.destroy
               redirect_to products_path
            else
                render :show
            end
        else
            redirect_to products_path
        end
    end

    def products_params
       params.require(:product).permit(:name, :category, :url, :illustration, :avatar)
    end

end
