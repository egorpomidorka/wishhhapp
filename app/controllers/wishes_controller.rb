class WishesController < ApplicationController

  def index
    @wishes = Wish.all.order("created_at DESC")
  end

  def new
   @wish = Wish.new
  end

  def create
   @wish = Wish.new(wishes_params)
   if @wish.save
     redirect_to root_path
   else
     render 'new'
   end
  end

  private

   def wishes_params
     params.require(:wish).permit(:description)
   end
end
