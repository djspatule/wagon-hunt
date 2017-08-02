class UpvotesController < ApplicationController

  def create
    product = Product.find(params[:product_id].to_i)
    upvotes = product.upvotes

    #check against multiple upvotes per user. Could have been done from the view refering to a User class method called "voted_for?(product)":
    # product.upvotes.where(user: self).any?

    is_voted = false
    upvotes.each do |upvote|
      if upvote.user == current_user
        is_voted = true
        upvote.destroy
        redirect_to products_path
      end
    end
    if is_voted == false
      product.upvotes.create!(user: current_user)
      redirect_to products_path
    end
  end

  def update
    xxxxxxxxx
  end

  def destroy

  end

end
