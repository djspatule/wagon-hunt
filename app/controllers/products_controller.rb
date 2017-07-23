class ProductsController < ApplicationController
    PRODUCTS = Product.all
    def index
        if params[:filter] != nil
            @products = PRODUCTS.select { |product| product[:category] == params[:filter] }
        elsif params[:sort] != nil
            sort_key = params[:sort]
            @products = PRODUCTS.sort_by! { |product| product[sort_key]} #non fonctionnel...... :( A réparer à l'occas.
        else
            @products = PRODUCTS
        end
    end
    
    def show
       @product = Product.find(params[:id].to_i)
    end
end
