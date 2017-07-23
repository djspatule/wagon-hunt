class ProductsController < ApplicationController
    PRODUCTS = [
        {name: "Trello", category: "work"}, 
        {name: "Garage Band", category: "music"}, 
        {name: "Odoo", category: "work"}, 
        {name: "Slack", category: "communication"}, 
        ]
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
       @product = PRODUCTS[params[:id].to_i]
    end
end
