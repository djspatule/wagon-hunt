class ProductsController < ApplicationController
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
        
    end
    
    def new
        
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    def destroy
        
    end
    
end
