class PurchaseItemsController < ApplicationController
    def index 
        if count_items_in_cart == 0 
          flash[:alert] = "Wishlist is empty!"
          redirect_to artworks_path
        end
        @user = User.find(current_user.id)
        @purchase_items = PurchaseItem.where(pending: true, user_id: @user)
        @total_price = 0
        @purchase_items.each do |item|
          @total_price += item.artwork.price
        end
        
      end

      def new
        @purchase_item = PurchaseItem.new
      end
    
      def create
        
        unless current_user == nil
          @purchase_item = PurchaseItem.new(purchase_items_params)
          @artwork = @purchase_item.artwork
          current_user.purchase_items << @purchase_item
          
    
          if @purchase_item.save!
            flash[:success] = "Added item to wishlist!"
            redirect_to purchase_items_path
          else
            render :new
          end     
        end
    
      end

      def destroy
        @purchase_item = PurchaseItem.find(params[:id])
        @purchase_item.destroy
        redirect_to purchase_items_path
      end
    
      def count_items_in_cart
        @cart_count = 0
        unless current_user == nil
        @cart_count = PurchaseItem.where(user: current_user.id, pending: true).count
        end
        return @cart_count
      end
    
      private
      def purchase_items_params
        params.permit(:artwork_id, :pending)
    
      end

end
